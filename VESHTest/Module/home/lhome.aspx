<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lhome.aspx.cs" Inherits="VESHTest.Module.home.lhome" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>律师登录首页</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <link href="../../Styles/libs/consumeprod.record-1.3.css" rel="stylesheet" />
    <link href="../../Styles/home/ustyle.css" rel="stylesheet" />
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/lhome.css" rel="stylesheet" />



    <!--[if lt IE 9]>
      <script type="text/javascript" src="../../Scripts/html5shiv.js"></script>
      <script type="text/javascript" src="../../Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div id="globalContainer" class="global-reset global-container global-type-global">
        <div class="global-top-a">
            <div class="global-top">
                <div class="global-top-container">
                    <ul class="global-top-right">
                        <li class="global-top-item global-top-item-last"></li>
                        <li class="global-top-item">你好律师,</li>
                        <li class="global-top-item" id="globalUser">
                          <span class="global-top-text">
                            丁磊
                            <i class="iconfont global-top-angle"></i>
                          </span>
                        </li>
                        <li class="global-top-item">
                          <a class="global-top-link" href="../login/login.aspx">退出</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="global-common-a">
            <div class="global">
                <div class="global-header fn-clear ">
                    <div class="global-header-content">
                        <div class="global-logo">
                            <a title="律师登录首页" href="#" >
                            <img width="125" height="37" alt="律师登录首页" src="../../Images/home/logo.png">
                        </div>
                        <div class="global-logo-neighbor"></div>
                        <ul class="global-nav">
                            <li class="global-nav-item global-nav-item-current">
                                <i title="菱形" class="iconfont"></i>
                                <a href="lhome.aspx">我的律金</a>
                                <%--<span class="global-nav-item-arrow">◆</span>
                                <span class="global-nav-item-arrow global-nav-item-arrow-border">◆</span>--%>
                            </li>
                            <li class="global-nav-item ">
                                <i title="菱形" class="iconfont"></i>
                                <a href="knowledge.aspx">法律知识库</a>
                            </li>
                            <li class="global-nav-item ">
                                <i title="菱形" class="iconfont"></i>
                                <a href="law.aspx">律师·律所</a>
                            </li>
                            <li class="global-nav-item ">
                                <i title="菱形" class="iconfont"></i>
                                <a href="about.aspx">平台介绍</a>
                            </li>
                            <li class="global-nav-item ">
                                <i title="菱形" class="iconfont"></i>
                                <a href="https://consumeprod.alipay.com/record/index.htm">使用方式</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="global-subheader">
                    <ul class="global-subnav">
                        <li class="global-subnav-item global-subnav-item-current">
                            <a href="https://my.alipay.com/portal/i.htm">首页</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
                            <a href="https://my.alipay.com/portal/assets/index.htm">账户设置</a>
                        </li>
                        <div class="global-subnav-input">
                            <form accept-charset="gb2312" target="_blank" class="my-app-search-form fn-hide" id="J-my-app-search-form" method="GET" action="http://help.alipay.com/lab/search_new_result.htm" style="display: block;">
                                <input type="text" autocomplete="off" name="word" placeholder="输入关键字，如“密码”" id="J-my-app-search-input">
                                <i title="查询/搜索" class="iconfont global-subnav-input-scan"></i>
                            </form>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="container" class="ui-container">
        <div class="i-banner">
            <div class="i-banner-message">
                <a seed="msg-icon-myalipay-v1" title="查看全部消息" target="_blank" href="https://couriercore.alipay.com/messager/new.htm" class="message-entrance message-stat-none" id="J-portal-message">
                    <i title="查看全部消息" class="iconfont message-back"></i>
                    <span class="message-fore message-clock-animate">
                        <i class="iconfont"></i>
                        <span class="message-count"></span>
                    </span>
                </a>
            </div>
            <div class="i-banner-content fn-clear" coor="default-banner" coor-rate="0.1">
                <div class="i-banner-portrait">
                    <a class="userInfo-portrait" href="https://my.alipay.com/portal/account/index.htm">
                            <i class="icon"></i>
                    </a>
                </div>
                <div class="i-banner-main">
                    <div class="i-banner-main-hello fn-clear">
                        <p class="userName fn-left">上午好,<a title="丁磊" seed="account-name-myalipay-v1" target="_blank" href="https://lab.alipay.com/user/myAccount/index.htm">丁磊</a></p>
                        <div class="notice fn-left">每一天，努力让梦想更近一些</div>
                    </div>
                    <div class="i-banner-main-detail fn-clear">
                        <div class="fn-left fn-mr-5">
                            账户名：<a id="J-userInfo-account-userEmail" title="dlloveyxx@163.com" target="_blank" href="https://lab.alipay.com/user/myAccount/index.htm">dlloveyxx@163.com</a>
                        </div>
                        <i class="separator-20 fn-left">|</i>
                        <div class="fn-left">
					         上次登录时间：2014.08.23 08:43:42
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="i-content">
            <div class="i-assets fn-clear">
                <table class="i-assets-table" cellspacing="0">
                    <tbody>
                        <tr>
                           <td class="i-assets-balance">
                               <div id="J-assets-balance" class="wrap ui-bookblock-bookblock">

                                </div>
                            </td>
                           <td class="i-assets-finance i-assets-2rows i-assets-2rows-2col " rowspan="2">
                               <div id="J-assets-finance" class="wrap ui-bookblock-bookblock">

                               </div>
                           </td>
                           <td id="J-assets-other" class="i-assets-other i-assets-2rows i-assets-2rows-2col" rowspan="2">
                               <div class="i-assets-content">

                               </div>
                           </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <%--我的案件开始--%>
            <div class="i-trend">
                <div id="J-trend-tabs" class="content ui-switchable">
                    <div class="header">
                        <ul class="ui-switchable-nav fn-clear fn-left">
                           <li class="ui-switchable-trigger ui-switchable-active">
                                未办理
                            </li>
                            <%--<li class="ui-switchable-trigger">
                                办理中
                            </li>
                            <li class="ui-switchable-trigger">
                                已办理
                            </li>--%>
                        </ul>
                        <a target="_blank" class="ebill-link" href="https://zd.alipay.com/ebill/index.htm">
                            more>>
                        </a>
                    </div>
                    <div class="body ui-switchable-content">
                        <div id="G-trend-consume" class="panel fn-hide consume ui-switchable-panel">
                            <div class="record-recent ui-box">
                                <div class="ui-box-container">
                                    <table id="tradeRecordsIndex" class="ui-record-table" width="100%">
                                       <colgroup>
			                                <col width="">
			                                <col width="4%">
			                                <col width="40%">
			                                <col width="6%">

			                                <col width="10%">
		                                </colgroup>
                                        <tbody>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="J-operation-menu-1" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="Div1" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="Div2" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--我的案件结束--%>

            <%--我的案件开始--%>
            <div class="i-trend">
                <div id="Div3" class="content ui-switchable">

                    <div class="header">
                        <ul class="ui-switchable-nav fn-clear fn-left">
                           <li class="ui-switchable-trigger ui-switchable-active">
                                办理中
                            </li>
                            <%--<li class="ui-switchable-trigger">
                                办理中
                            </li>
                            <li class="ui-switchable-trigger">
                                已办理
                            </li>--%>
                        </ul>
                        <a target="_blank" class="ebill-link" href="https://zd.alipay.com/ebill/index.htm">
                            more>>
                        </a>
                    </div>
                    <div class="body ui-switchable-content">
                        <div id="Div4" class="panel fn-hide consume ui-switchable-panel">
                            <div class="record-recent ui-box">
                                <div class="ui-box-container">
                                    <table id="Table1" class="ui-record-table" width="100%">
                                       <colgroup>
			                                <col width="">
			                                <col width="4%">
			                                <col width="40%">
			                                <col width="6%">

			                                <col width="10%">
		                                </colgroup>
                                        <tbody>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="Div5" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="Div6" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="Div7" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--我的案件结束--%>

            <%--我的案件开始--%>
            <div class="i-trend">
                <div id="Div8" class="content ui-switchable">

                    <div class="header">
                        <ul class="ui-switchable-nav fn-clear fn-left">
                           <li class="ui-switchable-trigger ui-switchable-active">
                                已办理
                            </li>
                            <%--<li class="ui-switchable-trigger">
                                办理中
                            </li>
                            <li class="ui-switchable-trigger">
                                已办理
                            </li>--%>
                        </ul>
                        <a target="_blank" class="ebill-link" href="https://zd.alipay.com/ebill/index.htm">
                            more>>
                        </a>
                    </div>
                    <div class="body ui-switchable-content">
                        <div id="Div9" class="panel fn-hide consume ui-switchable-panel">
                            <div class="record-recent ui-box">
                                <div class="ui-box-container">
                                    <table id="Table2" class="ui-record-table" width="100%">
                                       <colgroup>
			                                <col width="">
			                                <col width="4%">
			                                <col width="40%">
			                                <col width="6%">

			                                <col width="10%">
		                                </colgroup>
                                        <tbody>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="Div10" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="Div11" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="J-item ">
                                                <td class="time">
     		                                        <p class="time-d">2014.08.17</p>
	                                            </td>
                                                <td class="memo"></td>
                                                <td class="name">
                                                    <p class="consume-title">
	                                                     <a target="_blank" title="" href="#">XXXX赔偿</a>
                                                    </p>
	                                            </td>
                                                <td class="status">
		                                            <p>已办结</p>
		                                            <p class="ft-gray"></p>		
                                                </td>
                                                <td class="memo"></td>
                                                <td class="action">
                                                    <div id="Div12" class="operation-menu-trigger J-operation-menu-trigger">
                                                        <div class="current-item">
                                                            <span class="item-text">详情</span><span class="icon-pull-down">&nbsp;</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--我的案件结束--%>

            <div class="i-cooperant-banner" id="J-cooperant-banner">
                <div class="content fn-clear">
                    <div class="main fn-left">
                        <img usemap="#cooperant-banner-1" src="https://i.alipayobjects.com/i/ecmng/jpg/201408/3HprGvb8Av.jpg">
                        <map id="cooperant-banner-1" name="cooperant-banner-1">
                            <area target="_blank" coords="105,22,582,194" shape="rect" title="理财频道" href="http://www.taobao.com/go/chn/licai/fund.php?spm=a1z29.6661701.1997337697.6.AGmInl ">
                        </map>
                    </div>
                    <div class="aside fn-left">
                        <img usemap="#cooperant-banner-2" src="https://i.alipayobjects.com/i/ecmng/jpg/201408/3HpnqEgvuf.jpg">
                        <map id="cooperant-banner-2" name="cooperant-banner-2">
                            <area target="_blank" coords="43,19,219,213" shape="rect" title="农行信用" href="http://kj.alipay.com/kjxrlcj/nhbank.htm">
                        </map>
                    </div>
               </div>
            </div>
        </div>
    </div>
    <form id="form1" runat="server"></form>
    <script src="../../Scripts/libs/artTemplate.js"></script>
    <script src="../../Scripts/libs/template.js"></script>

    <script src="../../Scripts/module/home/lhome.js"></script>
</body>
</html>
