<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uhome3password.aspx.cs" Inherits="VESHTest.Module.home.uhome3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>委托人-账户设置</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">
    <link href="../../Styles/libs/webuploader.css" rel="stylesheet" />
    <link href="../../Styles/libs/diyUpload.css" rel="stylesheet" />
    <link href="../../Styles/libs/consumeprod.record-1.3.css" rel="stylesheet" />
    <link href="../../Styles/home/ustyle.css" rel="stylesheet" />
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome3.css" rel="stylesheet" />

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
                        <li class="global-top-item">| 客户服务热线： 400000000 </li>
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
                                <a href="uhome.aspx">我的律金</a>
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
                        <li class="global-subnav-item">
                            <a href="uhome.aspx">首页</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
                            <a href="uhome1.aspx">我要委托</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
                            <a href="uhome2.aspx">我的案件</a>
                        </li>
                        <li class="global-subnav-item global-subnav-item-current" style="margin-left: 20px">
                            <a href="uhome3.aspx">账户设置</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="container" class="ui-container">
        <div class="i-banner"></div>
        <div class="i-content">
            <div class="i-assets fn-clear">
                <div class="contentbox">
                   <div class="content-top clearfix">
            	      <span class="arrowSign"></span>
            	      <h2>账户管理</h2>
                      <span class="location"><a href="uhome.aspx">首页</a><em>&gt;</em>账户管理</span>
                   </div>
                   <div class="content-main">
                      <div class="clearfix">
                          <div class="colsSide">
                          <ul class="sideMenu">
                              <li id="" class="_header2_account_manager _header2_account_manager_HMT">
                                  <a href="uhome3.aspx">
                                      <b class="ui-icon icon-information"></b>&nbsp;个人信息
                                  </a>
                              </li>
                              <li id="" class="_header2_account_manager _header2_account_manager_HMT">
                                  <a href="uhome3password.aspx" class="cur">
                                      <b class="ui-icon icon-pwd"></b>&nbsp;修改密码</a>
                              </li>
                          </ul>
                      </div>
                      <div class="tabs">
                        <ul class="tabs-menu clearfix">
		        	        <li><a href="#" class="selected"><span>修改密码</span></a></li>
		                </ul>
                        <div class="tabs-content">
                            <div class="tabs-box minheight">
                                <div class="action-tips">→ 如需修改您的密码，请仔细填写下面的资料</div>
                                <form class="pt20">
                                   <table width="100%" class="table-form">
                                   	    <colgroup>
                                    	    <col width="20%">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                   	            <th>
                                                    <em class="hot ml5">*</em>&nbsp;当前密码：
                                   	            </th>
                                  	            <td>
                                                    <input type="password" id=""  name="" class="input-text input-normal" style="width:50%" placeholder="请输入你的当前密码">
                                  	            </td>
                                            </tr>
                                            <tr>
                                   	            <th>
                                                    <em class="hot ml5">*</em>&nbsp;新密码：
                                   	            </th>
                                  	            <td>
                                                    <input type="password" id=""  name="" class="input-text input-normal" style="width:50%" placeholder="请输入你的新密码">							
									            </td>
                                            </tr>
                                            <tr>
                                   	            <th>
                                                    <em class="hot ml5">*</em>&nbsp;重复密码：
                                   	            </th>
                                  	            <td>
                                                    <input type="password" id="" name="" class="input-text input-normal" style="width:50%" placeholder="请重新输入你的新密码">									
									            </td>
                                            </tr>
                                            <tr>
                                   	             <td></td>
	                                             <td>
                                                    <a class="ui-button" id="userinfo-btn">保 存</a>
	                                             </td>
	                                        </tr>
                                        </tbody>
                                   </table>
                                </form>
                            </div>
                        </div>
                      </div>
                      </div>
                      
                   </div>
                </div>

            </div>
        </div>
    </div>

    <form id="form1" runat="server"></form>
    <script type="text/javascript" src="../../Scripts/libs/artTemplate.js"></script>
    <script type="text/javascript" src="../../Scripts/libs/template.js"></script>
    <script type="text/javascript" src="../../Scripts/libs/webuploader.html5only.min.js"></script>
    <script type="text/javascript" src="../../Scripts/libs/diyUpload.js"></script>

    <script src="../../Scripts/module/home/uhome3.js"></script>
</body>
</html>
