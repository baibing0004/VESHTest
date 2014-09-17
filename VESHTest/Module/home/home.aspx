<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="VESHTest.Module.home.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>未登录--首页</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <%--Footer开始--%>
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome.css" rel="stylesheet" />
    <%--Footer结束--%>
    
    <link href="../../Styles/home/style.css" rel="stylesheet" />

    <link href="../../Styles/home/home.css" rel="stylesheet" />

    <%--插件开始--%>
 
    <link href="../../Styles/font/font-awesome.css" rel="stylesheet" />
    <link href="../../Styles/libs/owl.carousel.css" rel="stylesheet" />
    <link href="../../Styles/libs/owl.theme.css" rel="stylesheet" />
    <%--插件结束--%>

    <!--[if lt IE 9]>
      <script type="text/javascript" src="../../Scripts/html5shiv.js"></script>
      <script type="text/javascript" src="../../Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<body>
   <%-- topbar开始 --%>
    <div class="topbar">
      <div class="grid-990 topbar-wrap fn-clear">
        <ul class="topmenu">
          <li class="topmenu-item topmenu-item-first">
              <a title="登录" target="_blank" href="../login/login.aspx">登录</a>
              <b class="split">-</b>
              <a title="注册" target="_blank" href="../reg/ureg.aspx">注册</a>
          </li>
          <li class="topmenu-item topmenu-item-last">
              <a title="帮助中心" target="_blank" href="http://help.alipay.com/lab/index.htm">帮助中心</a>
          </li>
        </ul>
      </div>
    </div>
    <%-- topbar结束 --%>

    <%-- header菜单开始 --%>
    <header class="header" coor="header">
        <div class="grid-990 header-wrap fn-clear">
            <a class="ui-logo-lvd  fn-left " href="#">律金</a>
            <nav>
                <ul class="nav">
                    <li id="home" class="nav-item">
                       <a class="nav-item-link nav-item-link-active" href="home.aspx">首页</a>
                    </li>
                    <li id="legalknowledge" class="nav-item ">
                       <a class="nav-item-link" href="knowledge.aspx">法律知识库</a>
                    </li>
                    <li id="lawyer" class="nav-item ">
                       <a class="nav-item-link" href="#">律师/律所</a>
                    </li>
                    <li id="platformintroduction" class="nav-item ">
                       <a class="nav-item-link" href="about.aspx">平台介绍</a>
                    </li>
                    <li id="usage" class="nav-item ">
                       <a class="nav-item-link" href="#">使用方式</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
    <%-- header菜单结束 --%>

    <%-- 轮播图开始 --%>
    <div id="banner" class="flexslider">
        <div class="login-box">
            <iframe id="loginIframe" class="fn-hide" width="286" height="387" frameborder="0" scrolling="no" src="../login/minilogin.aspx" allowtransparency="true" style="display: block;"></iframe>
        </div>
        <ul class="slides">
            <li>
                <img src="../../Images/home/lun1.png" />
            </li>
            <li>
                <img src="../../Images/home/lun2.png" />
            </li>
            <li>
                <img src="../../Images/home/lun3.png" />
            </li>
            <li>
                <img src="../../Images/home/lun4.png" />
            </li>
        </ul>
    </div>
    <%-- 轮播图结束 --%>

    

    <%-- 内容开始 --%>
    <section class="main" role="main">
        <div class="grid-990 paddingabout fn-clear">
           <div id="datalv">
                <div class="grid-990 paddingabout fn-clear">
                    <ul class="clearfix">
                        <li>
                            <img src="../../Images/home/data1.png" />
                            <span></span>
                        </li>
                        <li>
                            <img src="../../Images/home/data2.png" />
                            <span></span>
                        </li>
                        <li>
                            <img src="../../Images/home/data3.png" />
                            <span></span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <%-- 业务类型开始 --%>
        <div class="grid-990 paddingabout fn-clear">
            <section class="widget doctors-carousel doctors">
                <div class="widget-title fn-clear">
                    我们的 业务
                    <div class="owl-controls clickable">
                        <div class="owl-buttons">
                            <div class="owl-prevh">
                                <i class="fa fa-angle-left"></i>
                            </div>
                            <div class="owl-nexth">
                                <i class="fa fa-angle-right"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="owl-yewx" class="owl-carousel owl-theme">
                    <%--<div class="owl-item">
                        <div class="item">
                            <div class="gpic">
                                <img src="../../Images/home/guang3.jpg" alt="Dr. Butcher House">
                            </div>
                            <h3>互联网金融</h3>
                            <p>互联网金融说明</p>
                        </div>
                    </div>--%>
                    <div class="owl-item">
                        <div class="item">
                            <div class="gpic">
                                <img src="../../Images/home/anjian/lx1.png" alt="Dr. Butcher House">
                            </div>
                            <h3>借贷案件</h3>
                            <p>借贷案件说明</p>
                        </div>
                    </div>
                    <div class="owl-item">
                        <div class="item">
                            <div class="gpic">
                                <img src="../../Images/home/anjian/lx2.png" alt="Dr. Butcher House">
                            </div>
                            <h3>买卖合同纠纷</h3>
                            <p>买卖合同纠纷说明</p>
                        </div>
                    </div>
                    <div class="owl-item">
                        <div class="item">
                            <div class="gpic">
                                <img src="../../Images/home/anjian/lx3.png" alt="Dr. Butcher House">
                            </div>
                            <h3>交通事故</h3>
                            <p>交通事故说明</p>
                        </div>
                    </div>
                    <div class="owl-item">
                        <div class="item">
                            <div class="gpic">
                                <img src="../../Images/home/anjian/lx4.png" alt="Dr. Butcher House">
                            </div>
                            <h3>医疗纠纷</h3>
                            <p>医疗纠纷说明</p>
                        </div>
                    </div>
                    <div class="owl-item">
                        <div class="item">
                            <div class="gpic">
                                <img src="../../Images/home/anjian/lx5.png" alt="Dr. Butcher House">
                            </div>
                            <h3>婚姻继承</h3>
                            <p>婚姻继承说明</p>
                        </div>
                    </div>
                    <div class="owl-item">
                        <div class="item">
                            <div class="gpic">
                                <img src="../../Images/home/anjian/lx6.png" alt="Dr. Butcher House">
                            </div>
                            <h3>其他经济纠纷</h3>
                            <p>其他经济纠纷说明</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <%-- 业务类型结束 --%>
        <%-- 律师开始 --%>
        <div class="grid-990 paddingabout fn-clear">
            <section class="widget doctors-carousel doctors">
                <div class="widget-title fn-clear">
                    我们的 律师
                    <div class="owl-controls clickable">
                        <div class="owl-buttons">
                            <div class="owl-prev">
                                <i class="fa fa-angle-left"></i>
                            </div>
                            <div class="owl-next">
                                <i class="fa fa-angle-right"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="owl-ls" class="owl-carousel owl-theme"></div>
            </section>
        </div>
        <%-- 律师结束 --%>
        <div class="grid-990 paddingabout fn-clear">
            <article id="new" class="about-item services">
                <div class="about-item-title">新受理</div>
                <ul>
                                        
                </ul>
                <b class="more fa fa-long-arrow-right" href="#" title="查看更多"></b>
            </article>
            <article id="having" class="about-item services">
                <div class="about-item-title">待执行</div>
                <ul>
                    
                </ul>
                <b class="more fa fa-long-arrow-right" href="#" title="查看更多"></b>
            </article>
            <article id="stay" class="about-item services about-item-last">
                <div class="about-item-title">已办理</div>
                <ul>
                    
                </ul>
                <b class="more fa fa-long-arrow-right" href="#" title="查看更多"></b>
            </article>
        </div>
        
    </section>
    <%-- 内容结束 --%>

    <footer class="footer page-footer">
        <a class="top-link" id="top-link" href="#"><i class="fa fa-angle-double-up"></i></a>
        <div class="grid-row">
            <div class="grid-col grid-col-4">
                <section class="widget-alt cooperation">
				    <div class="widget-icon"></div>
                    <div class="widget-title">战略合作伙伴</div>
                    <dd>
                        <a target="_blank" href="http://www.upyun.com/">
                            <img src="../../Images/home/qiniu.png">
                        </a>
                    </dd>
                    <dd>
                        <a target="_blank" href="http://www.upyun.com/">
                            <img src="../../Images/home/qiniu.png">
                        </a>
                    </dd>
                    <dd>
                        <a target="_blank" href="http://www.upyun.com/">
                            <img src="../../Images/home/qiniu.png">
                        </a>
                    </dd>
                    <dd>
                        <a target="_blank" href="http://www.upyun.com/">
                            <img src="../../Images/home/qiniu.png">
                        </a>
                    </dd>
                    <dd>
                        <a target="_blank" href="http://www.upyun.com/">
                            <img src="../../Images/home/qiniu.png">
                        </a>
                    </dd>
                    <dd>
                        <a target="_blank" href="http://www.upyun.com/">
                            <img src="../../Images/home/qiniu.png">
                        </a>
                    </dd>
                    <dd>
                        <a target="_blank" href="http://www.upyun.com/">
                            <img src="../../Images/home/qiniu.png">
                        </a>
                    </dd>
			    </section>
            </div>
            <div class="grid-col grid-col-4">
                <section class="widget-alt lhgz">
				    <div class="widget-icon"></div>
                    <div class="widget-title">关注律金</div>
                    <a class="social-sina" href="#" title="立即关注律金">立即关注</a>
                    <a class="social-weixin" href="#" title="立即关注律金">立即关注</a>
                    <div class="lhgz_li"><i class="fa fa-phone"></i>全国24小时热线 555-55555</div>
			    </section>
            </div>
        </div>
    </footer>

    <form id="form1" runat="server"></form>

    <script src="../../Scripts/libs/artTemplate.js"></script>
    <script src="../../Scripts/libs/template.js"></script>
    <script src="../../Scripts/libs/jquery.flexslider.js"></script>
    <script src="../../Scripts/libs/owl.carousel.min.js"></script>

    <script src="../../Scripts/module/home/home.js"></script>
</body>
</html>
