<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VESHTest.Module.admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                
            </ul>
		</div>
	  </div>
	  <div class="authcenter-body fn-clear">
        <h1 class="authcenter-body-logo">
            <a target="_top" title="律金首页" class="link" href="../home/home.aspx"></a>
        </h1>
	    <div class="authcenter-body-login">
            
		    <div id="G-login1" class="login login-modern" style="width:286px;height:269px;padding:0">
			   <iframe src="minilogin.page" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
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
                 北京大义士信息科技有限公司版权所有 2004-2014 <a target="_blank" href="#">ICP证：XXXXXXXXXX</a>
              </div>
          </div>
      </div>
      <div id="G-authcenter-bg" class="authcenter-background">
        <img class="authcenter-bg authcenter-bg-show" id="J-authcenter-bgImg" src="../../images/login/src.jpg">
      </div>
	</div>

    <script src="../../Scripts/libs/autoMail.js"></script>
    
    <script src="../../Scripts/module/admin/login.js"></script>

    <form id="form1" runat="server"></form>
</body>
</html>
