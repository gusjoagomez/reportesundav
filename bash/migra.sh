#!/bin/bash

curdir=$(pwd)
tmpdir=$curdir/tmpsql


# ------- DUMP -------------------------
dump_shchema(){
    local db_server=$1
    local db_port=$2
    local db_user=$3
    local db_name=$4
    local schema_name=$5
    local dump_file=$6
    pg_dump -h "$db_server" -p "$db_port" -U "$db_user" -d "$db_name" -n "$schema_name" --disable-triggers   > "$dump_file"
}

dump_tabla(){
    local db_server=$1
    local db_port=$2
    local db_user=$3
    local db_name=$4
    local schema_name=$5 
    local table_name=$6
    local dump_file=$7
    pg_dump -h "$db_server" -p "$db_port" -U "$db_user" -t "$schema_name"."$table_name" --disable-triggers "$db_name" > "$dump_file"
}

#--------- IMPORT --------------------
importar_schema(){
    local to_server=$1
    local to_port=$2
    local to_user=$3
    local to_name=$4
    local to_schemaname=$5
    local dump_file=$6
    
    sed -i "s/ $schema_name\./ $to_schemaname\./g" $dump_file
    sed -i "s/ $schema_name\;/ $to_schemaname\;/g" $dump_file
    sed -i "s/($schema_name\./($to_schemaname\./g" $dump_file
    sed -i "s/'$schema_name\./'$to_schemaname\./g" $dump_file
    sed -i "s/SCHEMA $schema_name/SCHEMA $to_schemaname/g" $dump_file
    psql -h "$to_server" -U "$to_user" -d "$to_name" -c "DROP SCHEMA IF EXISTS $to_schemaname CASCADE;"
    psql -h "$to_server" -U "$to_user" -d "$to_name" -c "CREATE SCHEMA $to_schemaname;"
    psql -h "$to_server" -p "$to_port" -U "$to_user" "$to_name" < "$dump_file"
}

importar_tabla(){
    local to_server=$1
    local to_port=$2
    local to_user=$3
    local to_name=$4
    local to_schemaname=$5
    local to_tablename=$6
    local $schema_name=$7
    local $table_name=$8
    local dump_file=$9
    sed -i "s/$schema_name\.$table_name/$to_schemaname\.$to_tablename/g" $dump_file
    psql -h "$to_server" -p "$to_port" -U "$to_user" -d "$to_name" -c "DROP TABLE IF EXISTS $to_schemaname.$to_tablename;"
    psql -h "$to_server" -p "$to_port" -U "$to_user" "$to_name" < "$dump_file"
}

pos_dump(){
    local file_name_pos=$1
    local dump_file=$2

    # Revisa si existe archivo pos migracion
    if [ -e "$file_name_pos" ]; then

        # Recorre cada linea del archivo
        while IFS= read -r comando; do
            if [[ -n $comando ]]; then
                comando="${comando//ARCHIVODUMP/$dump_file}"

                ##--- Ejecuta script pos migracion
                eval "$comando"
            fi
        done < "$file_name_pos"
    fi    
}

#################################################################################################################
##### COMIENZO DEL PROCESO ####
#################################################################################################################
# Verificar que se proporcionó un nombre de archivo como parámetro
if [ $# -eq 0 ]; then
    echo "Por favor, proporciona el nombre del archivo como parámetro."
    exit 1
fi

# Borra todos los SQL que pudieran estar en tmpdir
rm $tmpdir/*.sql

# Nombre del archivo proporcionado como parámetro
file_name="$curdir/$1"
file_name_pos="${file_name%mig}pos"

# Verificar la existencia del archivo
if [ ! -f "$file_name" ]; then
    echo "El archivo $file_name no existe."
    exit 1
fi

# Leer la primera línea del archivo
read -r db_connection rest_of_line < "$file_name"

cd $tmpdir

# Extraer los detalles de conexión
IFS=: read -r db_user db_password db_server db_port <<< "$db_connection"

# Extraer los detalles de destino
IFS=: read -r to_user to_password to_server to_port <<< "$rest_of_line"

# Iterar sobre las líneas restantes del archivo
while read -r line; do
    # Extraer los detalles de la tabla
    IFS=' ' read -r table_name dump_name <<< "$line"
    IFS='.' read -r db_name schema_name table_name <<< "$table_name"
    IFS='.' read -r to_name to_schemaname to_tablename <<< "$dump_name"

    # Realizar pg_dump
    export PGUSER=$db_user
    export PGPASSWORD=$db_password

    # Determina si hace dump de todo el schema o tabla especifica
    if [[ $to_tablename == "*" ]]; then
        # Todo el schema - Archivo dump
        dump_file="$db_name.$schema_name.sql"
        dump_shchema $db_server $db_port $db_user $db_name $schema_name $dump_file
    else
        # Tabla puntual - Archivo dump
        dump_file="$db_name.$schema_name.$table_name.sql"
        dump_tabla $db_server $db_port $db_user $db_name $schema_name $table_name $dump_file
    fi

    ## ----------------------------------------------
    ## ------ Ejecuta: POS migracion
    pos_dump $file_name_pos "$tmpdir/$dump_file"
    ## ----------------------------------------------    


    PGUSER=""
    PGPASSWORD=""
    export PGUSER PGPASSWORD
    unset PGUSER
    unset PGPASSWORD

    # Verificar el resultado y mostrar un mensaje
    if [ $? -eq 0 ]; then

        export PGUSER=$to_user
        export PGPASSWORD=$to_password

        if [[ $to_tablename == "*" ]]; then
           importar_schema $to_server $to_port $to_user $to_name $to_schemaname $dump_file 
        else
           importar_tabla $to_server $to_port $to_user $to_name $to_schemaname $to_tablename $schema_name $table_name $dump_file 
        fi
        export PGUSER PGPASSWORD
        unset PGUSER
        unset PGPASSWORD

    else
        echo "Error al realizar el dump de $table_name"
    fi

done < <(tail -n +2 "$file_name")

