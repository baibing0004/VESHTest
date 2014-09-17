<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VESHTest.Module.admin.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>律金平台</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <link href="../../Styles/admin/common.css" rel="stylesheet" />
    <link href="../../Styles/home/ustyle.css" rel="stylesheet" />
    <link href="../../Styles/admin/index.css" rel="stylesheet" />
    
</head>
<body>
    <div id="header" class="global-reset global-container global-type-global">
        <div class="global-top-a">
            <div class="global-top">
                <div class="global-top-container">
                    <ul class="global-top-right">
                        <li class="global-top-item global-top-item-last"></li>
                        <li class="global-top-item">你好用户,</li>
                        <li id="globalUser" class="global-top-item">
                          <span class="global-top-text">
                            丁磊
                            
                          </span>
                        </li>
                        <li class="global-top-item">
                          <a id="loginout" class="global-top-link">退出</a>
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
                            <a href="#" title="用户登录首页">
                                <img width="125" height="37" src="../../Images/home/logo.png" alt="律金平台">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="global-subheader"></div>
            </div>
        </div>
        
        
    </div>
    <div id="main">
        <div class="content">
          <div class="i-assets fn-clear">
            <div class="col-left">
                <div class="nav">
                    <div class="nav-menu">
		                <div id="menu_h" class="nav-label" style="top: 0px; display: block;">
                            <span></span>
		                </div>
		                <ul id="menu-primary" class="amenu">
                            <li class="menu-item menu-item-type-custom menu-item-object-custom current" mtop="0" >
                                <a url="adminManage">管理员管理</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page" mtop="40" >
                                <a url="RoleManage">角色管理</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page" mtop="80" >
                                <a url="permissionManage">权限管理</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page" mtop="120" >
                                <a url="lawyerManage">律师管理</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page" mtop="160" >
                                <a url="consultManage">申请管理</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page" mtop="200" >
                                <a url="caseManage">案件管理</a>
                            </li>
                            </ul>	
                    </div>
                </div>
            </div>
            <div class="col-right">
                <div class="lv_iframe">
                    <iframe frameborder="0" scrolling="no" id="contentIframe" width="100%" height="100%"></iframe>
                </div>
            </div>
          </div>
        </div>
    </div>
    <div id="footer"></div>
 
    <form id="form1" runat="server"></form>

    <script src="../../Scripts/libs/artTemplate.js" type="text/javascript"></script>
    <script src="../../Scripts/libs/template.js" type="text/javascript"></script>
    <script src="../../Scripts/module/admin/index.js" type="text/javascript"></script>

</body>

</html>
