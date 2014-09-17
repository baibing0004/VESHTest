var permissionManage = {
    powerQuery: VJ.query({
        node: $("#power-permissionManage tbody"),
        url: "../../../modulev2/power/getpowers.xjson",
        getRow: function (node, i, v) {
            var newtr = VJ.newEl('tr', '', '');
            var inntr = null;
            //是否可以展开 当冻结时不能展开
            var canExpend = v.hasChildren && v.Validity != 4;
            //是否已经展开 当冻结时需要关闭子权限列表
            var hasExpend = false;
            newtr.append(VJ.newEl('td', 'g_bl', ' ').append((v.hasChildren ? VJ.newEl('span', 'p_drop', ' ').click(function () {
                if ($(this).hasClass('p_extend')) {
                    //合上
                    $(this).removeClass('p_extend').addClass('p_drop');
                    inntr.remove();
                    hasExpend = false;
                    return;
                }
                //展开
                //当权限冻结时 不能打开下级子权限
                if (!canExpend) return;
                $(this).removeClass('p_drop').addClass('p_extend');
                inntr = VJ.newEl('tr', '', '').append(
					VJ.newEl('td', '', '').attr('colSpan', '3').append(
						VJ.newEl('table', 'p_intable', '').attr("cellspacing", 0).attr("cellpadding", 0).append(VJ.newEl('tbody', '', ''))
					)
				);
                inntr.insertAfter(newtr);
                var _this = $(this);
                //这里开始新建2级的权限列表
                var sonpowerQuery = VJ.query({
                    node: $(inntr.find('tbody').get(0)),
                    url: "../../../modulev2/power/getpowers.xjson",
                    getRow: function (_node, _i, _v) {
                        var _newtr = VJ.newEl('tr', 'g_tg', '');
                        _newtr.append(VJ.newEl('td', 'g_bl', '').text(_v.text));
                        var _opetd = VJ.newEl('td', '', '');
                        //修改
                        _opetd.append(VJ.newEl('span', 'p_mod', '').click(function () {
                            VJ.callCommand('power.edit', [{
                                ID: _v.id,
                                Name: _v.text,
                                operate: 'editSonPower',
                                Title: _v.text + ' - 修改子权限',
                                COMID: permissionManage.COMID,
                                callback: function () {
                                    sonpowerQuery.bind({
                                        ID: v.id,
                                        COMID: permissionManage.COMID
                                    });
                                }
                            }]);
                        }));
                        //删除
                        _opetd.append(VJ.newEl('span', 'p_del', '').click(function () {
                            Global.confirm('确定子权限删除', '您好，确定删除\'' + _v.text + '\'子权限吗?这将导致此公司所有角色都没有该权限!', function () {
                                //要想二次使用只能关闭然后重开了
                                window.setTimeout(function () {
                                    Global.confirm('再次确定子权限删除', '您好，请再次确定删除\'' + _v.text + '\'子权限,这将导致此公司所有角色都没有该权限!', function () {
                                        VJ.ajax({
                                            url: "../../../modulev2/power/delpower.xjson",
                                            data: {
                                                ID: _v.id,
                                                COMID: permissionManage.COMID
                                            },
                                            bindData: function (data) {
                                                Global.alert('子权限删除', '\'' + _v.text + '\'子权限已经删除!');
                                                sonpowerQuery.bind({
                                                    ID: v.id,
                                                    COMID: permissionManage.COMID
                                                });
                                            }
                                        });
                                    });
                                }, 50);
                            });
                        }));
                        //冻结解冻
                        _opetd.append(VJ.newEl('span', (_v.Validity == 4 ? "p_lock" : "p_unlock"), '').click(function () {
                            var _this = $(this);
                            VJ.ajax({
                                url: '../../../modulev2/power/lockpower.xjson',
                                data: {
                                    ID: _v.id,
                                    COMID: permissionManage.COMID,
                                    DelFlag: (_this.hasClass('p_lock') ? 0 : 2)
                                },
                                bindData: function (data) {
                                    if (_this.hasClass('p_lock')) {
                                        _this.removeClass('p_lock').addClass('p_unlock');
                                    } else {
                                        _this.removeClass('p_unlock').addClass('p_lock');
                                    }
                                }
                            });
                        }));
                        _newtr.append(_opetd);
                        return _newtr;
                    }, afterGetRow: function (node, data) {
                        hasExpend = true;
                    }, getNoDataRow: function (node) {
                        inntr.remove();
                        _this.remove();
                    }
                });
                sonpowerQuery.bind({
                    ID: v.id,
                    COMID: permissionManage.COMID
                });
            }) : '')).append(v.text));
            var opetd = VJ.newEl('td');
            //修改
            opetd.append(VJ.newEl('span', 'p_mod', '').click(function () {
                VJ.callCommand('power.edit', [{
                    ID: v.id,
                    Name: v.text,
                    operate: 'editModulePower',
                    Title: v.text + ' - 修改权限',
                    COMID: permissionManage.COMID
                }]);
            }));
            //删除
            opetd.append(VJ.newEl('span', 'p_del', '').click(function () {
                Global.confirm('确定权限删除', '您好，确定删除\'' + v.text + '\'权限吗?这将导致此公司所有角色都没有该权限及其下级权限!', function () {
                    //要想二次使用只能关闭然后重开了
                    window.setTimeout(function () {
                        Global.confirm('再次确定权限删除', '您好，请再次确定删除\'' + v.text + '\'权限,这将导致此公司所有角色都没有该权限及其下级权限!', function () {
                            VJ.ajax({
                                url: "../../../modulev2/power/delpower.xjson",
                                data: {
                                    ID: v.id,
                                    COMID: permissionManage.COMID
                                },
                                bindData: function (data) {
                                    Global.alert('权限删除', '\'' + v.text + '\'权限已经删除!');
                                    permissionManage.powerQuery.bind({
                                        ID: permissionManage.curModule.ID,
                                        COMID: permissionManage.COMID
                                    });
                                }
                            });
                        });
                    }, 50);
                });
            }));
            //冻结				
            opetd.append(VJ.newEl('span', (v.Validity == 4 ? "p_lock" : "p_unlock"), '').click(function () {
                var _this = $(this);
                VJ.ajax({
                    url: '../../../modulev2/power/lockpower.xjson',
                    data: {
                        ID: v.id,
                        COMID: permissionManage.COMID,
                        DelFlag: (_this.hasClass('p_lock') ? 0 : 2)
                    },
                    bindData: function (data) {
                        if (_this.hasClass('p_lock')) {
                            _this.removeClass('p_lock').addClass('p_unlock');
                            canExpend = true;
                        } else {
                            _this.removeClass('p_unlock').addClass('p_lock');
                            canExpend = false;
                            //权限冻结 导致子权限列表关闭
                            if (hasExpend) {
                                $(newtr.find('span.p_extend').get(0)).trigger('click');
                            }
                        }
                    }
                });
            }));
            newtr.append(opetd);
            //添加子权限
            newtr.append(VJ.newEl('td').append(VJ.newEl('span', 'p_add', '').click(function () {
                VJ.callCommand('power.add', [{
                    ParentID: v.id,
                    RelType: 17,
                    operate: 'addSonPower',
                    Title: v.text + ' - 新建子权限',
                    COMID: permissionManage.COMID,
                    callback: function () {
                        if (newtr.find('td:first span').length == 0) {
                            permissionManage.powerQuery.bind({
                                ID: permissionManage.curModule.ID,
                                COMID: permissionManage.COMID
                            });
                        } else {
                            //用开关动作刷新子列表
                            newtr.find('span.p_extend').trigger('click').trigger('click');
                            newtr.find('span.p_drop').trigger('click');
                        }
                    }
                }]);
            })));
            return newtr;
        },
        getNoDataRow: function (node) {
            var newtr = VJ.newEl('tr', '', '');
            newtr.append(VJ.newEl('td', '', '对不起，该模块下没有权限!').attr('colSpan', '3'));
            return newtr;
        }
    }),
    curModule: null,
    setCurModule: function (data) {
        VJ.callCommand('desc.setCurModule', [data]);
        VJ.callCommand('scorp.setCurModule', [data]);
        permissionManage.curModule = data;
    },
    //初始化模块树
    InitModuleTree: function () {
        VJ.tree($("#catalog-tree-ul"), {
            url: "../../../modulev2/power/getModules.xjson",
            //用于获得Ajax数据 
            getAjaxData: function (root1) {
                return {
                    ParentID: (root1 == 'source' ? '' : root1),
                    COMID: permissionManage.COMID
                };
            },
            //
            //用于获得生成节点的原型,默认已经实现。可以覆盖
            createLi: function (settings, data) {
                return $("<li/>").attr("id", data.id || "").attr("text", data.text).html("<span>" + VJ.getValue(data.text, "[未指定名称]") + "</span>");
            },
            contextMenu: {
                //绑定右键，默认已经实现是后面函数的调用者
                //bindCallback: function(settings,node,container),
                //根据add,append,edit,del设定是否显示 用于判断权限
                checkVisible: function (operate) { return true; },
                //可以设置为'组织机构'等
                menuItemName: '模块',
                //新建菜单UL 默认实现 调用checkVisible判断权限
                //createMenu:function(settings){}
                //这里返回一个JSON对象作为treeview edit操作的args参数以处理该修改是否通过，及其校验工作，默认修改都通过。
                editNode: function (settings, node, editCallBack) {
                    return {
                        maxLength: 32,
                        validate: {
                            regex: /[\|*|~|!|@|#|\|$|%|\|\^|&|\*|]{1,}/g
				            , tip: "名称不能为空且长度不超过32个字符"
				            , errorClass: "error"
                        },
                        callback: function (lable, txtBox, oldValue) {
                            //success
                            VJ.ajax({
                                url: "../../../modulev2/power/updateModuleName.xjson",
                                data: {
                                    ID: node.attr('id'),
                                    Name: $.trim(txtBox.val()),
                                    COMID: permissionManage.COMID
                                },
                                bindData: function (data) {
                                    editCallBack(lable, txtBox, oldValue);
                                }
                            });
                            return;
                        }
                    };
                },
                //这里返回一个JSON对象作为treeview append操作的edit args参数以处理该修改是否通过，及其校验工作，默认修改都通过。特别的当这里和AddNode使用alert时，容易出现失去焦点事件的2次触发，导致本方法被两次调用
                appendNode: function (settings, node, appendCallBack) {
                    return {
                        maxLength: 32,
                        validate: {
                            regex: /[\|*|~|!|@|#|\|$|%|\|\^|&|\*|]{1,}/g
				            , tip: "名称不能为空且长度不超过32个字符"
				            , errorClass: "error"
                        },
                        callback: function (lable, txtBox, oldValue) {
                            var name = $.trim(txtBox.val());
                            //success
                            VJ.ajax({
                                url: "../../../modulev2/power/addModule.xjson",
                                data: {
                                    ParentID: node.attr('id'),
                                    Name: VJ.userAgent.ie6 ? (name.substring(0, name.length - 1)) : name,
                                    COMID: permissionManage.COMID
                                },
                                bindData: function (data) {
                                    var id = data[0].ID;
                                    lable.parent().attr('text', VJ.userAgent.ie6 ? (name.substring(0, name.length - 1)) : name);
                                    appendCallBack(lable, txtBox, oldValue, id);
                                }
                            });
                            //lable.trigger('click');
                            return;
                        }
                    };
                },
                //这里返回一个JSON对象作为treeview edit操作的args参数以处理该修改是否通过，及其校验工作，默认修改都通过。这里默认调用上面的函数appendNode
                addNode: function (settings, node, addCallBack) {
                    return settings.contextMenu.appendNode(settings, node, addCallBack);
                },
                //这里返回一个JSON对象作为treeview del操作的args参数以处理该修改是否通过，及其校验工作，默认修改都通过。
                delNode: function (settings, node) {
                    return {
                        callback: function (removeCallBack) {
                            VJ.ajax({
                                url: "../../../modulev2/power/delModule.xjson",
                                data: {
                                    ID: node.attr('id'),
                                    COMID: permissionManage.COMID
                                },
                                bindData: function (data) {
                                    Global.alert('提示', '"' + node.attr('text') + '"模块及其以下定义的权限已经删除');
                                    try {
                                        //2011 3 19 白冰发现无法处理的removeCallBack，并屏蔽
                                        removeCallBack();
                                    } catch (e) { }
                                }
                            });
                        }
                    };
                },
                //可以直接获得li对象
                click: function (settings, node) {
                    var id = node.attr('id');
                    VJ.ajax({
                        url: "../../../modulev2/power/getModule.xjson",
                        data: {
                            ID: id,
                            COMID: permissionManage.COMID
                        },
                        bindData: function (data) {
                            permissionManage.setCurModule(data[0]);
                            $('#txtModuleName').text(permissionManage.curModule.Name);
                            $('#txtModuleDes').text(permissionManage.curModule.Extend1);
                        }
                    });
                    permissionManage.powerQuery.bind({
                        ID: id,
                        COMID: permissionManage.COMID
                    });
                }
            }
        });
        $('#catalog-tree-ul span').trigger('click');
    },
    /*
    *	part的本来意图是引入一个控件实现按钮及其操作，
    但是因为是控件与主页面的交互应主要通过接口互相传递，而不是通过公共变量方式。
    控件方式引入必须要放置在一个指定的位置中。而且其界面上的影响有待考察。
    */
    InitModifyDesc: function () {
        VJ.part('./Desc.htm', $('#divModifyContainer'));
        VJ.callCommand('desc.init', [function (text) {
            permissionManage.curModule.Extend1 = text;
            $('#txtModuleDes').text(text);
        } ]);
    },
    InitModifyScorp: function () {
        VJ.part('./scorp.htm', $('#divScorpContainer'));
        VJ.callCommand('scorp.init', [function (text) {
            permissionManage.curModule.Extend2 = text;
        } ]);
    },
    InitPower: function () {
        VJ.part('./power.htm');
        VJ.callCommand('power.init', [function (ids, data) {
            //这里处理所有调用power的返回
            switch (data.operate) {
                case 'addModulePower':
                case 'editModulePower':
                    permissionManage.powerQuery.bind({
                        ID: permissionManage.curModule.ID,
                        COMID: permissionManage.COMID
                    });
                    break;
                case 'addSonPower':
                case 'editSonPower':
                    if (VJ.isValid(data.callback))
                    { data.callback(); }
                    break;
                default:
                    VJ.showException('InitPower方法:' + data.operate + '未捕获!');
                    break;
            }

        } ]);
        $('#bunAddPower').click(function () {
            VJ.callCommand('power.add', [{
                ParentID: permissionManage.curModule.ID,
                RelType: 18,
                operate: 'addModulePower',
                Title: permissionManage.curModule.Name + ' - 新建一级权限',
                COMID: permissionManage.COMID
            }]);
        })
    },
    init: function () {
        if (Global.out('101111_1_4_saas角色权限配置', false)) {
            $('.g_main_body').empty();
        } else $('.g_main_body').show();
        if (!VJ.isValid(permissionManage.COMID)) {
            Global.alert('权限定义', '你好，参数错误，调用时请声明客户ID', function () {
                $(document.body).empty();
                window.close();
            });
        }
        //初始化模块树
        permissionManage.InitModuleTree();
        //初始化描述修改框
        permissionManage.InitModifyDesc();
        //初始化数据范围修改框   
        permissionManage.InitModifyScorp();
        //初始化有关权限定义的页面
        permissionManage.InitPower();
    }
};
$(document).ready(function () {
    permissionManage.init();
});