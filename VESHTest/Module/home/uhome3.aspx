<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uhome3.aspx.cs" Inherits="VESHTest.Module.home.uhome3" %>

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
                              <li>
                                  <a href="uhome3.aspx" class="cur">
                                      <b class="ui-icon icon-information"></b>&nbsp;个人信息
                                  </a>
                              </li>
                              <li>
                                  <a href="uhome3password.aspx">
                                      <b class="ui-icon icon-pwd"></b>&nbsp;修改密码</a>
                              </li>
                          </ul>
                      </div>
                      <div class="tabs">
                        <ul class="tabs-menu clearfix">
		        	        <li><a href="#" class="selected"><span>个人信息</span></a></li>
		                </ul>
                        <div class="tabs-content">
                            <div class="tabs-box minheight">
                                <div id="check_msg" class="action-tips">→ 验证信息</div>
                                <ul id="Ul1" class="widget-information clearfix">
                                    <li id="Li2" class="mobilephone">
										<div class="box">
											<p class="label">手机号码：</p>
											<p id="P1" class="info" style="padding:0;">15801496228</p>
											<a id="A3" href="#" class="btn-normalmi">修改手机号</a>
										</div>
									</li>
                                    <li id="Li3" class="email">
										<div class="box">
											<p class="label pb5">邮箱地址：</p>
											<p id="P2" class="info" style="padding:0;"></p>
											<a id="A4" href="#" class="btn-normalmi">绑定邮箱地址</a>
										</div>
									</li>
                                </ul>
                                <div class="action-tips mt10">→ 基本信息</div>
                                 <form style="display:block" id="userinfo-show">
								    <table width="100%" class="table-form">
									    <colgroup>
										    <col width="15%">
										    <col width="35%">
										    <col width="15%">
										    <col width="35%">
									    </colgroup>
									    <tbody>
                                            <tr>
										        <th>真实姓名/企业名称</th>
										        <td><label id="Label1"></label></td>
										        <th>身份证号</th>
										        <td><label id="Label2"></label></td>
									        </tr>
									        <tr>
										        <th>联系地址</th>
										        <td>
                                                    <label id="Label3"></label>
										        </td>
								    		    <th>银行开户行</th>
										        <td><label id="Label4"></label></td>
									        </tr>
									        <tr>
										        <th>银行账号</th>
										        <td><label id="Label5"></label></td>
										        <th>银行开户行地址</th>
										        <td><label id="Label6"></label></td>
									        </tr>
								      </tbody>
								    </table>
								    <div class="pt20 pb20 tc">
									    <a class="ui-button" id="userinfo-btn">修 改</a>
								    </div>
							    </form>
                                <form style="display:none;" id="userinfo-edit">
								    <table width="100%" class="table-form">
									    <colgroup>
										    <col width="15%">
										    <col width="35%">
										    <col width="15%">
										    <col width="35%">
									    </colgroup>
									    <tbody>
                                            <tr>
										        <th>真实姓名/企业名称</th>
										        <td><input type="text" maxlength="32" name="" class="input-text input-noraml" id="Text1" placeholder="请输入你的真实姓名或企业名称"></td>
										        <th>身份证号</th>
										        <td><input type="text" maxlength="32" name="" class="input-text input-noraml" id="Text2" placeholder="请输入你的身份证号"></td>
									        </tr>
									        <tr>
										        <th>联系地址</th>
										        <td><input type="text" maxlength="32" name="" class="input-text input-noraml" id="Text3" placeholder="请输入你的联系地址"></td>
										        <th>银行开户行</th>
										        <td><input type="text" maxlength="32" name="" class="input-text input-noraml" id="Text4" placeholder="请输入你的银行开户行"></td>
									        </tr>
									        <tr>
										       <th>银行账号</th>
										        <td><input type="text" maxlength="32" name="" class="input-text input-noraml" id="Text5" placeholder="请输入你的银行账号"></td>
										        <th>银行开户行地址</th>
										        <td><input type="text" maxlength="32" name="" class="input-text input-noraml" id="Text6" placeholder="请输入你的银行开户行地址"></td>
									        </tr>
								       </tbody>
								    </table>
								    <div class="pt20 pb20 tc">
									    <a class="ui-button">保 存</a> 
                                        <a class="ui-button" >取 消</a>
								    </div>
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
