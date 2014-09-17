<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="VESHTest.Module.login.login" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="content-type" content="text/html; charset=gbk">
	<meta charset="GBK">
	<title>登录 - 律金</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">
    
    <link href="../../Styles/Login/login.css" rel="stylesheet" />
    <link href="../../Styles/login/style.css" rel="stylesheet" />
    
    
    <!--[if lt IE 9]>
      <script type="text/javascript" src="../../Scripts/html5shiv.js"></script>
      <script type="text/javascript" src="../../Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<body onResize="Resize()">
    <div class="authcenter">
	  <div class="authcenter-head">
	    <div class="container fn-clear">
		    <ul class="container-right">
                <li class="container-right-item"><a title="律金首页" target="_blank" href="../home/home.aspx">律金首页</a></li>
                <li class="container-right-item"><a title="帮助中心" target="_blank" href="#">帮助中心</a></li>
                <li class="container-right-item container-right-last"><a title="提建议" target="_blank" href="../help/proposal.aspx">提建议</a></li>
            </ul>
		</div>
	  </div>
	  <div class="authcenter-body fn-clear">
        <h1 class="authcenter-body-logo">
            <a  target="_top" title="律金首页" class="link" href="../home/home.aspx"></a>
        </h1>
	    <div class="authcenter-body-login">
            <div class="authcenter-body-login-tab">
                <ul>
                    <li menu="uhome" li="1" class="login-tab-u"><a>委托人登录</a></li>
                    <li menu="lhome" li="2" class="login-tab-l login-tab-active"><a>律师登录</a></li>
                </ul>
            </div>
		    <div id="G-login1" class="login login-modern">
			   <form id="login-form1" class="ui-form" method="post" name="login-form">
			      <h2 id="G-login-title1" class="ui-form-title">登录律金</h2>
				  <div id="G-errorBox1" class="sl-error">
                    <i title="出错" class="iconfont"></i>
                    <span class="sl-error-text"></span>
                  </div>
				  <div class="ui-form-item">
					    <label class="ui-label">
						    <span class="ui-icon ui-icon-userDEF">账户名：</span>
					    </label>
                        <input type="text" placeholder="邮箱地址/手机号码" maxlength="100" value=""  name="username1" class="ui-input ui-input-normal loginname" id="username1" >
						<div class="ui-form-explain"></div>
				  </div>
                  <div class="ui-form-item ui-form-item-20pd">
					    <label class="ui-label">
                            <span class="ui-icon ui-icon-securityON">登录密码</span>
                        </label>
                        <input type="password" maxlength="100" value=""  name="password1" class="ui-input ui-input-normal password" id="password1">
						<div class="ui-form-explain"></div>
				  </div>
                  <div class="verify ui-form-item ui-form-item-20pd">
                        <input type="text" name="seccode" class="ui-input ui-input-normal ui-input-yz txt seccode">
                        <p>验证码</p>
                        <img src="" alt="" style="cursor:pointer;">
                  </div>
                  <p class="ui-form-other ui-form-other-fg">
                      <a target="_blank" href="querypwd.aspx" class="textlink forgot">忘记登录密码？</a>
                  </p>
                  <div class="ui-form-item ui-form-item-30pd">
                      <input type="button" id="G-login-btn1" class="ui-button" value="登 录">
                        <p class="ui-form-other">
                            <a title="免费注册" target="_blank" href="../../Module/reg/ureg.aspx" class="register">免费注册</a>
                        </p>
                  </div>
			   </form>
			</div>
            <div class="login login-modern" id="G-login2">
			   <form name="login-form" method="post" class="ui-form" id="login-form2">
			      <h2 class="ui-form-title " id="G-login-title2">登录律金</h2>
				  <div class="sl-error" id="G-errorBox2">
                    <i class="iconfont" title="出错"></i>
                    <span class="sl-error-text"></span>
                  </div>
				  <div class="ui-form-item">
					<label class="ui-label">
						<span class="ui-icon ui-icon-userDEF">账户名：</span>
					</label>
                        <input type="text" id="username2" class="ui-input ui-input-normal loginname" name="username2" value="" maxlength="100" placeholder="邮箱地址/手机号码">
						<div class="ui-form-explain"></div>
				  </div>
                  <div class="ui-form-item ui-form-item-20pd">
					<label class="ui-label">
                        <span class="ui-icon ui-icon-securityON">登录密码</span>
                    </label>
                        <input type="password" id="password2" class="ui-input ui-input-normal password" name="password2" value="" maxlength="100">
						<div class="ui-form-explain"></div>
				  </div>
                  <div class="verify ui-form-item ui-form-item-20pd">
                        <input type="text" class="ui-input ui-input-normal ui-input-yz" name="seccode">
                        <p>验证码</p>
                        <img src="" alt="" style="cursor:pointer;">
                        <p class="prompt-verify prompt"></p>
                  </div>
                  <p class="ui-form-other ui-form-other-fg">
                      <a class="textlink forgot" href="querypwd.aspx" target="_blank">忘记登录密码？</a>
                  </p>
                  <div class="ui-form-item ui-form-item-30pd">
                      <input type="button" value="登 录" class="ui-button" id="G-login-btn2">
                        <p class="ui-form-other">
                            <a class="register" href="../../Module/reg/lreg.aspx" target="_blank" title="免费注册">免费注册</a>
                        </p>
                  </div>
			   </form>
			</div>
		</div>
	  </div>
      <div id="J-authcenter-foot" class="authcenter-foot">
          <div class="authcenter-foot-container">
              <p class="authcenter-foot-link">
                 <a href="#">关于律金</a>|
                 <a href="#">官方微博</a>|
                 <a href="#">诚征英才</a>|
                 <a href="#">联系我们</a>
              </p>
              <div class="copyright">
                 律金版权所有 2004-2014 <a target="_blank" href="#">ICP证：XXXXXXXXXX</a>
              </div>
          </div>
      </div>
      <div id="G-authcenter-bg" class="authcenter-background">
        <img class="authcenter-bg authcenter-bg-show" id="J-authcenter-bgImg" src="../../images/login/src.jpg">
      </div>
	</div>

    <script src="../../Scripts/libs/autoMail.js"></script>
    
    <script src="../../Scripts/module/login/login.js"></script>

    <form id="form1" runat="server"></form>
</body>
</html>
