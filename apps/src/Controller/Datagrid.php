<?php

namespace App\Controller;

/**
 * Esto pretende ser una clase para dibujar una grilla en pantalla
 *
 * @author admindesa
 */
class Datagrid {
    
    protected $app;
    protected $entityManager;
    
    /* nombre de grilla */
    protected $maxregs = 9999999;
    protected $name;
    protected $options=array('actionsRecordPosition'=>2); //1:left, 2:rigth,3:rigthleft
    protected $multiselid=false;

    /* Conexion a base de datos */
    protected $db;
    protected $url;

    /* SQL que trae los datos */
    protected $sql;
    protected $dataarray=null;
    protected $withdataarray=false;
    protected $encryptWord='';

    /* Filter - where del query */
    protected $formFilter= array();
    protected $filter= array();

    /* order by del query */
    protected $sorting = array();
    protected $sortfield = array();

    /* Timezone */
    protected $timezone;
    protected $formatdatetime;

    /* columnas a mostrar */
    protected $columns;

    /* acciones por registro a mostrar */
    protected $actions=array();  ///type_actions=  h:header, r:record, b:bottom

    /* Table style - bootstrap */
    protected $style = 'table-striped table-condensed table-hover table-bordered';//table-bordered
    protected $styleline = '';

    /* Pre y post table */
    protected $pretable = '';
    protected $posttable = '';

    /* pagina actual */
    protected $page = 1;
    
    protected $downloadCSV = '';

    /* pagging order */
    protected $paggingorder = '';
    protected $formatnumber = '';
    protected $booleanNo;
    protected $booleanYes;

    /* default_paging */
    protected $topbottom = 2; //1:top, 2:bottom, 3:top/bottom

    /* default_paging */
    protected $default_paging = 20;
    
    /* cantidad de registros */
    public $recordcount = 0;

    /* array paging */
    protected $array_paging = array("10"=>"10", "20"=>"20", "50"=>"50", "100"=>"100", "250"=>"250", "500"=>"500", "1000"=>"1000");

    function __construct($entityManager,$name, $default_paging=20, $db='')
    {
        $this->url = $_SERVER['HTTP_HOST'].$_SERVER['SCRIPT_NAME'];
        $this->entityManager = $entityManager;
        $this->name = $name;
        $this->app = array(
            'like'=>'LIKE',
            );
        $this->default_paging  = $default_paging;
        $this->db = $db;
        $this->timezone="";
        $this->formatdatetime="Y-m-d H:i:s";

        
//        $user = $app['session']->get('user');
//        if(isset($user)){
//            $this->timezone=$user['timezone'];
//            $this->formatdatetime=$user['formatdatetime'];
//        }
        $this->addOption('formatnumber',array('decimals'=>2,'decpoint'=>'.','thousandssep'=>''));

        $this->setVariables();
        
    }

    /* Pre table */
    public function setPreTable($string){
        $this->pretable = $string;
    }

    /* Post table */
    public function setPostTable($string){
        $this->posttable = $string;
    }

    public function setEncryptWord($word){
        $this->encryptWord = $word;
    }
    
    public function setMultiselId($id){
        $this->multiselid = $id;
    }
    
    public function formatNumber($fm){
        $this->formatnumber = $fm;
    }
    
    public function setStyleline($style){
        $this->styleline = $style;
    }

    public function setColumns($acols)
    {
        $this->columns = $acols;
        foreach($this->columns as $k=>$v){
            $this->columns[$k]['label'] = $v['label'];
        }
    }


    public function setActions($ar)
    {
        $this->actions=$ar;
        foreach($this->actions as $k=>$v)
        {
            if (isset($this->actions[$k]['tooltip'])) {
                $this->actions[$k]['tooltip'] = $this->actions[$k]['tooltip'];
            }

            if ($this->actions[$k]['type'] == 'h') { //Reemplaza Agregar
                $this->actions[$k]['label'] = str_replace('Agregar', 'Agregar', $this->actions[$k]['label']);
            }
        }
    }
    
    public function enableDownloadCSV($enabled='')
    {
        $this->downloadCSV = $enabled;
    }
    
    public function getActions()
    {
        return $this->actions;
    }

    public function setVariables()
    {
        $page = (isset($_GET['page']))?$_GET['page']:1;

        if (isset($_POST['btnfiltro'])){
            $page=1;
        }
        
        $this->setPage($page);        

        $this->paging = (isset($_GET['paging']))?$_GET['paging']:1;
        if(!in_array($this->paging, $this->array_paging))
        {   //--- primer elemento del array
            reset($this->array_paging);
            list($key, $value) = each($this->array_paging);
        }

        if (isset($_GET['sort']))
        {
            $this->setSorting( explode('-',$_GET['sort'])  );
        }
    }

    public function setSorting($sorting)
    {   // Field:orderType
      $this->paggingorder='';
      $this->sorting = (is_array($sorting))?$sorting:array($sorting);
      foreach ($this->sorting as $key => $value)
      {
          $data = explode(':', $value);
          if ( (isset($data[0])) and ($data[0]!='')){
             $this->sortfield[ $data[0] ] = $data[1];
             $this->paggingorder.=($this->paggingorder=='')?$data[0].':'.$data[1]:'-'.$data[0].':'.$data[1];
          }
      }
    }

    public function setFormFilter($filter)
    {   // Field:orderType
        $this->formFilter = $filter;
        if(!isset($this->formFilter['button'])) $this->formFilter['button']='Filtrar';
        if(!isset($this->formFilter['buttonr'])) $this->formFilter['buttonr']='Reset';

        $this->formFilter['button'] = $this->formFilter['button'];
        $this->formFilter['buttonr'] = $this->formFilter['buttonr'];
        foreach($this->formFilter['columns'] as $k=>$v){
            $this->formFilter['columns'][$k]['label'] = $v['label'];
        }
        return $this->getFormFilter( $this->formFilter['form'] );
    }
    
    
    
    public function getFormFilter($form='frmfitro')
    {
        $filtro='';
        $valores = array();        
        if (isset($_SESSION[$form])) $valores = $_SESSION[$form];
        if (isset($_POST[$form]))
        {
            $valores = $_POST[$form];
        }

        foreach ($valores as $k => $v) 
        {
            if(is_array($v))
            {
                if ( (isset($v['t'])) and (isset($v['f'])) and ($v['f']!='') and ($v['t']!='') )
                {
                    
                    if(strlen(trim($v['t']))==10){
                        $v['t']= $v['t']." 23:59:59.000";
                    }
                    
                    $filtro.=" AND ($k>='{$v['f']}' AND $k<='{$v['t']}') ";
                }
            }else{
                $operador = $this->getOperatorField($k);
                $busca = ($operador==$this->app['like'])?'%'.$v.'%':$v;
                if(trim($v)!=''){
                    $filtro.=" AND ( $k $operador '$busca' ) ";
                }
            }
        }
        if (isset($_POST[$form])) {
            $_SESSION[$form] = $_POST[$form];
        }
        
        return $filtro;
    }

    
    public function getOperatorField($field)
    {   
        foreach ($this->formFilter['columns'] as $k=>$v)
        {    
            if($v['field']==$field)
            {
                if(isset($v['operator'])){
                    return $v['operator']; 
                }else{
                    return $this->app['like'];
                }
            }
        }
        return $this->app['like'];
    }

    
    public function setFilter($filter)
    {   // Field:orderType
        if(is_array($filter))
          $this->filter[] = $filter;
        else 
          $this->filter[] = array($filter);
    }

    public function setPageSize($default_paging)
    {
        $this->default_paging = $default_paging;
    }

    public function setPage($page)
    {        
        $this->page = (integer) $page;
        if(!is_numeric($this->page))
            $this->page = 1;
    }

    public function setPagingSettings($topbottom, $pages_array, $default_page_size)
    {
        $this->topbottom = $topbottom;
        $this->array_paging = $pages_array;
        $this->default_paging = $default_page_size;
    }

    public function setQuery($sql)
    {
        $this->sql = trim($sql);
    }

    public function getOrderByParsed()
    {
       $orderby = '';
       foreach ($this->sortfield as $k=>$v)
       {
           $v=($v=='')?'ASC':$v;
           $orderby.=($orderby!='')?', '.$k.' '.$v:$k.' '.$v;
        }
        return $orderby;
    }

    public function getFilterParsed()
    {
        $ret='';
        foreach ($this->filter as $k=>$v)
        {
            if (strtolower($v[1])==$this->app['like'])
            {
                if (!strpos($v[2], "'"))
                {
                    $v[2]='"'.$v[2].'"';
                }
            }
            $ret.=($ret=='')?$v[0].' '.$v[1].' '.$v[2]:" and ".$v[0].' '.$v[1].' '.$v[2];
        }
        return $ret;
    }

    public function getPaggingParsed()
    {
        if(isset($_POST['btnfiltro'])){
            $this->page=1;
        }

        $defpg=($this->default_paging==0)?$this->maxregs:$this->default_paging;

        if($this->page<1) $this->page = 1;

        $max_pages = ceil($this->recordcount / $defpg);
        if ($max_pages==0) $max_pages=1;

        if($this->page>$max_pages)
            $this->page=$max_pages;

        $limit['page'] = $this->page;
        $limit['d'] = ($this->page - 1) * $defpg;
        $limit['h'] = $defpg;
        return $limit;
    }

    function getPagingGrid()
    {
        if(isset($_POST['btnfiltro'])){
            $this->page=1;
        }

        $defpg=($this->default_paging==0)?$this->maxregs:$this->default_paging;
        $pager['current'] = $this->page;
        $max_pages = ceil($this->recordcount / $defpg);
        $from= $this->page - 3;
        $to = $this->page + 3;
        if($from<1) $from=1;
        if($to>$max_pages) $to=$max_pages;

        $pager['from'] = $from;
        $pager['to'] = $to;
        $pager['lastpage'] = $max_pages;
        $pager['firstpage'] = 1;
        $pager['paggingorder'] = $this->paggingorder;
        $pager['paggingarray'] = $this->array_paging;
        $pager['default_paging'] = $defpg;

        return $pager;
    }

    public function parserSql()
    {
        $sqlparser = $this->sql;
        $orderby = $this->getOrderByParsed();
        $where = $this->getFilterParsed();

        if($where!='') $sqlparser.=' WHERE '.$where;
        if($orderby!='') $sqlparser.=' ORDER BY '.$orderby;

        $this->recordcount = $this->getCountSQL();

        //---- AGREGA EL PAGINADO ----
        $paging = $this->getPaggingParsed();
        if ($paging){
//          $sqlparser.=' LIMIT '.$paging['d'].' , '.$paging['h']; //Para mysql
            $sqlparser.=' LIMIT '.$paging['h'].' OFFSET '.$paging['d']; //Para Postgres
        }        
        return $sqlparser;
    }

    public function getColumns()
    {
        foreach ($this->columns as $k=>$v)
        {
            if ( (isset($v['field'])) and (isset($this->sortfield[ $v['field'] ])) ) 
            {
               $this->columns[$k]['order'] = $this->sortfield[ $v['field'] ];
            }

            if (isset($v['link']))
            {
                $this->columns[$k]['linkfields']='';
                if ($v['link'][0]=='#') 
                {
                    $this->columns[$k]['linkfields']=  str_replace('#', '', $v['link']);
                }
                elseif (preg_match_all('/\:(.*?)\//s', $v['link'], $matches)) 
                {
                    if(count($matches)>0)
                    {
                        foreach ($matches[1] as $km => $vm) {
                            $this->columns[$k]['linkfields'].=($this->columns[$k]['linkfields'] == '') ? $vm : ',' . $vm;
                        }
                    }
                }
            }
            /*
            if (isset($v['link']))
            {
                $this->columns[$k]['linkfields']='';
                if (preg_match_all('/\:(.*?)\//s', $v['link'], $matches)) 
                {
                    if(count($matches)>0)
                    {
                        foreach ($matches[1] as $km=>$vm)
                            $this->columns[$k]['linkfields'].=($this->columns[$k]['linkfields']=='')?$vm:','.$vm;
                    }
                }
            }*/
            
            
        }
        return $this->columns;
    }


    public function getRecords()
    {
        $records=array();
        if(!$this->withdataarray){
            
                $conn = $this->entityManager->getConnection();
                $stmt = $conn->prepare($this->parserSql());
                $resultSet = $stmt->executeQuery([]);

                $records = $resultSet->fetchAllAssociative();

        }else{
            $records = $this->getDataArrayPagging();
        }
        return $records;
    }
    
    public function getCountSQL()
    {
        $sql = 'SELECT count(*) AS qty FROM ('.$this->sql.') as tmpsql';
        
        $conn = $this->entityManager->getConnection();
        $resultSet = $conn->fetchAssociative($sql);
        $qty = $resultSet['qty'];
        
        return $qty;
    }


    public function getDataRender()
    {
        if (count($this->columns) == 0) {
            die('COLUMNS is not configurated!!');
        }
        $data['formfilter'] = $this->formFilter;
        $data['timezone'] = $this->timezone;
        $data['formatdatetime'] = $this->formatdatetime;
        $data['encryptWord'] = $this->encryptWord;
        $data['styleline'] = $this->styleline;
        $data['name'] = $this->name;
        $data['style'] = $this->style;
        $data['data'] = ($this->dataarray)?$this->getDataArrayPagging():$this->getRecords();
        $data['columns'] = $this->getColumns();
        $data['actions'] = $this->getActions();
        $data['pager'] = $this->getPagingGrid();
        $data['options'] = $this->options;
        $data['multiselid'] = $this->multiselid;
        $data['booleanYes'] = 'Si';
        $data['booleanNo'] = 'No';
        $data['pretable'] = $this->pretable;
        $data['posttable'] = $this->posttable;
        $data['recordcount'] = $this->recordcount;
        $data['downloadCSV'] = $this->downloadCSV;

        return $data;
    }
    
    public function addOption($op,$value)
    {
        $this->options[$op]=$value;
    }

    public function setDataArray($data)
    {
        $this->dataarray = $data;
        $this->recordcount = count($this->dataarray);
        $this->withdataarray =true;
    }

    function sortArray($data, $field) { 
        if(!is_array($field)) 
            $field = array($field);
        usort($data, function($a, $b) use($field){
             $retval = 0;
             foreach($field as $fieldname) {
                 if($retval == 0) 
                     $retval = strnatcmp($a[$fieldname],$b[$fieldname]); 
             }
         return $retval; }); 
         return $data;
    }

    public function getDataArrayPagging()
    {
        $defpg=($this->default_paging==0)?$this->maxregs:$this->default_paging;
        
        $orden = array_keys($this->sortfield);
        //$this->sortArray($this->dataarray, $orden);
        $datos = $this->dataarray;
        $paginas = array_chunk($datos, $defpg);

        $pg = (isset($paginas[$this->page-1]))? $paginas[$this->page-1] : array();
        
        return $pg;
    }
    
    
    //---- Render para el Twig ----
    static public function renderHtml($data)
    {
        $prot ='';
        //$prot = substr($_SERVER['HTTP_REFERER'], 0, strpos($_SERVER['HTTP_REFERER'],'//') ).'//';
        //$url = $prot.$_SERVER['HTTP_HOST'].$_SERVER['SCRIPT_NAME'];
        $url = $_SERVER['SCRIPT_NAME'];
    
        return Datagrid::grid_filter($data,$url).
               Datagrid::grid_header($data,$url).
               Datagrid::grid_body($data,$url);
               //Datagrid::grid_pager($data,$url);
    }
    
    
    static function grid_filter($data,$url)
    {
        $ret='';
        $btn=(isset($data['formfilter']['button']))?$data['formfilter']['button']:'Filtrar';
        if (!isset($data['formfilter']['form'])) $data['formfilter']['form']='frmfitro';
        $frm = $data['formfilter']['form'];

        $valores = array();
        if (isset($_SESSION[$frm])) $valores = $_SESSION[$frm];
        if (isset($_POST[$frm])) $valores = $_POST[$frm];

        if(isset($data['formfilter']['columns']))
        {
            $ret.='<form id="'.$frm.'" name="'.$frm.'" method="post"> '."\n".
                  '<table class="table table-bordered table-condensed" style="margin-bottom: 2px;">'."\n".
                  '<thead>'."\n";

            $scriptdate='';
            $line1='<tr>';
            $line2='<tr>';
            foreach($data['formfilter']['columns'] as $k=>$v)
            {
                $val = (isset($valores[$v['field']]))?$valores[$v['field']]:'';
                $class=(isset($v['class']))?' class="'.$v['class'].'"':'';
                $line1.='<th>';
                $line2.='<th>';
                if(isset($v['choices']))
                {
                    //echo $v['field'].' '.$val.'<br>';
                    $select = Util::selectHtml($v['choices'], $val, $frm.'['.$v['field'].']',$frm.'_'.$v['field'] );
                    $line1.=$v['label'];
                    $line2.=$select;
                }
                elseif(isset($v['range']))
                {
                    $valf = (isset($val['f']))?$val['f']:'';
                    $valt = (isset($val['t']))?$val['t']:'';
                    $line1.=$v['label'];
                    $line2.='<input type="text" id="'.$v['field'].'_f" name="'.$frm.'['.$v['field'].'][f]" value="'.$valf.'" '.$class.' >'.
                                ' - '.'<input type="text" id="'.$v['field'].'_t" name="'.$frm.'['.$v['field'].'][t]" value="'.$valt.'" '.$class.' >';
                    if( (isset($v['type'])) and ($v['type']=='D')){
                        $scriptdate.='$( "#'.$v["field"].'_f" ).datepicker( {dateFormat: "yy-mm-dd"});'."\n";
                        $scriptdate.='$( "#'.$v["field"].'_t" ).datepicker( {dateFormat: "yy-mm-dd"});'."\n";
                    }
                }
                else
                {
                    $line1.=$v['label'];
                    $line2.='<input type="text" id="'.$v['field'].'" name="'.$frm.'['.$v['field'].']" value="'.$val.'" '.$class.' >';
                }
                $line1.='</th>'."\n";
                $line2.='</th>'."\n";
            }
            $line1.='<th></th></tr>'."\n";
            $line2.='<th><input type="submit" class="btn btn-primary btn-xs" id="btnfiltro" name="btnfiltro" value="'.$btn.'" ></th></tr>'."\n";
            
            $ret.=$line1.$line2.'</thead><tbody></tbody></table>'."\n".
                  '</form>';
            
            if($scriptdate!='')
                $ret.='<script type="text/javascript">'.$scriptdate.'</script>';            
        }
        return $ret;
    }

    static function grid_header($data,$url)
    {    
        $strsort='';
        $content = $data['pretable'];
        $content.='<table class="table '.$data['style'].'">'."\n".'<thead>'."\n".'<tr>'."\n";

        //--- Si pone acciones de registro en la izquierda o a ambos lados ---
        if ( ($data['options']['actionsRecordPosition']==1) or ($data['options']['actionsRecordPosition']==3))
            if(count($data['actions'])>0)
                $content.='<th class="i120">'.Datagrid::ponerAcciones($data,array(),'h').'</th>'."\n";

        if($data['multiselid'])
            $content.='<th>X</th>'."\n";

        //--- Primera fila con span ---
        $withspan = Datagrid::existspan($data['columns']);
        $enspan=array();
        $k=0;
        foreach ($withspan as $k=>$v){
           if($k==0) $content.='<tr>';
           $span=($v['colspan']!=0)?' colspan="'.$v['colspan'].'" ':' rowspan="2" ';
           $content.='<th'.$span.'>'.$v['label'].'</th>';
           if($k==(count($withspan)-1) ) $content.='</tr>'."\n";
           $enspan[$v['field']]=1;
        }

        //--- Columnas con campos ---//
        foreach ($data['columns'] as $k=>$v)
        {
           if (!isset($enspan[$v['field']]))
           {
                $ordenlink='';
                $hrefpre='';
                $hrefpos='';
                if ((isset($v['sort'])) and ($v['sort']))
                {
                    $datalink = Datagrid::getlinkgrid($data,$v['field']);

                    $ordenlink = $datalink['iconsort'];
                    $hrefpre='<a href="?&page='.$data['pager']['current'].'&sort='.$datalink['sort'].'">';
                    $hrefpos='</a>';
                }
                $class=(@$v['class']!='')?' class="'.$v['class'].'" ':'';
                $content.='<th'.$class.'>'.$hrefpre.$v['label'].$ordenlink.$hrefpos.'</th>'."\n";
           }
        }

        //---- si pone acciones de registro en la derecha o a ambos lados
        if (($data['options']['actionsRecordPosition']==2) or ($data['options']['actionsRecordPosition']==3))
            if(count($data['actions'])>0)
               $content.='<th class="i120">'.Datagrid::ponerAcciones($data,array(),'h',$url).'</th>';

        $content.='</tr>'."\n".'</thead>'
                ;

        return $content;
    }

    static function grid_body($data,$url)
    {
        $content='<tbody>';
        foreach ($data['data'] as $dk=>$dv)
        {            
            //---- IF CONDICION ----
            $classtr='';
            if(isset($data['styleline']['if']))
            {
                $dty = explode('==',$data['styleline']['if']);
                if ($dv[$dty[0]]==$dty[1])
                {
                    if (isset($data['styleline']['class']))
                        $classtr=' class="'.$data['styleline']['class'].'" ';
                }
            }            

            $content.='<tr'.$classtr.'>';
            if ($data['multiselid'])
            {
                $idtxt = $dv[ $data['multiselid'] ];
                $content.='<td><input type="checkbox" id="_sel'.$idtxt.'" name="_sel['.$idtxt.']" value=""></td>';
            }

            foreach ($data['columns'] as $k=>$v)
            {
                $valor = (!isset($dv[ $v['field'] ]))?'':$dv[ $v['field'] ];

                //--- Genera el link en la grilla ---
                $linkIni='';
                $linkFin='';
                if (isset($v['link']))
                {
                    $lnk = $url.$v['link'];
                    $campos=explode(',',$v['linkfields']);
                    foreach ($campos as $kf=>$campo)
                    {
                        //--- encripta parametro ---
                        $vallink = $dv[$campo];
                        if($data['encryptWord']!='')
                            $vallink = md5($vallink.$data['encryptWord']).'|'.$vallink;
                        $lnk = str_replace(':'.$campo, $vallink, $lnk);
                    }

                    $linkprop=(isset($v['linkprop']))?$v['linkprop']:'';
                    $linkIni='<a '.$linkprop.' href="'.$lnk.'">';
                    $linkFin='</a>';
                }

                if (isset($v['values'][$valor]))
                {
                   $valor=$v['values'][$valor];
                }
                
                if (isset($v['localtime']))
                {
                    $date = new \DateTime($valor, new \DateTimeZone('UTC'));
                    $date->setTimezone(new \DateTimeZone($data['timezone']));
                    $valor=$date->format($data['formatdatetime']);
                }

                if (isset($data['options']['formatnumber']))
                {
                    if ( (isset($v['type'])) && (strtolower($v['type'])=='f'))
                    {
                        $decimals=$data['options']['formatnumber']['decimals'];
                        $decpoint=$data['options']['formatnumber']['decpoint'];
                        $thousandssep=$data['options']['formatnumber']['thousandssep'];
                        $valor = (float) $valor;
                        $valor = number_format($valor , $decimals, $decpoint,$thousandssep);
                    }
                }

                if (isset($v['cutleft'])) //corta a la derecha
                {
                   $valor = substr( $valor, 0, $v['cutleft'] );
                }

                if (isset($v['editable']))
                {
                    $linkIni='';
                    $linkFin='';

                    //* Si no es flat *//
                    $isFloat = ( (isset($v['type'])) && (strtolower($v['type'])=='f'));
                    if (!$isFloat) {
                        $valor = $dv[$v['field']];
                    }

                    if (!isset($v['editableid'])) {
                        die('Must configured EditableID field');
                    }
                    $idtxt=$dv[ $v['editableid'] ];

                    $input = (isset($v['input']))?$v['input']:'text';
                    $class=(isset($v['class']))?' class="'.$v['class'].'"':'';
                    $checked = (($input=='checkbox') and ($valor=='1'))?' checked ':'';

                    if($input==='text')
                        $valor='<input type="'.$input.'" '.$class.' id="'.$v['field'].'_'.$idtxt.'" name="'.$v['field'].'['.$idtxt.']" '.$checked.' value="'.$valor.'">';
                    if($input==='choices'){
                        $valor=Util::selectHtml($v['choices'], $valor, $v['field'].'['.$idtxt.']',$v['field'].'_'.$idtxt );
                    }
//                        $valor='<input type="'.$input.'" '.$class.' id="'.$v['field'].'_'.$idtxt.'" name="'.$v['field'].'['.$idtxt.']" '.$checked.' value="'.$valor.'">';
                }

                if (isset($v['boolean']))
                {
                    $valor= ( ($valor=='0') or ($valor=='false'))?$data['booleanNo']:$data['booleanYes'];
                }

                //--- Reemplaza valor por choices - Replace values for choices
                if (isset($v['choices']))
                {
                    //$valor = (isset($v['choices'][$valor]))?$v['choices'][$valor]:$valor;
                }

                $alineado='';
                if (isset($v['align']))
                {
                    if($v['align']=='left') $alineado='al_left';
                    if($v['align']=='center') $alineado='al_center';
                    if($v['align']=='right') $alineado='al_right';
                    if($alineado!='')
                    {
                        $alineado = ' class="' . $alineado . '" ';
                    }
                }

                if (isset($v['totalize']))
                {
                    if(!isset($data['columns'][$k]['total']))
                        $data['columns'][$k]['total']=0;

                    $data['columns'][$k]['total'] += $valor;
                }

//                if (isset($data['options']['formatnumber']))
//                {
//                    if ( (isset($v['type'])) && (strtolower($v['type'])=='f'))
//                    {
//                        $decimals=$data['options']['formatnumber']['decimals'];
//                        $decpoint=$data['options']['formatnumber']['decpoint'];
//                        $thousandssep=$data['options']['formatnumber']['thousandssep'];
//                        $valor = (float) $valor;
//                        $valor = number_format($valor , $decimals, $decpoint,$thousandssep);
//                    }
//                }

                //-- atributo ifvalue e ifcolor para poner color de fondo
                //-- segun la condicion del color
                if(isset($v['ifvalue']))
                {
                    if($v['ifvalue']==$valor){
                        $alineado.=' style="background-color: '.$v['ifcolor'].'"';
                    }
                }
                
                //--- Poner columna de fondo para el campo/columna 
                if(isset($v['showcolor']))
                {
                    $alineado=' style="background-color: '.$valor.'"';
                    $valor = '';
                }
                $content.='<td'.$alineado.'>'.$linkIni.$valor.$linkFin.'</td>';
            }

            //---botones post----
            if(count($data['actions'])>0)
            {
                $content.= '<td>'.Datagrid::ponerAcciones($data, $dv, 'r',$url).'</td>'; //valorRegistro
            }
            $content.='</tr>'."\n";
        }
        $content.='</tbody>';
        
       //$content.='<td colspan="'.(count($data['columns'])+3).'" style="text-align: right;">'.$data['recordcount'].' Items</td>';
       $content.= Datagrid::totalizegrid($data);
       $content.= Datagrid::grid_pager($data,$url);
       $content.='</table>'.'<center>'.$data['posttable'].'</center>'.'<script>$(".tt").tooltip();</script>';

       return $content;
    }

    static function totalizegrid($data)
    {
        $content='';
        //---controla si debe totalizar ---
        $totalized=false;
        foreach ($data['columns'] as $k=>$v)
        {
            if(isset($v['totalize'])){
               $totalized=true;
               break;
            }
        }

        //--- si totaliza ---
        if($totalized)
        {
            $content='<tr>';
            foreach ($data['columns'] as $k=>$v)
            {
                $alineado='';
                if (isset($v['align']))
                {
                    if($v['align']=='left') $alineado='al_left';
                    if($v['align']=='center') $alineado='al_center';
                    if($v['align']=='right') $alineado='al_right';
                    if($alineado!='')
                        $alineado =' class="'.$alineado.'" ';
                }

                $content.='<td'.$alineado.'>';

                if(isset($v['total']))
                { 
                    $valor =  $v['total'];
                    if (isset($data['options']['formatnumber']))
                    {
                        if ( (isset($v['type'])) && (strtolower($v['type'])=='f'))
                        {
                            $decimals=$data['options']['formatnumber']['decimals'];
                            $decpoint=$data['options']['formatnumber']['decpoint'];
                            $thousandssep=$data['options']['formatnumber']['thousandssep'];
                            $valor = number_format($v['total'], $decimals, $decpoint,$thousandssep);
                        }
                    }
                    $content.= $valor;
                }
                if(isset($v['totalizelabel'])) $content.= $v['totalizelabel'];

                $content.='</td>';
            }
            $content.='</tr>';
        }
        return $content;
    }

    static function existspan($data)
    {
        $ret=array();
        $procesaspan=false;
        if(is_array($data)){
            foreach ($data as $k => $v){
                if (isset($v['colspan'])){
                    $procesaspan=true;
                    break;
                }
            }
        }

        if($procesaspan){
            $span=0;
            foreach ($data as $k => $v) {
                if ( ($span==0) or (isset($v['colspan']))){
                      $label=$v['label'];
                      $colspan=0;
                      if(isset($v['colspan'])){
                           $span= ( (integer) $v['colspan'] -1 );
                           $label=$v['labelspan'];
                           $colspan=(integer) $v['colspan'];
                           $field='';
                      }else{
                          $field=$v['field'];
                      }
                      $ret[] = array('label'=>$label,'colspan'=>$colspan, 'field'=>$field);
                }else{
                    $span--;
                }
            }
        }
        return $ret;
    }

    static function ponerAcciones($data, $registro,$tipo,$url)
    {    
        $content='';
        foreach ($data['actions'] as $k=>$v)
        {
            if($v['type']==$tipo) //Acciones de registro
            {
                $tooltip='';
                if(isset($v['tooltip']))
                  $tooltip=' class="tt" data-toggle="tooltip" title="'.$v['tooltip'].'" ';

                $link = $v['link'];
                if (preg_match_all('/\:(.*?)\//s', $link, $matches)) 
                {
                    if(count($matches)>0)
                    {
                        foreach ($matches[1] as $km=>$vm)
                        {
                            if( isset($registro[$vm]))
                            {
                               $vallink = $registro[$vm]; ///ENCRIPTA PARAMETRO
                               if($data['encryptWord']!='')
                                  $vallink = md5($vallink.$data['encryptWord']).'|'.$vallink; 
                                $link = str_replace(":$vm", $vallink, $link);
                            }
                        }
                        $content.='<a href="'.$url.$link.'" '.$tooltip.'>'.$v['label'].'</a>  &nbsp;&nbsp;';
                    }
                }else{
                   $link=$v['link'];
                   if (isset($registro)){
                       foreach ($registro as $kr=>$vr){
                           $link = str_replace(":$kr", $vr, $link);
                       }
                   }
                   ////$content.='<a href="'.$url.$link.'" '.$tooltip.'>'.$v['label'].'</a>';
                   if($link[0]==='#'){
                     $link = str_replace('#', '', $link);
                     $content.='<a href="'.$link.'" '.$tooltip.'>'.$v['label'].'</a>';
                   }else{
                     $content.='<a href="'.$url.$link.'" '.$tooltip.'>'.$v['label'].'</a>';
                   }

                }
            }
        }

        return '<div class="btn-group btncell">'.$content.'</div>';
    }

    static function grid_pager($data,$url)
    {
        $current = $data['pager']['current'];
        $f = $data['pager']['from']; //desde: from
        $t = $data['pager']['to']; //hasta: to
        $first = $data['pager']['firstpage']; //hasta: to
        $last = $data['pager']['lastpage']; //hasta: to
        $sorting = trim($data['pager']['paggingorder']);
        $sorting = ($sorting!='')?'&sort='.$sorting:$sorting;

        $previous = (($current-1)<1)?1:$current-1;
        $next = (($current+1)>$last)?$last:$current+1;

        $content='';
        //if ( ($data['pager']['default_paging']!=9999999) and ($last>1)){
        //<div class="row" style="padding: 0px;">
        $content.='<tfoot><tr><td colspan="40">'.
                  '<div class="col-sm-1">'.$data['recordcount'].' Items </div>'."\n".
                  '<div class="col-sm-11">'."\n".
                  
                  '<nav aria-label="Paginacion">'."\n".
                  '<ul class="pagination justify-content-center">'."\n".
                  '<li class="page-item"><a class="page-link" href="?page='.$first.$sorting.'">««</a></li>'."\n";
        
            if (($f-1)>0)
               $content.='<li class="page-item"><a class="page-link" href="?page='.$previous.$sorting.'">«</a></li>'."\n";
               //$content.='<li><a href="?page='.$previous.$sorting.'">«</a></li>'."\n";

            for ($i = $f; $i<=$t; $i++) 
            {
                $actual=($current==$i)?' active':'';
                $content.='<li class="page-item'.$actual.'"><a class="page-link" href="?page='.$i.$sorting.'">'.$i.'</a></li>'."\n";
            }
            
                
            $content.='<li class="page-item"><a class="page-link" href="?page='.$next.$sorting.'">»</a></li>'.
                    '<li class="page-item"><a class="page-link" href="?page='.$last.$sorting.'">»»</a></li>'.
                    '</ul>'."\n".
                    '</nav>'."\n".
                    '</div>'

                    ;

//                    '<div class="col-xs-6 col-md-4 dv-itemspg">'."\n".
//                    Datagrid::getPaggingArray($data)."\n".
//                    '</div>'."\n".
                    
            if($data['downloadCSV']!='')
            {
                $content.='<div class="col-sm-2"><a href="'.$url.$data['downloadCSV'].'"><span class="glyphicon glyphicon-cloud-download" class="tt" data-toggle="tooltip" title="Descargar CSV"></span> Descargar CSV </a></div>';
            }

            $content.='</td>';
                    
            $content.='</tr></tfoot>'."\n";
            //</div>
        //}
        

            
        return $content;
    }


    static function getPaggingArray($data)
    {
        $selhtml='<select name="selpg'.$data['name'].'" id="selpg'.$data['name'].'" onchange="grid_'.$data['name'].'()">'."\n";
        foreach ($data['pager']['paggingarray'] as $k=>$v )
        {
            $selhtml.='<option value="'.$k.'">'.$v.'</option>'."\n";
        }
        $selhtml.='</select>'."\n";

        //return $selhtml;
        return ''; ///NO retorna el select con paginados        
    }

    static function getlinkgrid($data,$field)
    {
        $ICOASC='<span class="glyphicon glyphicon-sort-by-alphabet"></span>';
        $ICODESC='<span class="glyphicon glyphicon-sort-by-alphabet-alt"></span>';

        $sorting=array();
        $srt = explode('-', $data['pager']['paggingorder']);
        foreach ($srt as $k=>$v){
            $dp = explode(':', $v);
            if(!isset($dp[1])) $dp[1]='asc';
            $sorting[$dp[0]]=$dp[1];
        }

        $strsort='';
        $ordenlink='';
        foreach ($data['columns'] as $k=>$v)
        {
            if ((isset($v['sort'])) and ($v['sort']))
            {
                $orden='asc';
                if (isset($v['order']))
                    $orden=$v['order'];
                if(isset($sorting[$v['field']])){
                    $orden=$sorting[$v['field']];
                    if ($v['field'] == $field) {
                        $orden = ($sorting[$field] == 'asc') ? 'desc' : 'asc';
                    }
                }

                $strsort.=($strsort=='')?$v['field'].':'.$orden:'-'.$v['field'].':'.$orden;
                $ordenlink = ($orden=='asc')?$ICODESC:$ICOASC;
            }
        }
        return array('iconsort'=>$ordenlink,'sort'=>$strsort);
    }

}
