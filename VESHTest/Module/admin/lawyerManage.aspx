<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lawyerManage.aspx.cs" Inherits="VESHTest.Module.admin.lawyerManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <table id="tabDG">
        <thead>
            <tr>
                <th data-options="field:'ID'">
                    ID
                </th>
                <th data-options="field:'LName'">
                    姓名
                </th>
                <th data-options="field:'Mail'">
                    邮箱
                </th>
                <th data-options="field:'Phone'">
                    电话
                </th>
                <th data-options="field:'QQ'">
                    QQ
                </th>
                <th data-options="field:'IDCard'">
                    身份证
                </th>
                <th data-options="field:'LAddress'">
                    联系地址
                </th>
                <th data-options="field:'bankAddress'">
                    开户行
                </th>
                <th data-options="field:'Name'">
                    律所
                </th>
                <th data-options="field:'lawyerpractice'">
                    律师证号
                </th>
            </tr>
        </thead>
    </table>
    <form id="form1" runat="server">
    </form>
</body>
<script type="text/javascript" src="../../Scripts/module/admin/lawyerManage.js"></script>
</html>
