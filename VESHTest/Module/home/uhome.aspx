<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uhome.aspx.cs" Inherits="VESHTest.Module.home.uhome" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>委托人登录首页</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <link href="../../Styles/libs/consumeprod.record-1.3.css" rel="stylesheet" />
    <link href="../../Styles/home/ustyle.css" rel="stylesheet" />
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome.css" rel="stylesheet" />
    <link href="../../Styles/home/message.css" rel="stylesheet" />

    
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
                        <li class="global-top-item">你好用户,</li>
                        <li class="global-top-item" id="globalUser">
                          <span class="global-top-text">
                            丁磊
                            <i class="iconfont global-top-angle"></i>
                          </span>
                        </li>
                        <li class="global-top-item">
                          <a class="global-top-link" href="../login/login.aspx">退出</a>
                        </li>
                        <li class="global-top-item">| 客户服务热线： 4008111111 </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="global-common-a">
            <div class="global">
                <div class="global-header fn-clear ">
                    <div class="global-header-content">
                        <div class="global-logo">
                            <a title="用户登录首页" href="#" >
                            <img width="125" height="37" alt="用户登录首页" src="../../Images/home/logo.png">
                        </div>
                        <div class="global-logo-neighbor"></div>
                        <ul class="global-nav">
                            <li class="global-nav-item global-nav-item-current">
                                <i title="菱形" class="iconfont"></i>
                                <a href="home.aspx">首页</a>
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
                            <a href="#">首页</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
                            <a href="uhome1.aspx">我要委托</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
                            <a href="uhome2.aspx">我的案件</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
                            <a href="uhome3.aspx">账户设置</a>
                        </li>
                        <%--<div class="global-subnav-input">
                            <form accept-charset="gb2312" target="_blank" class="my-app-search-form fn-hide" id="J-my-app-search-form" method="GET" action="" style="display: block;">
                                <input type="text" autocomplete="off" name="word" placeholder="输入关键字，如“密码”" id="J-my-app-search-input">
                                <i title="查询/搜索" class="iconfont global-subnav-input-scan"></i>
                            </form>
                        </div>--%>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="container" class="ui-container">
        <div class="i-banner">
            <div class="i-banner-message">
                <a title="查看全部消息" class="message-entrance message-stat-none" id="umessage">
                    <i title="查看全部消息" class="iconfont message-back"></i>
                    <span class="message-fore message-clock-animate">
                        <i class="iconfont"></i>
                        <span class="message-count"></span>
                    </span>
                </a>
            </div>
            <div class="i-banner-content fn-clear">
                <div class="i-banner-portrait">
                    <a class="userInfo-portrait" href="#">
                         <i class="icon"></i>
                    </a>
                </div>
                <div class="i-banner-main">
                    <div class="i-banner-main-hello fn-clear">
                        <p class="userName fn-left">Hi,<a title="丁磊" target="_blank" href="https://lab.alipay.com/user/myAccount/index.htm">丁磊</a></p>
                        <div class="notice fn-left">欢迎回到律金平台</div>
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
            <%--<div class="i-assets fn-clear">
                <table class="i-assets-table" cellspacing="0">
                    <tbody>
                        <tr>
                           <td class="i-assets-balance">
                                                             
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
            </div>--%>

            <%--我的案件开始--%>
            <div class="i-trend">
                <div id="G-case-tabs" class="content ui-switchable">
                    <div class="header">
                        <ul class="ui-switchable-nav fn-clear fn-left">
                            <li class="ui-switchable-trigger ui-switchable-active">
                                案件动态
                               <i class="icon"></i>
                            </li>
                        </ul>
                        <a target="_blank" class="ebill-link" href="uhome2.aspx">
                                more>>
                        </a>
                    </div>
                    <div class="body ui-switchable-content">
                        <div id="Gcase" class="panel consume ui-switchable-panel">
                            <div class="record-recent ui-box">
                                <div class="ui-box-container">
                                    <table id="userTop5" class="ui-record-table" width="100%">
                                       <colgroup>
			                                <col width="10%">
			                                <col width="5%">
			                                <col width="40%">
                                            <col width="30%">
			                                <col width="5%">
			                                <col width="10%">
		                                </colgroup>
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="G-nocase-tabs" class="content ui-switchable">
                    <img src="../../Images/home/arrow-down-outline-128.png" />
                    <h3>对不起,亲！您目前没有委托的案件哦！按上面提示操作0.0</h3>
                </div>
            </div>
            <%--我的案件结束--%>

            <%--<div class="i-cooperant-banner" id="J-cooperant-banner">
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
            </div>--%>

            
        </div>
        <div class="others-extend">
	        <div class="container">
                <h2 class="title-style1">业务类型</h2><p style="padding-bottom: 20px;color:#08c;">律金业务涉及一切经济案件，包括但不限于：</p>
                <ul id="advertises_list" class="ad-extendlist clearfix">
                    <li class="first">
                        <div class="imgbox">
                        <a target="_blank" href="/Advertisemen/fileFolder/cn-sc/20140827161000_6/iHaveSFCard.html">
                            
                        </a>
                        </div>
                        <p class="name">公民的商业行为</p>
                        <p class="brief">P2P投资、民间借贷、劳务、房屋买卖、股票买卖，其它经济纠纷</p>
                    </li>
                    <li class="mid">
                        <div class="imgbox">
                            <a target="_blank" href="http://i.sf-express.com/html/news/promotion_activity/enjoy_rebate.html">
                                
                            </a>
                        </div>
                        <p class="name">公民的侵权行为</p>
                        <p class="brief">交通事故、雇佣、工伤、医疗事故、劳动报酬，其它侵权纠纷</p>
                    </li>
                    <li class="mid">
                        <div class="imgbox">
                            <a target="_blank" href="/Advertisemen/fileFolder/cn-sc/20140901184540_8/web/hdxq.htm">
                            
                            </a>
                        </div>
                        <p class="name">企业的商业行为</p>
                        <p class="brief">企业借贷、担保、买卖、股权，其它经济纠纷</p>
                    </li>
                    <li class="mid">
                        <div class="imgbox">
                            <a target="_blank" href="/Advertisemen/fileFolder/cn-sc/20140901184540_8/web/hdxq.htm">
                            
                            </a>
                        </div>
                        <p class="name">银行的商业行为</p>
                        <p class="brief">金融贷款、不良资产处置，其它经济纠纷</p>
                    </li>
                    <li class="mid">
                        <div class="imgbox">
                            <a target="_blank" href="/Advertisemen/fileFolder/cn-sc/20140901184540_8/web/hdxq.htm">
                            
                            </a>
                        </div>
                        <p class="name">建筑工程、能源</p>
                        <p class="brief">建筑工程款优先受偿、采矿权及探矿权纠纷</p>
                    </li>
                    <li class="mid">
                        <div class="imgbox">
                            <a target="_blank" href="/Advertisemen/fileFolder/cn-sc/20140901184540_8/web/hdxq.htm">
                            
                            </a>
                        </div>
                        <p class="name">知识产权</p>
                        <p class="brief">商标侵权、专利侵权、著作权侵权、侵犯商业秘密、不正当竞争、垄断</p>
                    </li>
                    <li class="last">
                        <div class="imgbox">
                            <a target="_blank" href="/Advertisemen/fileFolder/cn-sc/20140829103800_9/NewTerm.htm">
                              
                            </a>
                        </div>
                        <p class="name">其它经济案件</p>
                        <p class="brief">涉及财产的婚姻、继承、其它经济纠纷</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    
    <form id="form1" runat="server"></form>

    <script src="../../Scripts/libs/artTemplate.js"></script>
    <script src="../../Scripts/libs/template.js"></script>

    <script src="../../Scripts/module/home/uhome.js"></script>
</body>
</html>
