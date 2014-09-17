<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uhome1.aspx.cs" Inherits="VESHTest.Module.home.user.uhome1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>委托人-我要委托</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <link href="../../Styles/libs/webuploader.css" rel="stylesheet" />
    <link href="../../Styles/libs/diyUpload.css" rel="stylesheet" />
    <link href="../../Styles/libs/consumeprod.record-1.3.css" rel="stylesheet" />
    <link href="../../Styles/home/ustyle.css" rel="stylesheet" />
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome1.css" rel="stylesheet" />
   
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
                        <li class="global-subnav-item global-subnav-item-current" style="margin-left: 20px">
                            <a href="#">我要委托</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
                            <a href="uhome2.aspx">我的案件</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
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
            	      <h2>我要委托</h2>
                      <span class="location"><a href="uhome.aspx">首页</a><em>&gt;</em>我要委托</span>
                   </div>
                   <div class="content-main">
                      <div class="tabs">
                        <ul class="tabs-menu clearfix">
		        	        <li><a href="#" class="selected" id="china"><span>国内</span></a></li>
		                </ul>
                        <div class="tabs-content">
                            <div class="tabs-box minheight">
                                <div id="">
                                    <h3 class="h-title-in">选择案件类型</h3>
                                    <div class="widget-graybox mb10">
                                        <form id="mycase" method="post">
                                            <table class="table-order" width="100%">
                                                <colgroup><col width="10%"><col width="40%"><col width="10%"><col width="40%"></colgroup>
                                                <tbody> 
                                                    <tr> 
                                                        <th><label>委托人:</label></th>
                                                        <td>
                                                            <input type="text" maxlength="8" name="Name" id="Name" class="input-text input-maxshort" placeholder="请输入委托人姓名" style="width: 80%;">
                                                            <span class="hot ml5">*</span>
                                                            <%--<span class="Validform_checktip" id=""></span>--%>
                                                        </td>
                                                        <th><label>案件类型:</label></th> 
                                                        <td colspan="0">
                                                            <select name="CaseType" id="CaseType">
                                                                <option value="-1">请选择案件类型</option>
                                                                <option value="0">借贷案件</option>
                                                                <option value="1">买卖合同纠纷</option>
                                                                <option value="2">交通事故</option>
                                                                <option value="3">医疗纠纷</option>
                                                                <option value="4">婚姻继承</option>
                                                                <option value="5">其他经济纠纷</option>
                                                            </select>
                                                            <span class="hot ml5">*</span>
                                                        </td>
                                                    </tr>
                                                    
                                                </tbody>
                                            </table>
                                            <table class="table-order" width="100%">
                                                 <colgroup><col width="10%"><col width="90%"></colgroup>
                                                 <tbody>
                                                    <tr> 
                                                        <th><label>服务费比例为:</label></th>
                                                        <td>
                                                            <input type="text" value="民间借贷案：30%  单位(万元)" name="CaseRMB" id="CaseRMB" class="input-text input-maxshort" style="width: 80%;background-color: #e1e1e1;color: #d80c24;" readonly />
                                                            <span class="hot ml5">*</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th><label>申请资料:</label></th>
                                                        <td>
                                                            <span class="hot ml5" style="float:left">*注意:以下所提示的材料必须齐全,如果缺少律师会要求您补全,所以尽量提供完整！谢谢！</span></br>
                                                            <ul class="table-order-casetype">
                                                                <li><p>1.借贷案件，原告提交的证据《借贷合同》、《抵押担保合同》、《借据/收据》、《汇款单/凭证》、《其它证据》（如果是现金，还要有证人等证据），对方有无还款承诺书等 </p></li>
                                                                <li><p>2.买卖合同纠纷，需要提交的证据《买卖合同》、《送/收货单》、《质量检测报告》、《还款确认单》、《其它证据》等 </p></li>
                                                                <li><p>3.交通事故，则要《交通事故责任认定书》、《伤残鉴定结论》、《病历》、《医药费票据》、《工资收入证明》、《其它证据》、原告支付的各种费用等 </p></li>
                                                                <li><p>4.医疗纠纷：《病历》、《医药费票据》、《医疗事故/过错鉴定结论》、《工资收入证明》、、《其它证据》</p></li>
                                                                <li><p>5.其它经济纠纷：《合同》、《汇款凭证》、《确认单》、《其它证据》</p></li>
                                                                <li><p>6.婚姻继承：《结婚证》、《房产证》、《死亡证明》、《其它证据》</p></li>
                                                            </ul>
                                                            <div id="application"></div>
                                                        </td>
                                                    </tr>
                                                 </tbody>
                                            </table>
                                            <table class="table-order" width="100%">
                                                 <colgroup><col width="100%"></colgroup>
                                                 <tbody>
                                                    <tr> 
                                                        <td style="text-align: center;">
                                                           <input id="" class="ui-button" type="button" value="提 交 申 请 资 料">
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
    </div>

    <form id="form1" runat="server"></form>

    <script type="text/javascript" src="../../Scripts/libs/artTemplate.js"></script>
    <script type="text/javascript" src="../../Scripts/libs/template.js"></script>
    <script type="text/javascript" src="../../Scripts/libs/webuploader.html5only.min.js"></script>
    <script type="text/javascript" src="../../Scripts/libs/diyUpload.js"></script>

    <script src="../../Scripts/module/home/uhome1.js"></script>
</body>
</html>
