<?php
namespace Home\Controller;

use Think\Controller;
use Think\Model;

class CommonController extends Controller {
   /**
    * 日志模块
    * @var string
    */
    protected $logContent;
	/**
	 * 格式化easyui-tree数据格式
	 * @param  array $ids   父级菜单id
	 * @param  array $datas 修要处理的菜单
	 * @param  array $l_arr 保存菜单的一些信息  0-自身id  1-保存内容 2-父ID 3-排序
	 * @param  array $L_attributes 额外需要保存的信息 ['iconcls']//直接处理  ['iconCls'=>'iconcls']//根据键名处理
     * @param  array $check_arr 需要被勾选的数组
     * @param  array $icons 需要添加的图标 icon-remove 0-父图标 1-子图标
     * @param  array/string $noclose  无需折叠的数组  当noclose为all时全都不折叠
	 * @return array
	 */
    public function formatTree($ids,$datas,$l_arr,$L_attributes,$check_arr,$icons,$noclose)
    {
    	$formatTree = array();
        foreach ($ids as $id) {
            $odrData = array();
            foreach ($datas as $key=>$data) {
                if($id == $data[$l_arr[2]]){
                    $odrData[] = $data[$l_arr[3]];
                    $nextIds[] = $data[$l_arr[0]];
                    $doTree['id'] = $data[$l_arr[0]];
                    if(!empty($check_arr)){
                        if(in_array($doTree['id'],$check_arr)){
                            $doTree['checked'] = true;
                        }
                    }
                    $doTree['text'] = $data[$l_arr[1]];
                    foreach ($L_attributes as $k=>$L_attribute) {
                        if(!is_numeric($k)){
                            $doTree[$k] = $data[$L_attribute];
                        }else{
                            $doTree[$L_attribute] = $data[$L_attribute];
                        }
                    }
                    //删除已经符合条件的数据减少下一次循环的次数
                    unset($datas[$key]);
                    $children = $this->formatTree($nextIds,$datas,$l_arr,$L_attributes,$check_arr,$icons,$noclose);
                    $nextIds = '';
                    if(!empty($children)){
                        if(is_array($noclose)){
                            if(!in_array($doTree['id'],$noclose))  $doTree['state'] = 'closed';
                        }elseif($noclose != 'all'){
                            $doTree['state'] = 'closed';
                        }
                        $doTree['children'] = $children;
                        !empty($icons) ? $doTree['iconCls'] = $icons[0] : '';
                    }else{
                        !empty($icons) ? $doTree['iconCls'] = $icons[1] : '';
                    }
                    $formatTree[] = $doTree;
                    //对于生成的菜单在进行排序
                    array_multisort($odrData,SORT_DESC,$formatTree);
                    $doTree = '';
                }
            }
        }
        return  $formatTree;
    }
    /**
     * 获取所有子联级
     * @param  array $finfos 根元素
     * @param  string $dbc     模型
     * @param  array $l_arr  0-id  1-fid
     * @return array         所有子集
     */
    public function getChData($finfos,$dbc,$l_arr)
    {
    	if(empty($finfos)) return false;

        $db = D($dbc);
    	$infos = array();
    	foreach ($finfos as $key => $finfo) {
    		$id = $finfo[$l_arr[0]];
    		$where[$l_arr[1]] = $id;
    		$infoc = $db->where($where)->select();
    		$info = array();
    		if(!empty($infoc)){
    			$info = $this->getChData($infoc,$dbc,$l_arr);
    		}
            $infos = array_merge($info,$infos,$infoc);
    	}
    	return $infos;
    }
    /**
     * 获取父级数据
     * @param  array $finfos 所有子集
     * @param  string $dbc     模型
     * @param  array $l_arr  0-id  1-fid
     * @return array 父级数据
     */
    public function getParentData($finfos,$dbc,$l_arr)
    {
        if(empty($finfos)) return false;

        $db = D($dbc);
        $datas = array();
        if(!isset($allId)) static $allId = array();
        //需要查询的上级集合
        $pids = array();
        foreach ($finfos as $value) {
            if(!in_array($value[$l_arr[1]],$pids)){
                $pids[] = $value[$l_arr[1]];
            }
            $allId[] = $value[$l_arr[0]];
        }
        foreach ($finfos as $value) {
            if(false != $k = array_search($value[$l_arr[0]],$pids) ) unset($pids[$k]);
        }
        $where = $this->where_key_or($pids,$l_arr[0]);
        $datas = $db->where($where)->select();
        foreach ($datas as $key=>$value) {
            if(!in_array($value[$l_arr[0]],$allId)){
                $allId[] = $value[$l_arr[0]];
            }else{
                unset($datas[$key]);
            }
        }
        if(!empty($datas)) $datac = $this->getParentData($datas,$dbc,$l_arr);
        if(isset($datac) && $datac) $datas = array_merge($datas,$datac);
        return $datas;
    }
    /**
     * 获取父级数据
     * @param  array $finfos 所有子集
     * @param  string $dbc     模型
     * @param  array $l_arr  0-id  1-fid
     * @return array 父级数据
     */
    public function get_up_data($finfos,$dbc,$l_arr)
    {
        if(empty($finfos)) return false;

        $db = D($dbc);
        $datas = array();
        static $pids = array();
        foreach ($finfos as $value) {
            if(!in_array($value[$l_arr[0]],$pids)){
                $pids[] = $value[$l_arr[0]];
            }
        }
        foreach ($finfos as $finfo) {
            if(!in_array($finfo[$l_arr[1]],$pids)){
                $where[$l_arr[0]] = $finfo[$l_arr[1]];
                $data = $db->where($where)->find();
                if($data!='' && !in_array($data[$l_arr[0]],$pids)){
                    $datas[] = $data;
                }
                $pids[] = $finfo[$l_arr[1]];
            }
        }
        $datac = $this->getParentData($datas,$dbc,$l_arr);
        if($datac){
            $datas = array_merge($datas,$datac);
        }
        return $datas;
    }
    /**
     * 获取数据库中的所有表名
     * @param  array $config 数据库的配置信息
     * @return array        数据库一维数组
     */
    public function get_dbTables($config)
    {
        $tables = array();
        try {
            $initdb = M('','',$config);
            $tablesArr = $initdb->query('show tables');
            $tables = array();
            foreach ($tablesArr as  $table) {
                $tables[] = array_pop($table);
            }
            return $tables;
        } catch (Exception $e) {
            return $tables;
        }
    }
    /**
     * 获取两个日期之间的所有日期 包含自身
     * @param  Date $smallDate 较小的日期
     * @param  Date $bigDate   较大的日期
     * @param  string $format  生成日期的格式
     * @return array
     */
    public function get_twoMonthsDates($smallDate,$bigDate,$format)
    {
        $time1 = strtotime($smallDate); // 自动为00:00:00 时分秒 两个时间之间的年和月份
        $time2 = strtotime($bigDate);
        $datearr = array();
        $datearr[] = date($format,$time1);
        while( ($time1 = strtotime('+1 day', $time1)) <= $time2){
              $datearr[] = date($format,$time1); // 取得递增月;
        }
        return $datearr;
    }
    /**
     * 添加其他信息到树
     * @param array $easyuiTree 已经生成好的树
     * @param array $otherData  其他的数据信息
     * @param array $checkFiled  需要验证添加的字段  0-checkid  1-id 2-name
     * @param  array $attributes 额外需要保存的信息 ['iconcls']//直接处理  ['iconCls'=>'iconcls']//根据键名处理
     * @param string $icon       加载的图标
     */
    public function add_other_info($easyuiTree,$otherData,$checkFiled,$icon,$attributes)
    {
        foreach ($easyuiTree as &$node) {
            $children = array();
            foreach ($otherData as $key=>$info) {
                //如果符合验证
                $data = array();
                if($node['id'] == $info[$checkFiled[0]]){
                    $data['id'] = $info[$checkFiled[1]];   //id
                    $data['text'] = $info[$checkFiled[2]]; //内容
                    $data['iconCls'] = $icon;                   //图标
                    if(!empty($attributes)){
                        foreach ($attributes as $k => $attribute) {
                            if(!is_numeric($k)){
                                $data[$k] = $info[$attribute];
                            }else{
                                $data[$attribute] = $info[$attribute];
                            }
                        }
                    }
                    $children[] = $data;
                    unset($otherData[$key]);        //符合条件的删除，减少下一次的循环
                }
            }
            if($node['children']){      //如果有子节点
                //递归调用
                $childrens = $this->add_other_info($node['children'],$otherData,$checkFiled,$icon,$attributes);
                //合并数据
                if(!empty($children)){
                    $node['children'] = array_merge($children,$childrens);
                }else{
                    $node['children'] = $childrens;
                }
            }else{              //没有子节点 删除直接添加人员
                if(!empty($children)){
                    $node['children'] = $children;
                }
            }
        }
        return  $easyuiTree;
    }
    /**
     * 写日志
     * @param  string $action 操作事件 详细内容
     * @return viod
     */
    public function write_log($action)
    {
        $data['dte'] = date('Y-m-d H:i:s');
        $data['name'] = u2g(session('user'));
        $module = !$this->logContent ? '未知模块' : $this->logContent;
        $data['module'] = u2g($module);
        $ip = get_client_ip();
        $data['ip'] = $ip;
        $data['cmt'] = u2g($action);
        $db = D('Enforce\SysLog');
        $db->add($data);
    }
    /**
     * where条件拼接
     * @param  array $data  拼接数组
     * @param  string $field 字段
     * @return array        TP where
     */
    public function where_key_or($data,$field)
    {
        $where = array();
        $count = count($data);
        if($count == 0){
            $where[] = $field.'='.'""';
            return $where;
        }
        if($count == 1){
            $where[] = $field.'='."'".$data[0]."'";
            return $where;
        }
        foreach ($data as &$value) {
            $value = $field.'='."'".$value."'";
        }
        $where[] = implode(' OR ',$data);
        return $where;
    }
    /**
     * 根据数据生成excel保存到服务器 返回保存地址
     * @param  array $rows  数据
     * @param  string $sysContent 系统日志
     * @return string        文件地址
     */
    public function saveExcel($datas,$sysContent)
    {
        $dir = './Public/download';     //需要删除的目录
        if(!is_dir($dir))   mkdir($dir);
        $this->del_dir($dir);

        if(!I('export'))  return false;

        $fields = I('fields');               //field name
        if($datas['total'] && $datas['total'] > 0){
            //表格查询处理
            if(array_key_exists('rows', $datas)){
                $rows = g2us($datas['rows']);
            }
            $columnTotal = count($fields);
            //生成需要设置的列
            $first = 'A';
            for ($i=0; $i < $columnTotal; $i++) {
                $abcArr[] = $first;
                $first++;
            }
            //导出Excel表格
            Vendor('PHPExcel.PHPExcel');
            Vendor('PHPExcel.PHPExcel.Writer.Excel2007');
            /* 实例化类 */
            $objPHPExcel = new \PHPExcel();
            /* 设置输出的excel文件为2007兼容格式 */
            $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);
            /* 设置当前的sheet */
            $objPHPExcel->setActiveSheetIndex(0);
            $objActSheet = $objPHPExcel->getActiveSheet();
            /*设置宽度*/
            foreach ($abcArr as $abc) {
                $objPHPExcel->getActiveSheet()->getColumnDimension($abc)->setWidth(15);
            }
            /* sheet标题 */
            $sheetTitle = 'title1';
            $objActSheet->setTitle($sheetTitle);
            $excelFileName = date('YmdHis').rand(10,99);
            //第一行字体及颜色
            $objStyle1 = $objActSheet->getStyle('1');
            $objFont1 = $objStyle1->getFont();
            $objFont1->setName('黑体');
            $objFont1->setSize(12);
            $col = $fields;
            $cols = array_values($col);
            $colks = array_keys($col);
            //设置投行标题
            foreach ($abcArr as $key => $abc) {
                $objActSheet->setCellValue($abc.'1',$cols[$key]);
                $cola[$abc] = $colks[$key];
            }
            //填充数据
            $data = $rows;
            $i = 2;
            foreach($data as $value)
            {
                /* excel文件内容 */
                $j = 'A';
                foreach ($value as $key=>$val) {
                    $objActSheet->setCellValue($j.$i,$value[$cola[$j]]);
                    $j++;
                }
                $i++;
            }
            $id = session('id');
            $dateDir = './Public/download/'.date('Ymd');
            if(!is_dir($dateDir))   mkdir($dateDir);
            $url = $dateDir."/repWork_".$excelFileName."{$id}.xlsx";
            try
            {
                $objWriter->save($url);
                $url = substr($url, 1);
                $host = $this->get_local_ip().$_SERVER['SERVER_PORT'];
                        //gethostbyname('');
                $res = __ROOT__.$url;
            }
            catch(Exception $e)
            {
                $res = false;
            }
            if($res){
                $result['status'] = true;
                $result['message'] = '成功。';
                $result['fileUrl'] = $res;
                $this->write_log('导出数据',$this->logContent);
                $this->ajaxReturn($result);
            }else{
                $result['status'] = false;
                $result['message'] = '可能原因：服务器权限不足。';
                $result['fileUrl'] = $res;
                $this->ajaxReturn($result);
            }
        }else{
            $result['status'] = false;
            $result['message'] = '获取数据失败，或者没有数据。';
            $result['fileUrl'] = '';
            $this->ajaxReturn($result);
        }
    }
    /**
     * 删除目录
     * @param  string $dir 目标目录
     * @return void
     */
    public function del_dir($dir)
    {
        $date = date('Ymd');
        if (is_dir($dir)) {
            if ($dh = opendir($dir)) {
                while (($file = readdir($dh)) !== false) {
                    if($file == '..' || $file == '.') continue;
                    if($date > date('Ymd',strtotime($file))){
                        if(is_dir($dir.'/'.$file)){
                            $cdir = $dir.'/'.$file;
                            $this->del_dir($cdir);
                            rmdir($cdir);
                        }else{
                            unlink($dir.'/'.$file);
                        }
                    }
                }
                closedir($dh);
            }
        }
    }
    //获取本机ip地址
    public function get_local_ip()
    {
        return DIRECTORY_SEPARATOR === '/' ? $_SERVER['SERVER_ADDR'] : gethostbyname(gethostname());
    }
}