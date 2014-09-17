//未登录首页footer
//var Wfooyterline = template('<div class="footer-line"><div class="grid-990 cnt"></div></div>');
var WfooterTemp = template(
        '<div style="margin-top: 0px;" class="ui-footer fn-clear">'+
            '<div class="ui-footer-ctn">'+
                '<div class="ui-footer-link">'+
                    '<a href="http://ab.alipay.com/i/index.htm" target="_blank">关于律金</a>'+
                    '<em class="ui-separator">|</em><a href="http://blog.alipay.com/" title="官方博客" target="_blank">官方博客</a>'+
                    '<em class="ui-separator">|</em><a href="http://job.alipay.com/index.php" title="诚征英才" target="_blank">诚征英才</a>'+
                    '<em class="ui-separator">|</em><a href="http://ab.alipay.com/i/lianxi.htm" title="联系我们" target="_blank">联系我们</a>' +
                '</div>'+
                '<div class="ui-footer-copyright">'+
                    '<div class="copyright">北京大义士信息科技有限公司版权所有 2004-2014' +
                        '<a href="http://fun.alipay.com/certificate/jyxkz.htm" target="_blank">ICP证：XXX-XXXXXXX</a>'+
                    '</div>'+
                '</div>'+
          '</div>' +
       '</div>'
);
var Footerlinks = template(
    '<div class="links">' +
        '<div class="container">'+
          '<div class="row">'+
             '<div class="col-xs-4 pull-right social-media">'+
               '<div class="row">'+
                '<div class="col-xs-7">'+
                  '<a class="btn btn-lg btn-block btn-weibo" href="http://weibo.com/kaikeba">'+
                    '<span><img alt="" src="../../images/home/weibo_logo.png"></span>'+
                    '&nbsp;&nbsp;立即关注'+
                  '</a>'+
                  '<a class="btn btn-lg btn-block btn-douban" href="http://t.qq.com/kaikeba">'+
                    '<span><img alt="" src="../../images/home/weixin_logo.png"></span>' +
                    '&nbsp;&nbsp;立即收听'+
                  '</a>'+
                '</div>'+
              '</div>'+
            '</div>'+
          '</div>'+
        '</div>'+
      '</div>'
);

//主页律师照片
var HomeLsimg = template(
    '<div class="owl-item">' +
        '<div class="item">'+
		'<div class="gpic">'+
				'<img  alt="Dr. Butcher House" src="<%=url%>" />'+
			'</div>'+
			'<h3><%=name%></h3>'+
			'<p><%=lawname%></p>'+
		'</div>'+
    '</div>'
);
//主页律师照片
var Homexy = template(
    '<div class="owl-item">' +
        '<div class="item">' +
		'<div class="gpic">' +
				'<img  alt="Dr. Butcher House" src="<%=url%>" />' +
			'</div>' +
			'<h3><%=name%></h3>' +
			'<p><%=lawname%></p>' +
		'</div>' +
    '</div>'
);

//其他页面footer
var FooterTemp = template(
        '<div class="i-app" style="position: relative;"></div>'+
        '<div class="ui-footer fn-clear" style="margin-top: 0px;">'+
            '<div class="ui-footer-ctn">'+
               '<div class="ui-footer-link">'+
                   '<a target="_blank" href="http://ab.alipay.com/i/index.htm">关于律金</a>  '+
                       '<em class="ui-separator">|</em>'+
                   '<a target="_blank" title="官方博客" href="http://blog.alipay.com/">官方博客</a>'+
                       '<em class="ui-separator">|</em>'+
                   '<a target="_blank" title="诚征英才" href="http://job.alipay.com/index.php">诚征英才</a>'+
                       '<em class="ui-separator">|</em>'+
                   '<a target="_blank" title="联系我们" href="http://ab.alipay.com/i/lianxi.htm">联系我们</a>'+
              '</div>'+
              '<div class="ui-footer-copyright">'+
                   '<div class="copyright">'+
                    '北京大义士信息科技有限公司版权所有 2004-2014 <a target="_blank" href="http://fun.alipay.com/certificate/jyxkz.htm">ICP证：XXX-XXXXXXX</a>' +
                   '</div>'+
                   //'<div id="ServerNum" class="server">'+
                   // 'XXXXXXXXXXXXXXXXXXXXXXXXXX'+
                   //'</div>'+
             '</div>'+
            '</div>'+
       ' </div>'

);
//注册页验证错误
var namerror = template(
        '<div data-oldzindex="98" style="z-index: 98; width: 125px; top: 5px; left: 482px; display: block; position: absolute;" class="ui-form-explain fn-hide" id="G-pop-accName">' +
            '<em class="ui-form-arrow" style="position: absolute; left: -7px; top: 10px;"></em>请输入支付宝账户名。' +
        '</div>'
);
//遮罩层
var mask = template('<div class="ui-xbox-mask"></div>');

//弹出框
var dalert = template(
    '<div class="ui-xbox">'+
        '<div class="ui-xbox-action"><a class="ui-xbox-close" href="#">×</a></div>'+
        '<div class="ui-xbox-content">'+
            '<iframe frameborder="no" src="<%=url%>" scrolling="no" allowtransparency="true" style="border: medium none; width: 100%; height: 100%;">'+
        '</div>' +
    '</div>'
);
//用户注册第2步
var uregform2 = template(
    '<form id="registration-form2" class="ui-form ui-form-l ui-form-general" action="#" method="post" style="padding-top:50px">' +
        '<fieldset>'+
           '<legend>用户注册</legend>' +
            '<div class="ui-form-item">' +
                '<label for="upassword" class="ui-label">密码</label>' +
                '<input id="upassword" class="ui-input" type="text"  maxlength="32" placeholder="请输入你的律金帐号密码" name="upassword">' +
                '<span class="ui-zt"><i class="icon-remove"></i></span>'+
			    '<div class="cl">&nbsp;</div>' +
		    '</div>' +
            '<div class="ui-form-item">' +
                '<label for="upasswordtoo" class="ui-label">重新输入密码</label>' +
                '<input id="upasswordtoo" class="ui-input" type="text" value="" maxlength="32" placeholder="请重新输入你的律金帐号密码" name="upasswordtoo">' +
                '<span class="ui-zt"><i class="icon-remove"></i></span>' +
			    '<div class="cl">&nbsp;</div>' +
		    '</div>' +
            '<div class="ui-form-item">'+
                '<label for="uname" class="ui-label">真实姓名</label>' +
                '<input id="uname" class="ui-input" type="text" value="" maxlength="32" placeholder="请输入你的真实姓名或企业名称" name="uname">' +
                '<span class="ui-zt"><i class="icon-remove"></i></span>' +
			    '<div class="cl">&nbsp;</div>' +
		    '</div>' +
            '<div class="ui-form-item">' +
                '<label for="unumber" class="ui-label">身份证号</label>' +
                '<input id="unumber" class="ui-input" type="text" value="" maxlength="32"  placeholder="请输入你的手机号码" name="unumber">' +
                '<span class="ui-zt"><i class="icon-remove"></i></span>' +
			    '<div class="cl">&nbsp;</div>' +
		    '</div>' +
            '<div class="ui-form-item">' +
                '<label for="umail" class="ui-label">电子邮箱</label>' +
                '<input id="umail" class="ui-input" type="text" value="" maxlength="32"  placeholder="请输入你的电子邮箱" name="umail">' +
                '<span class="ui-zt"><i class="icon-remove"></i></span>'+
			    '<div class="cl">&nbsp;</div>' +
		    '</div>' +
            '<div class="ui-form-item">' +
                '<label for="uaddress" class="ui-label">联系地址</label>' +
                '<input id="uaddress" class="ui-input" type="text" value="" maxlength="32" placeholder="请输入你的联系地址" name="uaddress">' +
                '<span class="ui-zt"><i class="icon-remove"></i></span>' +
			    '<div class="cl">&nbsp;</div>' +
		    '</div>' +
            '<div class="ui-form-item">' +
                '<label for="G-bank" class="ui-label">银行开户行</label>' +
                '<input id="G-bank" class="ui-input" type="text" value="" maxlength="32" placeholder="请输入你的银行开户行" name="ubank">' +
                '<span class="ui-zt"><i class="icon-remove"></i></span>' +
			    '<div class="cl">&nbsp;</div>' +
		    '</div>' +
            '<div class="ui-form-item">' +
                '<label for="ubanknum" class="ui-label">银行帐号</label>' +
                '<input id="ubanknum" class="ui-input" type="text" value="" maxlength="32" placeholder="请输入你的银行帐号" name="ubanknum">' +
                '<span class="ui-zt"><i class="icon-remove"></i></span>' +
			    '<div class="cl">&nbsp;</div>' +
		    '</div>' +
            '<div class="ui-form-item fn-pt14">'+
				'<div class="ui-button ui-button-lorange">'+
					'<input type="button" value="下一步" class="ui-button-text" id="G-submit2">'+
				'</div>'+
				'<span class="ui-form-confirm">'+
                    '<span class="loading-text fn-hide">正在提交信息</span>'+
				'</span>'+
            '</div>'+
        '</fieldset>'+
    '</form>'
);
//用户注册第3步
var uregform3 = template(
    '<form id="registration-form3" class="ui-form ui-form-l ui-form-general" action="#" method="post" style="padding-top:50px">' +
        '<fieldset>'+
           '<legend>用户注册</legend>' +
        '<fieldset>'+
     '</form>'
);
//消息下拉框
var messageTem = template(
'<div class="alipay-message-panel-1_1_0">'+
'<div class="message-wrapper" style="padding: 0px 10px 25px; overflow: hidden; z-index: 100; display: none; position: absolute; left: 519.5px; top: 134px;">' +
'<div class="message-panel" style="top: 0px; visibility: visible; transition: top 0.5s ease-in-out 0s;">'+
    '<div class="message-panel-container">'+
        '<h3 class="message-panel-title">案件最新消息</h3>'+
        '<div class="message-panel-list">'+
            '<table width="100%">'+
                '<tbody>'+
                    '<tr id="umessage-tb">'+
                        '<td class="message-panel-item-title">'+
                           '<h4>继承经济纠纷案件</h4>'+
                        '</td>'+
                        '<td class="">'+
                            '<div class="message-panel-item-content">'+
                                '<div class="message-panel-delete">'+
                                    '<a title="删除消息" href="javascript:void(0)" class="iconfont"></a>' +
                                '</div>'+
                                '<a target="_blank" href="javascript:void(0)">您2014.01.01-2014.01.28的案件有新进展！敬请查阅&gt;&gt;</a>' +
                            '</div>'+
                        '</td>'+
                    '</tr>'+
                '</tbody>'+
            '</table>'+
        '</div>'+
        '<div class="message-panel-viewall">'+
            '<a target="_blank" href="javascript:void(0)">查看全部消息 <i class="iconfont"></i></a>' +
        '</div>'+
    '</div>'+
    '<div class="message-panel-toggle fn-clear"><i title="收起" class="iconfont iconfont-back"></i><i title="收起" class="iconfont iconfont-fold"></i></div>'+
'</div>'+
'</div>' +
'</div>'

);

//首次登录引导
var newuserTem = template(
    '<div style="" id="creditPayShow" class="layer-credit">'+
        '<a href="#none" class="close">关闭</a>'+
        '<div class="cont">'+
            '<span>首先点击这里！</span>'+
            //'<a target="_blank" href="javascript:void(0)" class="go">快去激活&gt;&gt;</a>' +
        '</div>' +
    '</div>'
);

//用户首页最新案件表格
var usertop5 = template(
    '<tr class="J-item ">'+
        '<td class="time">'+
     		'<p class="time-d"><%=time%></p>' +
	    '</td>'+
        '<td class="memo"></td>'+
        '<td class="name">'+
            '<p class="consume-title">'+
	            '<a target="_blank" title="" href="#"><%=title%></a>' +
            '</p>'+
	    '</td>'+
        '<td class="status">'+
		    '<p><%=state%></p>' +
		    '<p class="ft-gray"></p>'+		
        '</td>'+
        '<td class="memo"></td>'+
        '<td class="action">'+
            '<div id="<%=id%>" class="operation-menu-trigger J-operation-menu-trigger">' +
                '<div class="current-item">'+
                    '<span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>'+
                '</div>'+
           '</div>'+
        '</td>'+
    '</tr>'

);
var homecase = template(
    '<li id="<%=ID%>"'+
    '<i class="fa fa-bookmark"></i>'+
    '<a href="#"><i class="fa fa-angle-right"></i><%=CaseTypeName%> <%=Name%></a>' +
    '</li>');