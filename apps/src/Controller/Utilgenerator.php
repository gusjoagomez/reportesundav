<?php
namespace App\Controller;

use Doctrine\DBAL\Schema\Table;
use Symfony\Component\Yaml\Parser;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\CatBases;
use Doctrine\DBAL\DriverManager;
use Doctrine\DBAL\Connection;


/**
 * Funciones Varias
 *
 * @author admindesa
 */
class Utilgenerator {

    static function getCustomConn(CatBases $base){
        $connectionParams = [
            'host' => $base->getHostdb(),
            'port' => $base->getPortdb(),
            'dbname' => $base->getBasedb(),
            'user' => $base->getUserdb(),
            'password' => $base->getPassdb(),
            'driver' => 'pdo_pgsql',
        ];
        return DriverManager::getConnection($connectionParams);
    }

    static function downloadCSV($filename)
    {
        $response = new Response();
        $response->headers->set('Content-Encoding', 'UTF-8');
        $response->headers->set('Content-Type', 'application/octet-stream; charset=UTF-8');
        $response->headers->set('Cache-Control', 'private');
        $response->headers->set('Content-type', mime_content_type($filename));
        $response->headers->set('Content-Disposition', 'attachment; filename="' . basename($filename) . '";');
        $response->headers->set('Content-length', filesize($filename));
        $response->sendHeaders();
        $response->setContent(file_get_contents($filename));
        return $response;
    }


    static function getFieldList($app,$table,$prefix='',$format='FasP_F')
    {
        $retorno = '';
        $fields = Utilgenerator::getFields($app,$table);
        foreach ($fields as $k=>$v)
        {
            // field as Prefix_field
            if($format=='FasP_F')   $elementList = $v['name'].' as '.$prefix.'_'.$v['name'];
            if($format=='T.FasP_F')   $elementList = $table.'.'.$v['name'].' as '.$prefix.'_'.$v['name'];
            if($format=='FasT_F')   $elementList = $v['name'].' as '.$table.'_'.$v['name'];
            if($format=='T.FasT_F') $elementList = $table.'.'.$v['name'].' as '.$table.'_'.$v['name'];
            if($format=='T.FasF')   $elementList = $table.'.'.$v['name'].' as '.$v['name'];
            if($format=='F')        $elementList = $v['name'];
            
            $retorno .= ($retorno=='')?$elementList:', '.$elementList;
        }
        return $retorno;
    }
            
    
//    static function getFields($app,$table) 
//    {
//        $excluded=array();
//        $ret = array();
//
//        $orderlist=0;
//        
//        //SELECT ordinal_position, column_name, is_nullable, data_type, character_maximum_length, udt_name FROM information_schema.columns WHERE table_name ='sec_company'
//        
//        if($app['like']=='LIKE')
//        {
//            $curelement = $app['db']->fetchAll("SHOW COLUMNS FROM $table");
//            foreach ($curelement as $ele)
//            {
//                if(!in_array($ele['Field'],$excluded))
//                {
//                    $pos=strpos($ele['Type'], '(');
//                    if($pos===false){
//                        $type = $ele['Type'];
//                    }else {
//                        $type = substr($ele['Type'], 0, $pos);
//                    }
//                    //--- separa el largo del campo ----
//                    preg_match_all('/\((.*?)\)/', $ele['Type'], $matches);
//                    $length = (isset($matches[1][0]))?$matches[1][0]:'';
//
//                    $null = ($ele['Null']=='YES')?'1':'0';  ///1=null, 0=not null
//                    $column = ucfirst(str_replace('_', ' ', $ele['Field']));  //--- column name
//                    $ret[$ele['Field']] = array('column'=>$column,'name'=>$ele['Field'],'type'=>$type, 'length'=>$length, 'null'=>$null, 'pri'=>$ele['Key'], 'orderlist'=>$orderlist);
//                    $orderlist++;
//                }
//            }    
//        }else{
//            $pks = Util::getPKTable($app, $table);
//            $curelement = $app['db']->fetchAll("SELECT ordinal_position as orden, column_name as field, is_nullable as null, data_type, character_maximum_length, udt_name as type FROM information_schema.columns WHERE table_name ='{$table}'");
//
//            ///Util::ver($curelement,true);
//            foreach ($curelement as $ele)
//            {
//                $null = ($ele['null']=='YES')?'1':'0';  ///1=null, 0=not null
//                $column = ucfirst(str_replace('_', ' ', $ele['field']));  //--- column name
//                $pk = (isset($pks[ $ele['field'] ]))?'1':'0';
//                $type = ($ele['type']=='smallint')?'tinyint':$ele['type'];
//                $type = ($type=='int2')?'tinyint':$type;
//                $type = ($type=='int4')?'integer':$type;
//                $length = $ele['character_maximum_length'];
//                $ret[ $ele['field'] ] = array('column'=>$column,'name'=>$ele['field'],'type'=>$type, 'length'=>$length, 'null'=>$null, 'pri'=>$pk, 'orderlist'=>$orderlist);
//                $orderlist++;
//            }                
//        }        
//        return $ret;
//    }
    
    
    static function idLink($wordenc, $id){
        return md5($id.$wordenc).'|'.$id; 
    }
    
    

    static function ApiCustomMessage($idMessage)
    {
        return array(
            '999'=>array('code'=>'999','Method not allowed'),
        );
    }

    static function firstLine($file)
    {
        $f = fopen($file, 'r');
        $line = fgets($f);
        fclose($f);
        
        return $line;
    }

    static function firstLineField($file,$separator,$idx='index')
    {
        $linea = Util::firstLine($file);
        if(trim($linea)!='')
        {
            $datos = array();
            $datostmp = explode($separator, $linea);
            $count = 0;
            foreach ($datostmp as $dato)
            {
                $i = ($idx=='index')?$count:trim($dato);
                if(trim($dato)!='')
                    $datos[trim($dato)]=$i;

                $count++;
            }
        }else{
            return false;
        }
        return $datos;
    }
    
    
    static function getFormatTimeList()
    {
        return array(
            'd-m-Y H:i'=>'d-m-Y H:i',
            'd-m-Y H:i:s'=>'d-m-Y H:i:s',
            'Y-m-d H:i'=>'Y-m-d H:i',
            'Y-m-d H:i:s'=>'Y-m-d H:i:s',
            'D, d M Y H:i'=>'D, d M Y H:i',
            'D, d M Y H:i:s'=>'D, d M Y H:i:s',
        );
    }

                    
    static function valorEnPost( $parametro, $default='', $listaValores=NULL)
    {
        if ($listaValores!=NULL) //si pasa el posible valor de un array valido
        {	//---si existe el valor en la lista
            if (in_array($_POST[$parametro],$listaValores))
            {
                    $res =$_POST[$parametro]; //retorna el valor
            }else{
                    if (in_array($default,$listaValores)) //si exsite el default en la lista
                            $res=$default;
                    else  //retorna el primer elemento de la lista
                            $res = $listaValores[0];
            }
        }else
            $res=(isset($_POST[$parametro]))?$_POST[$parametro]:$default;

        return($res);
    }


    static function parametro( $parametro, $default=null)
    {
      $res=$default;
      if (isset($_GET[$parametro])) 
          $res=$_GET[$parametro];
      elseif (isset($_POST[$parametro])) 
          $res=$_POST[$parametro];
      return($res);
    }

    static function variableSesion( $parametro, $default=null)
    {
      $res=$default;
      if (isset($_SESSION[$parametro])) $res=$_SESSION[$parametro];
      return($res);
    }

    static function guardarDato($id,$dato)
    {
       $val="";
       $clave=$id.$dato;
       if (isset($_POST[$dato]))
       {
          //setcookie($clave,$_POST[$dato],100000+time());
              //$_SESSION[$clave]=$_POST[$dato];
          $_SESSION[$clave]=str_replace('\\','',$_POST[$dato]);
          $val=$_SESSION[$clave];
       }else{
         if (isset($_SESSION[$clave]))
           $val=$_SESSION[$clave];
       }
      return $val;
    }
 
    static function load($file)
    {
        if(file_exists($file))
           return file_get_contents($file);
        else
           return false;         
    }

    //--- FILE_APPEND | LOCK_EX
    public function save($file,$data, $flags=null)
    {
        if ($flags!=null)
          file_put_contents($file, $data, $flags);
        else
          file_put_contents($file, $data);
    }
    

    static function deletefile($file)
    {
      $ok=true;
      if (is_file($file))
      {
        if (!unlink($file))
             $ok=false;
      }
      return($ok);
    }
    
    
    static function open_external_url($url, $method = "curl", $proxy="")
    {
	   $data = '';
	   if(strtolower($method) == "curl")
	   {
                $ch = curl_init();
                if ($proxy!=""){
                        //curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, 1);
                    curl_setopt($ch, CURLOPT_PROXY,$proxy);
                }
                curl_setopt($ch, CURLOPT_URL,$url);
                curl_setopt($ch, CURLOPT_CONNECTTIMEOUT,5);
                curl_setopt($ch, CURLOPT_TIMEOUT,10);
                //curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
                //curl_setopt($ch, CURLOPT_POST, 1);
                //curl_setopt($ch, CURLOPT_COOKIE, $cookie);
                //curl_setopt($ch, CURLOPT_HEADER, 1);
                //curl_setopt($ch, CURLOPT_POSTFIELDS, $postvar);

	      ob_start();
	      curl_exec($ch);
	      //curl_close($ch);
	      $data = ob_get_contents();
	      ob_end_clean();
	   }
	   else if(strtolower($method) == "fopen")
	   {
               $data = file_get_contents($url);
	       /*$file = fopen($url, "r");
	       while(!feof($file)) { $data = $data . fgets($file, 4096); }
	       fclose ($file);*/
	   }
	   return $data;
    }

    
    function buscar_en_Array($valor, $unarray)
    {
         $donde=-1;
         $i=0;
         while ( ($i<count($unarray)) && ($donde==-1) )
         {
              if ($unarray[$i]==$valor)
                $donde=$i;
              $i++;
         }
             //Retorna -1 si no encontro o el indice si encontro
             return ($donde);
    }

    
    static function sqlNoInjection($sql, $params)
    {
        $ret='';
        foreach ($params as $k=>$v)
        {        
            $ret = str_replace(':'.$k, mysql_real_escape_string($v), $sql);
        }
        return $ret;
    }

    
    static function limpieza1($valor)
    {
        $valor = str_replace('\\"',"",$valor);
        $valor = str_replace('"',"",$valor);
        $valor = str_replace("'","",$valor);
        $valor = str_replace(" UNION ","",$valor);
        $valor = str_replace(" SELECT ","",$valor);
        $valor = str_replace("%2527","",$valor);
        $valor = str_replace("%2725","",$valor);
        $valor = str_replace("%20","",$valor);
        $valor = str_replace(" ","",$valor);
        return $valor;
    }

    static function validarEntero($numero, $mensaje='' )
    {
        if (ereg('^[-!#$%&\'*+\\./0-9]+',$numero))
           return true;
        if ($mensaje!='')
          echo $mensaje.' NO es un Nro. Entero Invalido.<br>';

        return false;
    }
    
    //----------------------------------------------------------------
    //----- Busca un item de array que comience con una palabra  -----
    //----------------------------------------------------------------
    function localizarEn( $campo,$aReglaCampos)
    {
      $i=0;
      $encontrado=false;
      while ((!$encontrado) && ($i<count($aReglaCampos)))
      {
        if ($campo==substr($aReglaCampos[$i],0,strlen($campo)))
              $encontrado=true;
        $i++;
      }
      $i--;
     return ($encontrado)?($i):-1;
    }
    
    
    #
    # Borra de forma recursiva un directorio
    #
    static function rrmdir($dir) {
        foreach(glob($dir . '/*') as $file) {
            if(is_dir($file))
                rrmdir($file);
            else
                unlink($file);
        }
        rmdir($dir);
    }
    
    static function searchdir( $path='.', $mask='*', $nocache=0 )
    {
       static $dir = array();
       $sdir = array();

       if ( !isset($dir[$path]) || $nocache) 
       {
         $dir[$path] = scandir($path);
       }

       foreach ($dir[$path] as $i=>$entry) 
       {
          if ($entry!='.' && $entry!='..' && fnmatch($mask, $entry) ) {
             $sdir[] = $entry;
          }
       }

       if ($nocache)
         unset($dir);
       return $sdir;
    }   


    static function extractkeys($post,$keys='')
    {
        $ret = array();

        if($keys!='')
        {
           $claves = array_flip(explode(',', $keys));
        }

        foreach ($post as $k=>$v)
        {
            if($keys==''){
                $ret[$k]=$v;
            }else{
                if( isset($claves[$k]))
                  $ret[$k]=$v;
            }
        }
        return $ret;
    }

    static function getTipos()
    {
        $ret= array(
            'S'=>'Texto',
            'N'=>'Numero',
            'D'=>'Decimal',
            'B'=>'Booleano (Si-No)',
            'F'=>'Fecha',
            'T'=>'Hora',
            'X'=>'Fecha-Hora',
        );
        
//        foreach ($lista as $k=>$v){
//            $ret[$k]=$v;
//        }
        return $ret;
    }

    /*
    static function getOperaciones($type){
        
       $ret=array(''=>'Sin operacioness');
       switch ($type) {
            case 'S': //String
                    $ret=array(
                        '=='=>'=',
                        '<>'=>'<>',
                        'LIKE'=>'LIKE',
                        'RegExp'=>'RegExp',
                        );
            break;
            case 'N': //Number
                    $ret=array(
                        '=='=>'=',
                        '<>'=>'<>',
                        '>'=>'>',
                        '>='=>'>=',
                        '<'=>'<',
                        '<='=>'<=',
                        ); 
            break;
            case 'B': //Boolean
                    $ret=array('1'=>'true','0'=>'false');
            break;
            case 'D': //Date
                    $ret=array(
                        'BETWEEN'=>'BETWEEN',
                        '>='=>'>=',
                        '<='=>'<=',
                        '=='=>'=',
                        );
            break;
            case 'T': //Time
                    $ret=array(
                        '='=>'=',
                        '<>'=>'<>',
                        'LIKE'=>'LIKE',
                        'REG'=>'RegExp',
                        );
            break;
       }
       
       return $ret;
    }
    */
    
    static function getRelationtypes()
    {
        return array(
            '1:1'=>'una a una',
            '1:N'=>'una a muchas',
            'N:M'=>'muchas a muchas',
        );
        /*'0:1'=>'una a una opcional',*/
        /*'0:N'=>'una a muchas opcional',*/
        /*'0:M'=>'muchas a muchas opcional',*/
    }
    
    static function getTriggerTypes()
    {
        return array(
            'C'=>'Cascade',
            'S'=>'Set null',
            'N'=>'No action',
            'R'=>'Restrict',
        );
    }

    //------------------------
    //---- Get Empty Object 
    static function getAsKeyValue($array,$key,$value)
    {
        $ret=array();
        foreach ($array as $k=>$v)
        {
            if(isset($v[$key]))
              $ret[$v[$key]]=$v[$value];
        }
        return $ret;
    }

    static function getFields($conn,$tablename)
    {
        $dat = explode('.',$tablename);
        $schema=$dat[0];
        $table=$dat[1];
        $excluded=array();
        $ret = array();

        $orderlist=0;

        $pk = Utilgenerator::getPKTable($conn,  $schema, $table, 'PRIMARY'); //retrieve PK

        //$sql = "SELECT ORDINAL_POSITION orden, COLUMN_NAME field, IS_NULLABLE 'null', DATA_TYPE data_type,CHARACTER_MAXIMUM_LENGTH character_maximum_length,NUMERIC_PRECISION numeric_precision,COLUMN_TYPE type,NUMERIC_PRECISION numeric_scale,EXTRA column_default FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = '{$schema}' AND TABLE_NAME = '{$table}'";
		$sql = "SELECT c.ordinal_position as orden, c.column_name as field, c.is_nullable as null, c.data_type, c.character_maximum_length, c.numeric_precision, c.udt_name as type, c.numeric_scale, c.column_default FROM information_schema.columns c WHERE c.table_schema='{$schema}' AND c.table_name ='{$table}'";
        $stmt = $conn->prepare($sql);
        $resultSet = $stmt->executeQuery();
        while (($ele = $resultSet->fetchAssociative()) !== false) 
        {        
            if(!in_array($ele['field'],$excluded))
            {
                $type = $ele['data_type'];
                if($ele['character_maximum_length']!=''){
                    $length = $ele['character_maximum_length'];
                }else{
                    $length = $ele['numeric_precision'];
                }
                $null = ($ele['null']=='YES')?'1':'0';  ///1=null, 0=not null
                $column = ucfirst(str_replace('_', ' ', $ele['field']));  //--- column name

                $espk = (isset($pk[$ele['field']]))?1:'';
                $orderlist++;
                $ret[$ele['field']] = array('column'=>$column,'name'=>$ele['field'],'type'=>$type, 'length'=>$length, 'null'=>$null, 'pri'=>$espk, 'orderlist'=>$orderlist);
            }
        }
    
        return $ret;
    }

    static function getPKTable($conn,  $schema, $table, $constraintType='PRIMARY') //FOREIGN
    {
        $ret = array();
        /*
        $sql = "SELECT c.column_name, c.data_type FROM information_schema.table_constraints tc 
                JOIN information_schema.constraint_column_usage AS ccu USING (constraint_schema, constraint_name) 
                JOIN information_schema.columns AS c ON c.table_schema = tc.constraint_schema AND tc.table_name = c.table_name AND ccu.column_name = c.column_name 
        WHERE constraint_type = 'PRIMARY KEY' and tc.table_name = '{$table}'";
        */
        $sql = "SELECT c.column_name FROM information_schema.table_constraints tc JOIN information_schema.constraint_column_usage AS ccu USING (constraint_schema, constraint_name) 
                JOIN information_schema.columns AS c ON c.table_schema = tc.constraint_schema AND tc.table_name = c.table_name AND ccu.column_name = c.column_name
                WHERE constraint_type ILIKE '%{$constraintType}%' AND tc.table_schema='{$schema}' AND tc.table_name ='{$table}'"; 
        $resultSet = $conn->executeQuery($sql, []);
        while (($row = $resultSet->fetchAssociative()) !== false) 
        {
            $ret[$row['column_name']]=$row['column_name'];
        }

        return $ret;
    }


    static function getInfoFK($conn, $schema, $table)
    {
        $relations = array();

        $sql = "SELECT kcu.column_name,  ccu.table_name AS foreign_table_name, ccu.column_name AS foreign_column_name 
        FROM  information_schema.table_constraints AS tc JOIN information_schema.key_column_usage AS kcu
                ON tc.constraint_name = kcu.constraint_name
                JOIN information_schema.constraint_column_usage AS ccu ON ccu.constraint_name = tc.constraint_name
            WHERE constraint_type = 'FOREIGN KEY' AND tc.table_schema='{$schema}' AND tc.table_name='$table'";
        $resultSet = $conn->executeQuery($sql, []);
        while (($row = $resultSet->fetchAssociative()) !== false) 
        {
            $local   = $row['column_name']; //campo local
            $tablafk = $row['foreign_table_name']; //tabla relacionada
            $campogk = $row['foreign_column_name']; //fk

            $relations['oneToMany'][] = array('l'=>$local,'t'=>$tablafk, 'c'=>$campogk );
            $relations['has'][$local] = array('t'=>$tablafk, 'c'=>$campogk );                
        }

        return $relations;
    }


    static function createTable($conn,$name) 
    {
        $schema = $conn->getSchemaManager();
        if (!$schema->tablesExist($name)) 
        {
            $tabla = new Table($name);
            $tabla->addColumn('id', 'integer', array('unsigned' => true, 'autoincrement' => true));
            $tabla->addColumn('parent_id', 'integer', array('notnull'=>false,'unsigned' => true));
            $tabla->addColumn('owner_id', 'integer', array('unsigned' => true));
            $tabla->addColumn('code', 'string', array('length' => 20));
            //$tabla->addColumn('name', 'string', array('length' => 100));

            for ($i = 1; $i <= 80; $i++) {
                $tabla->addColumn("p{$i}", 'string', array('length' => 100));
            }
            $tabla->addColumn('createdat', 'datetime', array());
            $tabla->addColumn('updatedat', 'datetime', array());
            $tabla->addColumn('createdby', 'integer', array('unsigned' => true));
            $tabla->addColumn('updatedby', 'integer', array('unsigned' => true));

            $tabla->setPrimaryKey(array('id'));
            $tabla->addIndex(array('parent_id'), $name.'pid');
            $tabla->addIndex(array('createdby'), $name.'cby');
            $tabla->addIndex(array('updatedby'), $name.'uby');
            $schema->createTable($tabla);

            $tableUser = $schema->listTableDetails('sec_user'); 
            $tabla->addForeignKeyConstraint( $tabla, array('parent_id'), array('id'), array(), "fk_{$name}_pid" );
            $tabla->addForeignKeyConstraint( $tableUser, array('createdby'), array('id'), array(), "fk_{$name}_cby" );
            $tabla->addForeignKeyConstraint( $tableUser, array('updatedby'), array('id'), array(), "fk_{$name}_uby" );
        }
    }
 
    
    static function table_exists($conn,$db,$table) 
    {
        $ret = false;
        try {
            //$curlist = $app['db']->fetchAll("SELECT 1 FROM  {$table}");
            $curlist = $conn->fetchAll("SELECT TABLE_NAME FROM information_schema.TABLES WHERE TABLE_NAME IN ('{$table}') AND TABLE_SCHEMA='{$db}'");
            return count($curlist);
        } catch (Exception $exc) {
            $ret = false;
        }
        return $ret;
    }


    static function getColumns($conn,$db,$table,$soloDatos=true,$excluir=array()) 
    {        
        $list = array();
        $curlist = array();
        
        if(trim($db)=='')
            die('--- NO hay una base asignada al proyecto. ---');
        
        if (!Util::table_exists($conn,$db,$table))
            return $list;
        
        if ($table!='')
            $curlist = $conn->fetchAll("SHOW COLUMNS FROM {$db}.{$table}");
        else
            die('--- NO tiene asignada una tabla. ---');

        foreach ($curlist as $field)
        {
            if(!isset($excluir[$field['Field']]))
                $list[$field['Field']]=$field['Field'];
        }
        if($soloDatos){
            unset($list['id'], $list['owner_id'], $list['code'],$list['createdat'],$list['updatedat'],$list['createdby'],$list['updatedby']);
        }
        return $list;
    }
    
    static function getColumnsAlloc($conn,$entityid,$excetpid=null) 
    {
        $curlist = array();
        $filprop = ($excetpid==null)?'':" and id <>$excetpid";
        $lista = $conn->fetchAll("SELECT field FROM sys_property WHERE entity_id={$entityid} $filprop");
        foreach ($lista as $k => $v) {
            $curlist[$v['field']] = $v['field'];
        }
        
        //echo "SELECT field FROM sys_property WHERE entity_id={$entityid} $filprop";

        return $curlist;
    }

    static function ver($array,$stop=false)
    {
        echo "<pre>";
        print_r($array);
        echo "</pre>";
        if($stop)
            die();
    }

    
    static function getTables($conn, $schema='') 
    {
        $tables = array();
        $criteria='';
        if($schema!=''){
            $criteria = " and schemaname='{$schema}' ";
        }
        $sql="SELECT schemaname||'.' || tablename as tablename FROM pg_catalog.pg_tables WHERE schemaname not in ('pg_catalog','information_schema') {$criteria} order by  schemaname, tablename";
        $stmt = $conn->prepare($sql);
        $resultSet = $stmt->executeQuery();
        while (($row = $resultSet->fetchAssociative()) !== false) 
        {
            $tables[$row['tablename']]=$row['tablename'];
        }
        return $tables;
    }
        
    static public function getMax($conn, $table, $field, $criteria='1=1' )
    {
        $id = $conn->fetchColumn("select max($field) as id FROM $table WHERE 1=1 AND $criteria");
        $id = (integer) $id;
        return $id;   
    }

        
    static public function getNumerador($conn, $table, $field, $criteria )
    {
        $id = $conn->fetchColumn("select max($field) as id FROM $table WHERE 1=1 AND $criteria");
        $id = (integer) $id;
        $nuevo = $id+1;
        $conn->executeUpdate("update $table set $field = $nuevo WHERE 1=1 AND $criteria");
        return $id;
    }
    
    static function selectHtml($array,$selected,$name,$id='',$nooption='',$onchangefn='',$sizep='', $multiplep='',$readonly='')
    {
        if($id=='') $id=$name;

        $onchange=($onchangefn!='')?' onchange="'.$onchangefn.'"':'';
        $size=($sizep!='')?' size="'.$sizep.'" ':'';
        $multiple=($multiplep=='')?'':' multiple="multiple" ';
        $readonly=($readonly=='')?'':' readonly="readonly" ';


        $content='<select id="'.$id.'" name="'.$name.'" class="form-control" '.$size.' '.$multiple.' '.$readonly.' '.$onchange.'>'."\n";
        if($nooption!=''){
            $data = explode('|', $nooption); 
            $content.='<option value="'.$data[0].'" '.(isset($data[1]))?$data[1]:''.' >'.$value.'</option>'."\n";
        }

//        if(!is_array($array))
//            die('Los elementos del SELECT deben ser un array: '.print_r($array,true));

        foreach ($array as $key => $value)
        {
           $sel = ($key==$selected)?'selected':'';
           $content.='<option value="'.$key.'" '.$sel.' >'.$value.'</option>'."\n";
        }
        $content.='</select>'."\n";
        return $content;
    }
    
    
    public function getPaggingParsed($recordcount,$page=1,$maxregs=20)
    {
        if($page<1) $page = 1;

        $max_pages = ceil($recordcount / $maxregs);
        if ($max_pages==0) $max_pages=1;
        if($page>$max_pages) $page=$max_pages;

        $limit['page'] = $page;
        $limit['d'] = ($page - 1) * $maxregs;
        $limit['h'] = $maxregs;
        return $limit;
    }
    
    function getPagingGrid($recordcount,$page,$maxregs,$max_pages)
    {
        $pager['current'] = $page;
        $max_pages = ceil($recordcount / $maxregs);
        $from = $page-3;
        $to = $page+3;
        if($from<1) $from=1;
        if($to>$max_pages) $to=$max_pages;

        $pager['from'] = $from;
        $pager['to'] = $to;
        $pager['lastpage'] = $max_pages;
        $pager['firstpage'] = 1;
//        $pager['paggingorder'] = $paggingorder;
//        $pager['paggingarray'] = $array_paging;
        $pager['default_paging'] = $maxregs;
        
        //echo "<pre>"; print_r($pager); echo "</pre>"; die();
        return $pager;
    }
    

    static function getFolderInFolder($path, $exclude=null)
    {
        $dirs = array();
        $directories = scandir($path);
        foreach($directories as $directory)
        {
            if($directory=='.' or $directory=='..' ){
                ////Is Dot
            }else{
                if(is_dir($path.$directory))
                {
                    if (!in_array($directory, $exclude)) {
                        $dirs[] = $directory;
                    }
                }
            }
        } 
        return $dirs;
    }
    
    static function getToken($bits=32)
    {
      return md5(openssl_random_pseudo_bytes($bits));
    }
    
    static function getCustomPass($strMd5,$inMd5=false,$salt='Vml2YUxhVmlkYQ=='){
        //-- Si no esta en md5, lo pone en Md5
        if(!$inMd5)
            $strMd5=md5($strMd5);
        return sha1($strMd5.$salt);
    }

    static function getClientIP() 
    {    
        if (isset($_SERVER)) 
        {
            if (isset($_SERVER["HTTP_X_FORWARDED_FOR"]))
                return $_SERVER["HTTP_X_FORWARDED_FOR"];

            if (isset($_SERVER["HTTP_CLIENT_IP"]))
                return $_SERVER["HTTP_CLIENT_IP"];

            return $_SERVER["REMOTE_ADDR"];
        }

        if (getenv('HTTP_X_FORWARDED_FOR'))
            return getenv('HTTP_X_FORWARDED_FOR');

        if (getenv('HTTP_CLIENT_IP'))
            return getenv('HTTP_CLIENT_IP');

        return getenv('REMOTE_ADDR');
    }

    static public function hashCompany($companyid){
        return $companyid.'_'.hash('joaat','pw'.$companyid);
    }
 
    static public function homeDirFiles()
    {
        return __DIR__.'/../../webdata/';
    }

    static public function homeDirCompany($companyid=false,$dohash=true)
    {
//        $ret = self::homeDirFiles();
        $ret = '';
        if($dohash)
            $companyid=self::hashCompany($companyid);

        if ($companyid)
            $ret = $ret.$companyid;

        return $ret;
    }
    

    static public function checkHomedir($home)
    {
        $homebase=self::homeDirFiles();

        $homereports = $homebase.'/'.$home.'/reports';
        $homereportsmeta = $homebase.'/'.$home.'/reportsmeta';
        $homeproducts = $homebase.'/'.$home.'/products';
        $homefiles = $homebase.'/'.$home.'/files';
        $homeprofile = $homebase.'/'.$home.'/profile';
        $hometmp = $homebase.'/'.$home.'/tmp';

        if (!file_exists($homereportsmeta)) mkdir($homereportsmeta, 0777, true);
        if (!file_exists($homereports)) mkdir($homereports, 0777, true);
        if (!file_exists($homeproducts)) mkdir($homeproducts, 0777, true);
        if (!file_exists($homebase)) mkdir($homebase, 0777, true);
        if (!file_exists($homefiles)) mkdir($homefiles, 0777, true);
        if (!file_exists($homeprofile)) mkdir($homeprofile, 0777, true);
        if (!file_exists($hometmp)) mkdir($hometmp, 0777, true);
        
        return array('reports'=>$homereports,
                    'reportsmeta'=>$homereportsmeta,
                    'products'=>$homeproducts,
                    'files'=>$homefiles,
                    'profile'=>$homeprofile,
                    'tmp'=>$hometmp,
               );
    }
    
    
    static public function getLanguage($app,$lang,$default='es')
    {
        if(trim($lang)=='')
            $lang = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);
        
        $lang = (isset($_POST['form']['lang']))?$_POST['form']['lang']:$lang;

        $languages = $app['db']->fetchAll('SELECT * FROM sys_language WHERE active=1');

        $langvalido=false;
        foreach ($languages as $language){
            if ($language['locale']==$lang)
                $langvalido=true;
        }
        $lang=(!$langvalido)?$default:$lang;

        $cur = 'name1';
        foreach ($languages as $language){
            if($language['locale']==$lang)
              $cur = 'name'.$language['id'];
        }
        return array('lang'=>$lang,'languages'=>$languages,'current'=>$cur);
    }
    
    
    public static function createImagePw($h,$w,$file,$text)
    {
        $im = imagecreatetruecolor($w,$h); //Crea imagen en blanco y graba texto
        $textcolor = imagecolorallocate($im, 255, 255, 255);
        
        $colorfondo = imagecolorallocate($im, 197, 197, 197);
        imagefilledrectangle($im, 0, 0, $w, $h, $colorfondo);
        
        $font = 3;
        $font_width = imagefontwidth($font);
        $font_height = imagefontheight($font);

        $text_width = $font_width * strlen($text);
        $position_center = ceil(($w - $text_width) / 2);

        $text_height = $font_height;
        $position_middle = ceil(($h - $text_height) / 2);
        
        imagestring($im, $font, $position_center, $position_middle, $text, $textcolor);

        imagejpeg($im, $file); //graba imagen
        imagedestroy($im);     //Libera memoria
    }

    
    public static function resizeImage($imagenOriginal, $archivodestino, $ancho, $alto=0, $calidadcompresion=100)
    {  
        $info=explode('.',$imagenOriginal);
        $formato = trim( $info[count($info)-1] );

        if($formato == 'jpg' || $formato == 'jpeg'){
                $pic = imagecreatefromjpeg($imagenOriginal);
        }else if($formato == 'gif'){
                $pic = imagecreatefromgif($imagenOriginal);
        }else if($formato == 'png'){
                $pic = imagecreatefrompng($imagenOriginal);
        }else{
            return ;
        }

        $width = imagesx($pic);
        $height = imagesy($pic);
        $fw = $ancho;

        $fh = ($alto==0) ? $fw * $height / $width : $alto;
        $imagenorigen=$pic;
        $imagendestino=imagecreatetruecolor($fw, $fh);

        $re=imagecopyresampled($imagendestino, $imagenorigen, 0, 0, 0, 0, $fw, $fh, $width, $height);
        imagejpeg($imagendestino, $archivodestino, $calidadcompresion);
        imagedestroy($imagendestino);       
    }    

    
    ///---- HTML - JSON ----
    public static function html_to_obj($html) {
        $dom = new \DOMDocument();
        $dom->loadHTML($html);

        $r = self::element_to_obj($dom->documentElement);    
        if(isset($r['children'][0]['children'][0]))
            $r = $r['children'][0]['children'][0];

        return $r;
    }

    public static function element_to_obj($element) {
        $obj = array( "tag" => $element->tagName );
        foreach ($element->attributes as $attribute) {
            $obj[$attribute->name] = $attribute->value;
        }
        foreach ($element->childNodes as $subElement) {
            if ($subElement->nodeType == XML_TEXT_NODE) {
                $obj["html"] = $subElement->wholeText;
            }else {
                $obj["children"][] = self::element_to_obj($subElement);
            }
        }
        return $obj;
    }


    ///----------ARRAY TO HTML --------------
    public static function array_to_html($array) 
    {
        $dom = new \DOMDocument();

        $element = self::array_to_element($dom, $array,$dom);
        if($element)
                $dom->appendChild($element); //lo agrega al document
        return $dom->saveHTML();
    }

    public static function array_to_element($dom, $avalue, $element) 
    {
        if (isset($avalue['tag']))
        {
            //---- crea un elemento del tipo TAG ----
            $newele = $dom->createElement($avalue['tag']);
            if(isset($avalue['html'])){
                $newele->nodeValue = $avalue['html'];
                unset($avalue['html']);
            }
            unset($avalue['tag']);

            foreach ($avalue as $key => $value) 
            {
                if($key=='children')
                {
                    foreach ($value as $v)
                    {
                        $e = self::array_to_element($dom, $v,$newele);
                        if($e)
                            $newele->appendChild($e);
                    }
                }else{
                    //--- crea los atributos ---
                    $domAttribute = $dom->createAttribute($key);
                    $domAttribute->value = $value;
                    $newele->appendChild($domAttribute);
                }
            }
            return $newele;
        }
        return null;
    }

    
    public static function gen_uuid($len=8)
    {
        $hex = md5("pw" . uniqid("", true));
        $pack = pack('H*', $hex);
        $uid = base64_encode($pack);        // max 22 chars
        //$uid = ereg_replace("[^A-Za-z0-9]", "", $uid);    // mixed case
        $uid = preg_replace("/[^A-Z0-9]/", "", strtoupper($uid));    // uppercase only

        if ($len < 4) {
            $len = 4;
        }
        if ($len > 128) {
            $len = 128;
        } // prevent silliness, can remove
        while (strlen($uid) < $len) {
            $uid = $uid . gen_uuid(22);
        }     // append until length achieved
        return substr($uid, 0, $len);
    }    

    ///----------ARRAY TO HTML --------------
    public static function yml_to_array($file) 
    {
        $yaml = new Parser();
        try {
            $value = $yaml->parse(file_get_contents($file));
        } catch (ParseException $e) {
            printf("Unable to parse the YAML string: %s", $e->getMessage());
        }
        return $value;
    }

    public static function savejson($file,$array)
    {
        file_put_contents($file, json_encode($array));
    }
    
    public static function readjson($file,$retorno='array')
    {
        $array = array();
        if(file_exists($file))
            $array = json_decode(file_get_contents($file), true);
        return $array;
    }
    
    public static function getMenuArray($app, $roleid)
    {    
        $homebase=self::homeDirFiles().'system/menu';
        $file=$homebase.'/menurole'.$roleid;
        $menues=array();
        
//        if (file_exists($file))
//        {
//            //echo "FILE_MENU";
//            $menues=self::readjson($file);
//        }else{
            //--- create dir if not exists
            if (!file_exists($homebase)){
                mkdir($homebase, 0777, true);
            }
            $sqlMenu = "SELECT * FROM sec_rolemenu r LEFT JOIN sec_menu m ON m.id=r.menu_id AND r.role_id={$roleid} ".
                       "WHERE ((type_id='1') or (type_id='2')) AND m.availablesel='1' and m.systemop='0'";
            $menues = $app['db']->fetchAll($sqlMenu);
            //echo "SQL_MENU";
//            self::savejson($file,$menues);
//        }
        return $menues;

    }

}
