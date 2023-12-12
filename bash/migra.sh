#!/bin/bash

curdir=$(pwd)
tmpdir=$curdir/tmpsql

# Verificar que se proporcionó un nombre de archivo como parámetro
if [ $# -eq 0 ]; then
    echo "Por favor, proporciona el nombre del archivo como parámetro."
    exit 1
fi

# Borra todos los SQL que pudieran estar en tmpdir
rm $tmpdir/.sql

# Nombre del archivo proporcionado como parámetro
file_name="$curdir/$1"

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

    # Construir el nombre del archivo dump
    dump_file="$db_name.$schema_name.$table_name.sql"

    # Realizar pg_dump
    export PGUSER=$db_user
    export PGPASSWORD=$db_password

    pg_dump -h "$db_server" -p "$db_port" -U "$db_user" -t "$schema_name"."$table_name" --disable-triggers "$db_name" > "$dump_file"

    PGUSER=""
    PGPASSWORD=""
    export PGUSER PGPASSWORD
    unset PGUSER
    unset PGPASSWORD

    # Verificar el resultado y mostrar un mensaje
    if [ $? -eq 0 ]; then
        sed -i "s/$schema_name.$table_name/$to_schemaname.$to_tablename/g" $dump_file

        export PGUSER=$to_user
        export PGPASSWORD=$to_password

        psql -h "$to_server" -U "$to_user" -d "$to_name" -c "DROP TABLE IF EXISTS $to_schemaname.$to_tablename;"
        psql -h "$to_server" -p "$to_port" -U "$to_user" "$to_name" < "$dump_file"
        export PGUSER PGPASSWORD
        unset PGUSER
        unset PGPASSWORD

    else
        echo "Error al realizar el dump de $table_name"
    fi
done < <(tail -n +2 "$file_name")

