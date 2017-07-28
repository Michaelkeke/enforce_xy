<?php
/************************************
 *设备控制器 web  空间站 执法记录仪
 *************************************/
namespace Home\Controller;

class DevController extends CommonController
{
    //表的表名-自增主键
    protected $models = ['pebase'=>'Enforce\PeBase',            //执法仪
                         'pe_video_list'=>'Enforce\PeVideoList',
                         'employee'=>'Enforce\Employee'];          //记录信息
    protected $actions = ['employee'=>'Employee',
                          'area'=>'Area'];
    protected $logContent = '设备管理/执法仪管理';
    //执法仪配置
    public function pe_base_show()
    {
        $action = A($this->actions['area']);
        $areaTree = $action->tree_list();
        $rootId = !empty($areaTree) ? $areaTree[0]['id'] : 0;
        $rootName = !empty($areaTree) ? g2u($areaTree[0]['text']) : '系统根部门';
        $this->assign('areaid',$rootId);
        $this->assign('areaname',$rootName);
        //$this->assignInfo();
        $this->display('peBase');
    }
    //执法仪状态
    public function pe_show_status()
    {
        $action = A($this->actions['area']);
        $areaTree = $action->tree_list();
        $rootId = !empty($areaTree) ? $areaTree[0]['id'] : 0;
        $rootName = !empty($areaTree) ? g2u($areaTree[0]['text']) : '系统根部门';
        $this->assign('areaid',$rootId);
        $this->assign('areaname',$rootName);
        //$this->assignInfo();
        $this->display('peShowStatus');
    }
    //执法记录仪
    public function pe_base_list()
    {
        $request['product'] = I('product');     //生产厂家
        $request['cpxh']    = I('cpxh');        //产品序号
        $request['jyxm']    = I('jyxm');        //警员姓名
        $request['areaid']  = I('areaid','');      //部门ID
        $request['status']  = I('status','');   //设备状态
        $request['count'] = I('count',false);      //是否为统计
        $page = I('page');
        $rows = I('rows');
        $db =  D($this->models['pebase']);
        //获取能显示的执法仪信息
        $action = A($this->actions['employee']);
        /*$emps = $action->get_manger_emp($request['areaid']);
        $allowCodes = array_keys($emps);
        if(!empty($allowCodes)){
            $where['jybh'] = array('in',$allowCodes);
        }else{
            $result['total'] = 0;
            $result['rows'] = array();
            $this->ajaxReturn($result);
        }*/
        $sql = $action->get_manger_sql($request['areaid']);
        $where[] = $sql;
        if(I('jybh')) $where['jybh'] = I('jybh');           //警员编号
        //支持模糊搜索
        foreach ($request as $key => $value) {
            if($value != '' && $key != 'status' && $key != 'areaid'){
                $where[$key] = array('like','%'.$value.'%');
            }
        }
        if($request['count']){
            $data = $db->field('count(cpxh) as num,status')->group('status');
            $res = array('disuse'=>0,'use'=>0,'active'=>0);
            foreach($data as $value){
                if($value['status'] == 0) $res['disuse'] = $value['num'];
                if($value['status'] == 1) $res['use'] = $value['num'];
                if($value['status'] == 2) $res['active'] = $value['num'];
            }
            $this->ajaxReturn($res);
        }
        if($request['status'] != '') $where['status'] = $request['status'];
        $data = $db->getTableList(u2gs($where),$page,$rows);
        //是否需要执法记录仪状态
        /*if($request['status']){
            $cpxhs = array();
            foreach ($data['rows'] as $value) {
                $cpxhs[] = $value['cpxh'];
            }
            $res = $this->get_pe_base_status($cpxhs);
            $data['active'] = 0;    //活跃数量
            $data['use'] = 0;       //使用率低
            $data['disuse'] = 0;    //停用
            //$this->ajaxReturn($res);
            foreach ($data['rows'] as &$value) {
                $value['times'] = $res[$value['cpxh']];     //七天内的使用次数
                //0:停用 1:使用率低 2:活跃
                if($res[$value['cpxh']] > 0){
                    if($res[$value['cpxh']] > 4){
                        $data['active'] = $data['active']+1;
                        $value['status'] = 2;
                    }else{
                        $data['use'] = $data['use']+1;
                        $value['status'] = 1;
                    }
                }else{
                    $data['disuse'] = $data['disuse']+1;
                    $value['status'] = 0;
                }
            }
        }*/
        $this->saveExcel($data); //监测是否为导出
        $this->ajaxReturn(g2us($data));
    }
    //执法记录仪
    public function pe_base_add()
    {
        $request['product'] = I('product');     //生产厂家
        $request['cpxh']    = I('cpxh');        //产品序号  必填
        $request['jyxm']    = I('jyxm');        //警员姓名
        $request['standard']    = I('standard'); //设备规格
        $request['jybh']    = I('jybh');        //警员编号
        $db =  D($this->models['pebase']);
        $check = $db->where('cpxh='.u2g($request['cpxh']))->find();
        if($check){
            $result['message'] = '添加失败，该产品已经添加过，无法添加。';
            $this->ajaxReturn($result);
        }
        $result = $db->getTableAdd(u2gs($request));
        $this->write_log('添加'.$request['cpxh'].':'.$request['jyxm']);
        $this->ajaxReturn($result);
    }
    //执法记录仪
    public function pe_base_edit()
    {
        $request['product'] = I('product');       //生产厂家
        $where['cpxh']    = I('cpxh');            //产品序号  不可更改
        $request['jyxm']    = I('jyxm');          //警员姓名
        $request['standard']    = I('standard');  //设备规格
        $request['jybh']    = I('jybh');          //警员编号
        $db =  D($this->models['pebase']);
        $result = $db->getTableEdit($where,u2gs($request));
        $this->ajaxReturn($result);
    }
    //执法记录仪
    public function pe_base_remove()
    {
        $cpxh = I('cpxh');                  //产品序号
        $request['cpxh'] = array('in',u2g($cpxh));
        $db =  D($this->models['pebase']);
        $result = $db->getTableDel($request);
        $this->write_log('删除执法记录仪');
        $this->ajaxReturn($result);
    }
    //传值  添加执法仪时能够选择的警员
    /*public function assignInfo()
    {
        $action = A($this->actions['employee']);
        $emps = $action->get_manger_emp();
        $this->assign('emps',g2us($emps));
    }*/
    /**
     * 获取执法记录仪使用状态  七天内统计
     * @param  array $cpxhs 执法记录仪序号
     * @return int       0:停用 1:使用率底 2:活跃
     */
    public function get_pe_base_status($cpxhs)
    {
        //now 2017-6-8    2017-6-9 00:00:00 2017-6-2 00:00:00
        $nextday = date('Y-m-d',strtotime('+1 day',time()));
        $weekago = date('Y-m-d',strtotime('-6 day',time()));
        $where['start_time'] = array(array('EGT',$weekago),array('LT',$nextday));
        $days = $this->get_twoMonthsDates($weekago,$nextday,'Y-m-d H:i:s');
        $mediadb = D($this->models['pe_video_list']);
        $infos = $mediadb->field("cpxh,DATE_FORMAT(start_time,'%Y-%m-%d') as date,count(wjbh) as num")
                        ->where($where)->group('cpxh,date')->select();
        $initInfo = array();
        $result   = array();
        foreach ($cpxhs as $value) {        //['cpxh'=>['day1','day2','day3']]
            $initInfo[$value] = [];
            $result[$value] = 0;
        }
        foreach ($infos as $info) {
            if($info['num'] > 0){
                $initInfo[$info['cpxh']][] = $info['date'];
            }
        }
        foreach ($initInfo as $key => $days) {
            $total = count($days);
            //大于4天活跃 大于 0 天 使用率低 0 天 停用
            $result[$key] = $total;
        }
        return  $result;
    }
}