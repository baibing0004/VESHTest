<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="minilogin.aspx.cs" Inherits="VESHTest.Module.login.minilogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <link href="../../Styles/login/login.css" rel="stylesheet" />
    <link href="../../Styles/login/style.css" rel="stylesheet" />
    <!--[if lt IE 9]>
      <script type="text/javascript" src="../../Scripts/html5shiv.js"></script>
      <script type="text/javascript" src="../../Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<style>
html {
    background:0;
    background-color:transparent;
    background-image:none;
    background-position-x:0px;
    background-position-y:50%;
    background-attachment:scroll;
    background-repeat:repeat;
}
</style>
<body>
    <div id="G-login" class="login login-modern">
		<form id="login" class="ui-form" method="post" action="" name="loginForm">
			<h2 id="G-login-title" class="ui-form-title ">登录律金</h2>
			<div id="G-errorBox" class="sl-error">
				<i title="出错" class="iconfont"></i>
				<span class="sl-error-text"></span>
			</div>
			<div id="G-username" class="ui-form-item">
			<label class="ui-label" id="G-label-user">
				<span class="ui-icon ui-icon-userDEF">账户名：</span>
			</label>
                <input type="text" placeholder="邮箱地址/手机号码" maxlength="100" value=""  name="logonId" class="ui-input ui-input-normal" id="J-input-user" >
				<div class="ui-form-explain"></div>
			</div>
            <div id="G-password" class="ui-form-item ui-form-item-20pd">
			<label id="G-label-editer" class="ui-label" data-desc="登录密码">
                <span id="" class="ui-icon ui-icon-securityON">登录密码</span>
            </label>
                <input type="password" maxlength="100" value=""  name="logonId" class="ui-input ui-input-normal" id="Password1">
				<div class="ui-form-explain"></div>
			</div>
            <p class="ui-form-other ui-form-other-fg">
                <a target="_blank" href="querypwd.aspx" class="textlink forgot">忘记登录密码？</a>
            </p>
            <div id="J-submit" class="ui-form-item ui-form-item-30pd">
                <input type="submit" id="J-login-btn" class="ui-button" value="登 录">
                    <p class="ui-form-other">
                        <a title="免费注册" target="_blank" href="../../Module/reg/ureg.aspx" class="register">免费注册</a>
                    </p>
            </div>
		</form>
	</div>

    <form id="form1" runat="server"></form>
</body>
</html>
