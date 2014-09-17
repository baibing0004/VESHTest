<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="permissionManage.aspx.cs" Inherits="VESHTest.Module.admin.permissionManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<div class="g_content">
            <div class="g_catalog">
                <p>
                    功能模块列表</p>
                <!--树形插件-开始-->
                <div class="g_catalog_box">
                    <ul id="catalog-tree-ul">
                    </ul>
                </div>
                <!--树形插件-结束-->
            </div>
            <div class="g_list">
                <div class="g_class_title">
                    当前功能模块:<span id="txtModuleName">名称</span></div>
                <div class="g_action">
                    <span id="txtModuleDes">描述</span>
                    <div>
                        <div id="divScorpContainer">
                        </div>
                        <div id="divModifyContainer">
                        </div>
                        <div class="">
                            <span id="bunAddPower" class="g_button">新建一级权限</span>
                        </div>
                    </div>
                </div>
                <div class="g_table_container">
                    <div class="p_action">
                        已有权限列表:</div>
                    <!--Table-开始-->
                    <table id="power-list" class="g_table" cellspacing="0" cellpadding="0">
                        <thead>
                            <tr>
                                <td class="g_hl">
                                    名称
                                </td>
                                <td>
                                    操作
                                </td>
                                <td>
                                    新建子权限
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <!--Table-结束-->
                    <!--分页-开始-->
                    <div id="course-list-pager" class="g_xpager">
                    </div>
                    <!--分页-结束-->
                </div>
            </div>
        </div>
    <form id="form1" runat="server">
    </form>
</body>
<script src="../../Scripts/module/admin/permissionManage.js" type="text/javascript"></script>
</html>
