<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ureg.aspx.cs" Inherits="VESHTest.Module.register.reg" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="content-type" content="text/html; charset=gbk">
	<meta charset="GBK">
	<title>委托人注册 - 律金</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">
    <link href="../../Styles/libs/validate.css" rel="stylesheet" />

    <%--Footer开始--%>
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome.css" rel="stylesheet" />
    <%--Footer结束--%>

    <link href="../../Styles/reg/style.css" rel="stylesheet" />
    <link href="../../Styles/reg/ureg.css" rel="stylesheet" />
    
    <link href="../../Styles/Global.css" rel="stylesheet" />
    <link href="../../Styles/font/font-awesome.min.css" rel="stylesheet" />

    <!--[if lt IE 9]>
      <script type="text/javascript" src="../../Scripts/html5shiv.js"></script>
      <script type="text/javascript" src="../../Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<body onResize="Resize()">
   
    <header id="header">
        <div class="grid-990 header-wrap fn-clear">
            <figure class="fn-left" id="alipay-img-logo">
                <a title="律金-注册" href="#" >
                <img width="125" height="37" alt="律金-注册" src="../../Images/home/logo.png">
                </a>
                <strong>注册</strong>
		    </figure>
            <div class="header-link the-alipay-global">
                <div class="global-toplink">
                    <a class="global-toplink-link" href="../login/login.aspx" target="_blank">登录</a>
                    <em class="global-separator">|</em>
                    <a class="global-toplink-link" href="#" target="_blank">返回首页</a>
                    <em class="global-separator">|</em>
                    <a class="global-toplink-link" href="#" target="_blank">帮助中心</a>
                    <em class="global-separator">|</em>
                    <a class="global-toplink-link" href="#" target="_blank">提建议</a>
                </div>
            </div>
        </div>
    </header>
    <div id="container">
        <div class="grid-780 grid-780-pd fn-hidden fn-clear">
            <div class="navi-container">
                <ol class="ui-step ui-step-4 ">
			        <li class="ui-step-start ui-step-active">
                        <div class="ui-step-line">-</div>    
                        <div class="ui-step-icon">        
                            <i class="iconfont">y</i>
                            <i class="ui-step-number">1</i>
                            <span class="ui-step-text">创建账户</span>
                        </div>
                    </li>		
		            <li>
                        <div class="ui-step-line">-</div>    
                        <div class="ui-step-icon">        
                            <i class="iconfont">y</i>
                            <i class="ui-step-number">2</i>
                            <span class="ui-step-text">设置身份账户信息</span>
                        </div>
                    </li>			
		           <li class="ui-step-end">
                        <div class="ui-step-line">-</div>    
                        <div class="ui-step-icon">        
                            <i class="iconfont">y</i>
                            <i class="iconfont ui-step-number ui-step-number-dui"></i>
                            <span class="ui-step-text">成功</span>
                        </div>
                  </li>	
               </ol>
            </div>
        </div>
        <div class="grid-780 fn-clear"> 
            <ul class="tab-choose">
                <li class="tab-choose-item tab-choose-item-personal">
                    <a href="ureg.aspx">委托人账户</a>
                    <em class="arrow"></em></li>
                <li class="tab-choose-item tab-choose-item-business">
                    <a href="lreg.aspx">律师账户</a>
                </li>
            </ul>  
        </div>
        <div class="grid-780 box-shadow fn-clear">
            <form id="registration-form1" class="ui-form ui-form-l ui-form-general" method="post" action="#">
               <fieldset>
                   <legend>委托人注册</legend>
                   <div class="ui-form-item">
                       <label class="ui-label" for="G-accName">手机号</label>
                       <span id="mymobileCode" class="ui-input ui-input-disabled ui-input-countryCode">+86</span>
                       <input type="text" maxlength="100" placeholder="请输入你的手机号码" class="ui-input" name="myphone" id="myphone">
                       <span class="ui-zt"><i class="icon-remove"></i></span>
					   <div class="cl">&nbsp;</div>
                   </div>
                   <div class="ui-form-item">
                       <label class="ui-label" for="J-checkcode">验证码</label>
                       <input type="text" maxlength="4" placeholder="请输入验证码" class="ui-input ui-input-100 ime-disabled" name="checkCode" id="G-checkcode">
                       
<%--                       <span class="sl-checkcodeIcon">
                           <span id="checkcodeIcon" class="checkcodeIcon"></span>
                       </span>--%>
                       <img style="cursor:pointer;" alt="输入验证码" src="https://omeo.alipay.com/service/checkcode?sessionID=67da4eb5c4d291e4de78be2fdce3e512&amp;r=0.07576691586907336" class="checkcode-img" title="点击图片刷新验证码" id="J-checkcode-img">
                       <span class="ui-zt"><i class="icon-remove"></i></span>
					   <div class="cl">&nbsp;</div>
		           </div>
                   <div class="ui-form-item ui-form-item-checkbox">
                        <input type="checkbox" class="ui-checkbox" checked="checked" name="agree" id="J-agree">
                        <label class="ui-checkbox-label" for="J-agree">同意<a target="_blank" id="G-alipay-treaty">《律金委托人服务协议》</a></label>
                   </div>
                   <div class="ui-form-item fn-pt14">
				        <div class="ui-button ui-button-lorange">
					        <input type="submit" value="下一步" class="ui-button-text" id="G-submit1">
				        </div>
				        <span class="ui-form-confirm">
                            <span class="loading-text fn-hide loading-text-1">正在提交信息</span>
				        </span>
                   </div>
                   <%--<a href="https://memberprod.alipay.com/account/reg/email.htm" class="switch-re-type">使用邮箱注册</a>--%>
               </fieldset>
            </form>
            <form id="registration-form2" name="registration-form2" method="post" class="ui-form ui-form-l ui-form-general" enctype ="multipart/form-data">
                <fieldset>
                    <legend>委托人注册</legend>
                    <div class="ui-form-item">
                        <label class="ui-label" for="Password">密码</label>
                        <input type="password" name="Password" placeholder="请输入你的律金帐号密码" maxlength="32" class="ui-input" id="Password">
                        <span class="ui-zt"><i class="icon-remove"></i></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label" for="upasswordtoo">重新输入密码</label>
                        <input type="password" name="upasswordtoo" placeholder="请重新输入你的律金帐号密码" maxlength="32" value="" class="ui-input" id="upasswordtoo">
                        <span class="ui-zt"><i class="icon-remove"></i></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label" for="Name">真实姓名</label>
                        <input type="text" name="Name" placeholder="请输入你的真实姓名或企业名称" maxlength="32" value="" class="ui-input" id="Name">
                        <span class="ui-zt"><i class="icon-remove"></i></span>
                        <div class="cl">&nbsp;</div></div>
                    <div class="ui-form-item">
                        <label class="ui-label" for="IDCard" id="fnumberID">身份证号</label>
                        <input type="text" name="IDCard" placeholder="请输入你的手机号码" maxlength="32" value="" class="ui-input" id="IDCard">
                        <span class="ui-zt"><i class="icon-remove"></i></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label" for="Mail" id="fmail">电子邮箱</label>
                        <input type="text" name="Mail" placeholder="请输入你的电子邮箱" maxlength="32" value="" class="ui-input ui-input-mails" id="Mail">
                        <span class="ui-zt"><i class="icon-remove"></i></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label" for="Address">联系地址</label>
                        <input type="text" name="Address" placeholder="请输入你的联系地址" maxlength="32" value="" class="ui-input" id="Address">
                        <span class="ui-zt"><i class="icon-remove"></i></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label" for="bankAddress">银行开户行</label>
                        <input type="text" name="bankAddress" placeholder="请输入你的银行开户行" maxlength="32" value="" class="ui-input" id="bankAddress">
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label" for="bankNo">银行帐号</label>
                        <input type="text" name="bankNo" placeholder="请输入你的银行帐号" maxlength="32" value="" class="ui-input" id="bankNo">
                    </div>
                    <div class="ui-form-item fn-pt14">
                        <div class="ui-button ui-button-lorange">
                            <input type="submit" id="G-submit2" class="ui-button-text" value="下一步">
                        </div>
                        <span class="ui-form-confirm"><span class="loading-text fn-hide">正在提交信息</span></span>
                    </div>
                </fieldset>
            </form>
            <form id="registration-form3" method="post" action="#" class="ui-form ui-form-l ui-form-general">
                 <fieldset>
                    <legend>委托人注册</legend>
                     <div class="ui-form-item">
                         <img src="../../Images/home/guang1.jpg" />
                    </div>
                     <div class="ui-form-item fn-pt14">
                        <div class="ui-button ui-button-lorange">
                            <input type="submit" id="G-submit3" class="ui-button-text" value="确定">
                        </div>
                    </div>
                 </fieldset>
            </form>
        </div>
    </div>
    <div class="footer"></div>
    <img class="ui-xbox-load" src="../../images/reg/load.gif" style="z-index: 1000; height: 13px; width: 208px; position: absolute; left: 856px; top: 478px; display: none;">

    <script src="../../Scripts/libs/artTemplate.js"></script>
    <script src="../../Scripts/libs/template.js"></script>

    <script src="../../Scripts/libs/jquery.form.js"></script>
    <script src="../../Scripts/libs/combined.js"></script>
    <script src="../../Scripts/libs/make_dropdown.min.js"></script>
    <script src="../../Scripts/libs/card.js"></script>
    <script src="../../Scripts/libs/autoMail.js"></script>

    <script src="../../Scripts/module/reg/ureg.js"></script>

    <form id="form1" runat="server"></form>
</body>
</html>
