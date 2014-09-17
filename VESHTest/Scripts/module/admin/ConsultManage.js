VJ.isDebug = true;
var list = {
    param: null,
    list: function () {
        var _this = this;
        (function () {
            //表格datagrid
            VJ.include('../../Scripts/city2.js');
            _this.dg = VJ.datagrid({
                node: $('#tabDG'),
                url: "../../Module/admin/GetConsults.tjson?_n=lvde",
                idField: 'ID',
                singleSelect: true,
                toolbar:
                [
                    {
                        id: 'btnAdd',
                        text: '暂不处理',
                        iconCls: 'icon-add',
                        handler: function () {
                            var selected = _this.dg.node.datagrid('getSelected');
                            if (selected) {
                                alert(selected.ID);
                            }
                        }
                    },
                    '-',
                    {
                        id: 'btnEdit',
                        text: '申请立案',
                        iconCls: 'icon-cut',
                        handler: function () {
                            var selected = _this.dg.node.datagrid('getSelected');
                            if (selected) {
                                alert(selected.ID);
                            }
                        }
                    }
                ],
                frozenColumns: [[
                    { field: 'ID', checkbox: true }
			    ]],
                columns: [[
                 { field: 'Name', title: '咨询人', width: 60, align: 'center', editor: "text" },
                 { field: 'Mail', title: '邮箱', width: 60, align: 'center', editor: "text" },
                 { field: 'Phone', title: '电话', width: 60, align: 'center', editor: "text", formatter1: function (value, row, index) { return '<img class="IconPath" src="../../' + row.IconPath + '">' } },
                 { field: 'QQ', title: 'QQ', width: 60, align: 'center', editor: "text" },
                 { field: 'Question', title: '案件概述', width: 60, align: 'center', editor: "text" },
                 { field: 'Province', title: '省市', width: 60, align: 'center', editor: "text", formatter: function (value, row, index) { return city2[value].Name; } },
                 { field: 'AppliedStatus', title: '操作', width: 120, align: 'center', editor: "text",
                     formatter: function (value, row, index) {
                         switch (value + '') {
                             case '0':
                                 var span = VJ.newEl('div', '', '');
                                 span.append(VJ.newEl('span', 'badge badge-warning', '暂不处理').click(function () {
                                     alert(row.ID);
                                 }));
                                 span.append(VJ.newEl('span', 'badge badge-success', '申请立案').click(function () {
                                     alert(row.ID);
                                 }));
                                 return span.html();
                                 break;
                             case '1':
                                 return '<span style="float:left">已搁置处理</span>';
                                 break;
                             case '2':
                                 return '<span style="float:left">已申请立案</span>';
                                 break;
                             default:
                                 return "不明状态" + value;
                         }
                     }
                 }
               ]],
                pager: {
                    pageList: [10, 30]
                }
            });
        })();
        _this.Init = function () {
            if (Global.out('申请管理')) {
                $(document.body).empty();
            } else {
                _this.dg.bind({ AppliedStatus: 0 });
            }
        };
    },
    obj: null
};
$(function () {
    list.obj = new list.list();
    list.obj.Init();
});