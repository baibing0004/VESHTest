<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="law.aspx.cs" Inherits="VESHTest.Module.home.law" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <title>律师律所</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <link href="../../Styles/libs/consumeprod.record-1.3.css" rel="stylesheet" />
    <link href="../../Styles/home/ustyle.css" rel="stylesheet" />
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome.css" rel="stylesheet" />
    <link href="../../Styles/home/law.css" rel="stylesheet" />

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
                            <li class="global-nav-item">
                                <i title="菱形" class="iconfont"></i>
                                <a href="home.aspx">首页</a>
                                <span class="global-nav-item-arrow">◆</span>
                                <span class="global-nav-item-arrow global-nav-item-arrow-border">◆</span>
                            </li>
                            <li class="global-nav-item">
                                <i title="菱形" class="iconfont"></i>
                                <a href="knowledge.aspx">法律知识库</a>
                            </li>
                            <li class="global-nav-item global-nav-item-current">
                                <i title="菱形" class="iconfont"></i>
                                <a href="law.aspx">律师·律所</a>
                            </li>
                            <li class="global-nav-item">
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
                <div class="global-subheader"></div>
            </div>
        </div>
    </div>

    <div id="container" class="ui-container">
        <div class="i-banner"></div>
        <div class="i-content">
            <div class="i-assets fn-clear">
               <div class="col-left">
                    <div id="J_Nav" class="nav" style="left: -200px;">
                        <a target="_self" href="#" class="ued-logo">
		                    <img src="../../Images/home/guang2.jpg" />
	                    </a>
                        <div class="nav-menu">
		                    <div class="nav-label" id="J_NavLabel" style="top:0px;display:block">
                                <span></span>
		                    </div>
		                    <ul class="menu" id="menu-primary">
                                <li class="menu-item menu-item-type-custom menu-item-object-custom" mtop="0">
                                    <a>律师事务所</a>
                                </li>
                                <li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children" mtop="40">
                                    <a>律师</a>
                                </li>
                             </ul>	
                        </div>
                    </div>
                </div>
               <div class="col-right">
				    <div class="content-bd">
                        <div id="allmap"></div>
                    </div>
               </div>
            </div>
        </div>
        <div class="i-app" style="position: relative;"></div>
        <div style="margin-top: 0px;" class="ui-footer fn-clear">
            <div class="ui-footer-ctn">
                <div class="ui-footer-link">
                    <a href="http://ab.alipay.com/i/index.htm" target="_blank">关于律金</a>  
                    <em class="ui-separator">|</em>
                    <a href="http://blog.alipay.com/" title="官方博客" target="_blank">官方博客</a>
                    <em class="ui-separator">|</em>
                    <a href="http://job.alipay.com/index.php" title="诚征英才" target="_blank">诚征英才</a>
                    <em class="ui-separator">|</em>
                    <a href="http://ab.alipay.com/i/lianxi.htm" title="联系我们" target="_blank">联系我们</a>
                </div>
                <div class="ui-footer-copyright">
                    <div class="copyright">律金版权所有 2004-2014 <a href="http://fun.alipay.com/certificate/jyxkz.htm" target="_blank">ICP证：XXX-XXXXXXX</a></div>
                    <div class="server" id="ServerNum">XXXXXXXXXXXXXXXXXXXXXXXXXX</div>
                </div>
           </div> 
      </div>
    </div>

    <form id="form1" runat="server"></form>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=B9f8d80a31c8eb13c1c049d95e77f716"></script>
    <script type="text/javascript">
        // 百度地图API功能
        var map = new BMap.Map("allmap");
        var point = new BMap.Point(116.331398, 39.897445);
        map.centerAndZoom(point, 11);

        function theLocation() {
            var city = document.getElementById("cityName").value;
            if (city != "") {
                map.centerAndZoom(city, 11);      // 用城市名设置地图中心点
            }
        }
    </script>
    <script src="../../Scripts/libs/artTemplate.js"></script>
    <script src="../../Scripts/libs/template.js"></script>

    <script src="../../Scripts/module/home/law.js"></script>
</body>
</html>
