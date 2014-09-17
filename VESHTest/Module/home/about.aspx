<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="VESHTest.Module.home.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>平台介绍</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <link href="../../Styles/libs/consumeprod.record-1.3.css" rel="stylesheet" />
    <link href="../../Styles/home/ustyle.css" rel="stylesheet" />
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome.css" rel="stylesheet" />
    <link href="../../Styles/home/about.css" rel="stylesheet" />

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
                            <li class="global-nav-item global-nav-item-current">
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
                    <div id="J_Nav" class="nav">
                        <a target="_self" href="#" class="ued-logo">
		                    <img src="../../Images/home/guang2.jpg" />
	                    </a>
                        <div class="nav-menu">
		                    <div class="nav-label" id="J_NavLabel" style="top:0px;display:block">
                                <span></span>
		                    </div>
		                    <ul class="menu" id="menu-primary">
                                <li class="menu-item menu-item-type-custom menu-item-object-custom" mtop="0">
                                    <a href="#ldjj">律金简介</a>
                                </li>
                                <li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children" mtop="40">
                                    <a href="#yyms">运营模式</a>
                                </li>
                                <li class="menu-item menu-item-type-post_type menu-item-object-page" mtop="80">
                                    <a href="#tdjs">团队介绍</a>
                                </li>
                                <li class="menu-item menu-item-type-post_type menu-item-object-page" mtop="120">
                                    <a href="#ccyc">诚征英才</a>
                                </li>
                                <li class="menu-item menu-item-type-post_type menu-item-object-page" mtop="160">
                                    <a href="#lxwm">联系我们</a>
                                </li>
                             </ul>	
                        </div>
                    </div>
                </div>
                <div class="col-right">
				    <div class="content-bd">
                        <div class="ued-about">
                            <div class="ued-intro section" id="ldjj">
                                <img src="../../Images/home/about/about-lvjin.jpg" class="ued-intro-us"/>
                                <h3>关于《律金》</h3>
			                    <h3 class="intro-title">"让每一个人都能够得到专业律师的帮助"是律金的梦想和使命!</h3>
			                    <div class="intro-desc">
				                    <p>建设有中国特色的社会主义市场经济,就是建设法治经济.法律已成为指导社会生活各个方面的行为准则,离开法律寸步难行,没有专业律师的帮助就不可能有效维护自己的合法权益.随着电子商务时代的来临、互联网金融普遍发展,全民性的、跨区域的法律需求是传统的律师事务所或律师个人服务无法满足的.平民面对高昂的律师费、诉讼费等诉讼成本,往往望而却步,放弃通过法律途径维护自己合法的经济利益.</p>
				                    <p>"让每一个有法律需求的人都能得到专业律师的帮助",这是律金成立的初衷，也是律金的价值理念.律金统筹全国各地最优秀的专业律师,有效地提供跨区域法律服务,通过先行垫付诉讼费、律师费、差旅费、鉴定费等所有诉讼费用,免除当事人的负担,真正的使每一个人充分地、公平地享有司法资源,从而实现社会的公平正义.</p>
                                    <p>律金的客户是每一个有法律需求的委托人:</p>
                                    <p>首要是以P2P投资者为代表的跨区域的委托人.</p>
                                    <p>其次是传统经济案件中没有能力预付律师费、诉讼费等诉讼成本的委托人.</p>
                                    <p>律金为平民服务的同时,也愿意与您共担商业上的风险.所以,一切银行、类金融机构、企业、商业人士都是我们的客户.</p>
                                    <p>此外,每一个律金聘用的专业律师、律师事务所也是我们服务的对象.</p>
                                    <p>客户:只需提交您的有关资料至律金网上平台.</p>
                                    <p>律金:垫付律师费、诉讼费等所有费用,指派专业律师通过法律途径为客户挽回经济利益.</p>
                                    <p>律金的存在不仅仅因为我们有全国各地最优秀的专业律师资源，更赖于客户的信赖和支持.</p>
			                    </div>
		                    </div>
                            <div class="ued-intro section" id="yyms">
			           
                                    <p>律金的价值：让每一个人都能得到专业律师的帮助</p>

                                    <p>律金的文化：“勿以案小而不为”、“案件有大小，态度无差别”、……</p>
			     
		                    </div>
                            <div class="ued-intro section" id="tdjs">
                                    <p>寇向卉，律金创始人，简介：</p>
                                    <p>李伯诚，律金创始人，首席执行官。简介：</p>
                                    <p>陈辉，律金创始人，市场总监。简介：</p>
		                    </div>
                            <div class="ued-intro section" id="ccyc">
			           
                                    <p>招聘</p>
			     
		                    </div>
                            <div class="ued-intro section" id="lxwm">
			           
                                    <p>联系我们地址</p>
			     
		                    </div>
                        </div>
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

    <footer class="footer"></footer>

    <form id="form1" runat="server"></form>

    <script src="../../Scripts/libs/artTemplate.js"></script>
    <script src="../../Scripts/libs/template.js"></script>
    <script src="../../Scripts/libs/jquery.nav.js"></script>

    <script src="../../Scripts/module/home/about.js"></script>
</body>
</html>
