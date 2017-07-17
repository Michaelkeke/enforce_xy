// 创建时间对象
var judgeTime = new Time(new Date(), 0);
var module = {};
module.params = {};
//导出
module.exports = function() {
    var exportInfo = {};
    exportInfo.datagrid = '#datagrid';
    exportInfo.params = module.params;
    exportInfo.delFields = ['id'];
    app.exportExcel(exportInfo);
};
$(function() {
    var time = new Date();
    $('#etime').datetimebox({ value: new Time(time, 0).init() });
    $('#btime').datetimebox({ value: new Time(time, 7).init() });
    $('#datagrid').datagrid({
        url: app.url('Log/sys_log_list'),
        title: '系统日志',
        fitColumns: true,
        fit: true,
        striped: true,
        rownumbers: true,
        pagination: true,
        pageSize: 15,
        pageNumber: 1,
        pageList: [2, 5, 10, 15, 20, 25, 30, 40, 50],
        pagePosition: 'bottom',
        toolbar: '#toolbar',
        columns: [
            [
                { field: 'id', title: 'id', checkbox: true },
                { field: 'name', title: '用户', width: 200, align: 'center' },
                { field: 'cmt', title: '操作', width: 200, align: 'center' },
                { field: 'ip', title: 'IP地址', width: 200, align: 'center' },
                { field: 'module', title: '模块', width: 200, align: 'center' },
                { field: 'dte', title: '操作时间', width: 200, align: 'center' }
            ]
        ],
        onLoadSuccess: function(r) {
            if (r.total == 0) {
                $('div.datagrid-view').find('div.datagrid-view1').hide();
                $('div.datagrid-view2').css('left', '0');
                $('div.datagrid-view2').find('div.datagrid-body').html('没有相关记录，请重新搜索！').css({ 'color': '#F00', 'text-align': 'center', 'font-size': '16px' });
            } else if (r.error) {
                $.messager.alert('操作提示', r.error, 'info');
            }
        }
    });
    $('#searching').click(function() {
        var data = app.serializeJson('#form');
        if(!judgeTime.judge(data.btime, data.etime)){
            return false;
        }
        module.params = data;
        $('#datagrid').datagrid({
            queryParams: data
        });
    });
});