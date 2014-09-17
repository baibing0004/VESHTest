<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="querypwd.aspx.cs" Inherits="VESHTest.Module.login.querypwd" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="content-type" content="text/html; charset=gbk">
	<meta charset="GBK">
	<title>找回登录密码</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">
    
    
    <link href="../../Styles/login/pstyle.css" rel="stylesheet" />
    

    <!--[if lt IE 9]>
      <script type="text/javascript" src="../../Scripts/html5shiv.js"></script>
      <script type="text/javascript" src="../../Scripts/respond.min.js"></script>
    <![endif]-->
    <style>
        .logo img {
            float: left;
            height: 37px;
            width: 140px;
            margin-right:20px;
        }
    </style>
</head>
<body>
    <div class="head">
        <div class="header">
            <div class="header-cnt fn-clear">
                <h1 class="logo">
                    <img src="../../Images/home/logo.png" width="125" height="37"/>
                </h1>
                <h2 class="logo-title">
                    找回登录密码
                </h2>
                <ul class="nav">
                     <li class="nav-first">
                        <a href="../reg/ureg.aspx">注册</a>-
                        <a href="../login/login.aspx">登录</a>
                     </li>
                     <li>
                        <a href="#">返回首页</a>
                     </li>
                     <li class="">
                        <a target="_blank" href="#">帮助中心</a>
                     </li>
	                 <li class="nav-last">
                        <a target="_blank" href="https://egg.alipay.com/">提建议</a>
                     </li>
	             </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="content">
            <div class="maincenter">
                <div class="maincenter-box">
                    <div class="maincenter-box-tip">
                        <p class="ui-tiptext ui-tiptext-message">
                            <i class="ui-tiptext-icon"></i>
                            请输入您需要找回登录密码的账户名
                        </p>
                    </div>
                    <form id="J-findPwdForm" class="ui-form" action="logonIdInputReset.htm?site=1&page_type=fullpage&scene_code=resetQueryPwd&return_url=" method="post">
                        <div class="ui-form-item">
                           <label class="ui-label">账户名</label>
                           <input type="text" value="" maxlength="100" placeholder="电子邮箱或手机号码" class="ui-input" name="logonId" id="J-accName" >
                           <div class="ui-form-explain"> </div>
                        </div>
                        <div class="ui-form-item">
                           <label class="ui-label" for="J-checkcode">验证码</label>
                           <input type="text" data-explain=" " maxlength="4" autocomplete="off" class="ui-input ui-input-checkcode" name="picCheckCode" id="J-checkcode"">
                           <img style="cursor:pointer;" alt="输入验证码" src="https://omeo.alipay.com/service/checkcode?sessionID=626e564bc6a7d5a385e2423a07cf31a1&amp;r=0.6635900398841194" complete="complete" class="ui-input-checkcode-img J-changeCheckcode" title="点击图片刷新验证码">
                           <a id="J-forgetAccount" class="ui-form-other J-changeCheckcode" target="_blank" href="#">看不清？换一张</a>
                            <div class="ui-form-explain"> </div>
                        </div>
                        <div class="ui-form-item fn-pt14">
				            <div id="submitBtn" class="ui-button ui-button-lorange">
					            <input type="submit" id="J-submit" class="ui-button-text" value="下一步">
				            </div>
				            <span class="ui-form-confirm">
                                <span class="loading-text fn-hide">正在提交信息</span>
				            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <form id="form1" runat="server"></form>
</body>
</html>
