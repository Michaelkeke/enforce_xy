<?php
/************************************
 *设备控制器 web  空间站 工作站
 *************************************/
namespace Home\Controller;

class WorkStationController extends CommonController
{
    //表的表名-自增主键
    protected $models = ['wsbase'=>'Enforce\WsBase'];           //执法仪
    protected $actions = ['employee'=>'Employee'];
    protected $views = ['ws_base'=>'wsBase'];
    protected $logContent = '设备管理/工作站管理';
    public function ws_base_show()
    {
        $this->display($this->views['ws_base']);
    }
    //工作站
    public function ws_base_list()
    {
        $request['dz'] = I('dz');           //地址
        $request['hzr'] = I('hzr');        //负责人
        $request['zxzt'] = I('zxzt');        //在线状态,0:不在线，1：在线
        $request['qyzt'] = I('qyzt');
        $page = I('page');
        $rows = I('rows');
        $db =  D($this->models['wsbase']);
        //支持模糊搜索
        foreach ($request as $key => $value) {
            if($value != '' && $key!='zxzt' && $key!='qyzt'){
                $where[$key] = array('like','%'.$value.'%');
            }
        }
        if($request['zxzt'] != ''){
            $where['zxzt'] = I('zxzt');
        }
        if($request['qyzt'] != ''){
            $where['qyzt'] = I('qyzt');
        }
        $data = $db->getTableList(u2gs($where),$page,$rows);
        foreach ($data['rows'] as &$value) {
            $value['zxztname'] = $value['zxzt'] == 0 ? u2g('离线') : u2g('在线');
            $value['qyztname'] = $value['qyzt'] == 0 ? u2g('停用') : u2g('启用');
        }
        $this->saveExcel($data); //监测是否为导出
        $this->ajaxReturn(g2us($data));
    }
    //工作站
    public function ws_base_add()
    {
        $request['qyzt'] = I('qyzt');     //启用状态 0:未启用，1：启用
        //$request['gzzbh']    = I('gzzbh');        //    工作站编号  必填
        $request['gzz_ip']    = I('gzz_ip');        //工作站IP     必填
        $request['dz']    = I('dz'); //地址
        $request['hzr']    = I('hzr');        //负责人
        $request['dh']    = I('dh');        //负责人电话
        $db =  D($this->models['wsbase']);
        $result = $db->getTableAdd(u2gs($request));
        $this->write_log('添加'.$request['gzzbh'].':'.$request['dz']);
        $this->ajaxReturn($result);
    }
    //工作站
    public function ws_base_edit()
    {
        $request['id'] = I('id');
        $request['qyzt'] = I('qyzt');     //启用状态 0:未启用，1：启用
        //$request['gzzbh']    = I('gzzbh');        //    工作站编号  必填
        $request['gzz_ip']    = I('gzz_ip');        //工作站IP     必填
        $request['dz']    = I('dz');            //地址
        $request['hzr']    = I('hzr');        //负责人
        $request['dh']    = I('dh');        //负责人电话
        $db =  D($this->models['wsbase']);
        $where['id'] = $request['id'];
        unset($request['id']);
        $result = $db->getTableEdit($where,u2gs($request));
        $this->ajaxReturn($result);
    }
    //工作站
    public function ws_base_remove()
    {
        $cpxh = I('id');
        $request['id'] = array('in',u2g($cpxh));
        $db =  D($this->models['wsbase']);
        $result = $db->getTableDel($request);
        $this->write_log('删除工作站');
        $this->ajaxReturn($result);
    }
    //工作站状态统计
    public function ws_status_statistics()
    {
        $db =  D($this->models['wsbase']);
        $data = $db->field('count(id) as num,zxzt')->group('zxzt');
        $this->ajaxReturn($data);
    }
    //工作站在线，离线统计
    public function ws_sat()
    {
        $db =  D($this->models['wsbase']);
        $result = $db->field('count(id) as value,zxzt as name')->group('zxzt')->select();
        $initData = array(1=>array('value'=>0,'name'=>'在线'),0=>array('value'=>0,'name'=>'离线'));
        foreach ($result as $value) {
            $initData[$value['name']]['value']  = $value['value'];
        }
        $this->ajaxReturn(array_values($initData));
    }
}