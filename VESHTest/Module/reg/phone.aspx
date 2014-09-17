<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="phone.aspx.cs" Inherits="VESHTest.Module.reg.phone" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>手机验证</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">
    <link href="../../Styles/help/phone.css" rel="stylesheet" />
</head>
<body class="xbox">
    <div id="content">
	    <div class="ui-xboxtitle ui-xboxtitle-auth">
		    <h2>填写校验码</h2>
	    </div>
	    <p class="ui-tiptext ui-tiptext-message ui-tiptext-shortXbox"><span class="ui-tiptext-icon"></span>
	    校验码短信已发送到你的手机上，有效时间为30分钟，请及时查收。</p>
	        <form class="ui-form ui-form-xboxBg" action="#" method="post" id="J-mobile-checker-form" name="J-mobile-checker-form">
		        <div class="ui-form-item">
			        <label class="ui-label" for="">手机号</label>
			        <span class="ui-text reg-mobile">1383838438</span>
		        </div>
		        <div class="ui-form-item" style="z-index: 97;">
			        <label class="ui-label" for="mobile_code">校验码</label>
			        <input type="text" placeholder="" value="" class="ui-input ui-input-shorter" name="checkCode" maxlength="6" id="mobile_code">
		            <div style="z-index: 100; width: 108px; top: 0px; left: 300px; display: none; position: absolute;" class="ui-form-explain fn-hide" id="J-pop-checkCode">
                        <em class="ui-form-arrow"></em>
		            </div>
		        </div>

		        <div class="ui-form-item fn-ml10 fn-pt0">
                    <div class="ui-poptip-content">
                        <div class="ui-button ui-button-swhite" id="J-resend-mobile"><button class="ui-button-text"  type="button">重新获取短信</button></div>
                        <span id="ajaxErrorMsg" class="ui-tiptext ui-tiptext-error fn-hide">
                            <span class="ui-tiptext-icon"></span>发送短信失败。
                        </span>
                    </div>
		        </div>
		        <div class="ui-form-item fn-ml10 fn-pt20">
			        <span class="ui-button ui-button-morange"><input type="submit" value="确定" class="ui-button-text" id="p-submit"></span>
			        <span class="ui-form-confirm"><span class="loading-text fn-hide">正在提交信息</span></span>
		        </div>
	       </form>
    </div>

    <script src="../../Scripts/libs/artTemplate.js"></script>
    <script src="../../Scripts/libs/template.js"></script>
    <script src="../../Scripts/module/reg/phone.js"></script>

    <form id="form1" runat="server"></form>
</body>
</html>
