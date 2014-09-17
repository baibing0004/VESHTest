<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderScript.ascx.cs"
    Inherits="VESHTest.V.View.Theme.admin.HeaderScript"%>
<link type="text/css" rel="stylesheet" href="../../Styles/themes/default/easyui.css"
    media="screen" />
<link href="../../Styles/themes/icon.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/VJ.reference.js"></script>
<script type="text/javascript" src="../../Scripts/permission.js"></script>
<link type="text/css" rel="stylesheet" href="../../Styles/common.css" media="screen" />
<link type="text/css" rel="stylesheet" href="../../Styles/Global.css" media="screen" />
<%if (this.SessionData.IsLogin) {%>
<script type="text/javascript">
    User = <%=(this.User)%>;
</script>
<%} %>
