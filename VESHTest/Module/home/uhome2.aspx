<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uhome2.aspx.cs" Inherits="VESHTest.Module.home.uhome2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>委托人-我的案件</title>
    <link type="image/x-icon" href="../../images/home/logo.ico" rel="shortcut icon">

    <%--<link href="../../Styles/libs/webuploader.css" rel="stylesheet" />
    <link href="../../Styles/libs/diyUpload.css" rel="stylesheet" />--%>
    <link href="../../Styles/libs/consumeprod.record-1.3.css" rel="stylesheet" />
    <link href="../../Styles/home/ustyle.css" rel="stylesheet" />
    <link href="../../Styles/home/index.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome.css" rel="stylesheet" />
    <link href="../../Styles/home/uhome2.css" rel="stylesheet" />

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
                        <li class="global-subnav-item global-subnav-item-current" style="margin-left: 20px">
                            <a href="uhome2.aspx">我的案件</a>
                        </li>
                        <li class="global-subnav-item" style="margin-left: 20px">
                            <a href="uhome3.aspx">账户设置</a>
                        </li>
                        <div class="global-subnav-input">
                            <form accept-charset="gb2312" target="_blank" class="my-app-search-form fn-hide" id="J-my-app-search-form" method="GET" action="" style="display: block;">
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
        <div class="i-banner"></div>
        <div class="i-content">
            <div class="i-assets fn-clear">
                <div class="contentbox">
                    <div class="content-top clearfix">
            	      <span class="arrowSign"></span>
            	      <h2>我的案件</h2>
                      <span class="location"><a href="/sc/index.html">首页</a><em>&gt;</em>我的案件</span>
                   </div>
                   <div class="content-main">
                       <div class="tabs">
                           <div class="tabs-content">
                                <div class="tabs-box minheight mod-main mod-comm lefta-box">
                                    <div class="mt">
                                        <div class="global-subnav-input">
                                            <form style="display: block;" action="" method="GET" id="Form2" class="my-app-search-form fn-hide" target="_blank" accept-charset="gb2312">
                                                <input type="text" id="Text1" placeholder="输入案件编号" name="word" autocomplete="off">
                                                <i class="iconfont global-subnav-input-scan" title="查询/搜索"></i>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="mc">
                                        <table class="tb-void">
                                            <colgroup>
	                                            <col width="110">
                                                <col width="110">
	                                            <col width="80">
                                                <col width="80">
                                                <col width="80">
	                                            <col width="110">
	                                            <col width="150">
	                                            <col width="100">
	                                            <col width="80">
                                            </colgroup>
                                            <thead>
	                                            <tr>
		                                            <th>案件编号</th>
                                                    <th>案件类型</th>
		                                            <th>律师</th>
                                                    <th>原告</th>
                                                    <th>被告</th>
                                                    <th>案件执行关联人</th>
		                                            <th>案件金额</th>
		                                            <th>
			                                            <select class="sele" name="" id="submitDate">
				                                            <option selected="" value="0">全部时间</option>
			                                            </select>
		                                            </th>
		                                            <th>
			                                            <select class="sele" name="" id="orderState">
				                                            <option selected="" value="4096">全部状态</option>
				                                            <option value="0">申请</option>
				                                            <option value="1">补足</option>
				                                            <option value="2">审核</option>
				                                            <option value="3">立案</option>
				                                            <option value="4">诉讼</option>
                                                            <option value="5">执行</option>
                                                            <option value="6">结案</option>
			                                            </select>
		                                            </th>
		                                            <th>操作</th>
	                                            </tr>
                                            </thead>
                                            <tbody id="">
                                                <tr class="tr-td" id="">
                                                    <td><div class="u-name">1835761381</div></td>
                                                    <td><div class="u-name">借贷案件</div></td>
                                                    <td><div class="u-name">张三</div></td>
                                                    <td><div class="u-name">李四</div></td>
                                                    <td><div class="u-name">王武</div></td>
                                                    <td><div class="u-name">刘旭</div></td>
        	                                        <td>1100（万元）<br></td>
                                                    <td>
                                                        <span class="ftx-03">2014-09-08 <br> 20:35:04</span>
                                                    </td>            
                                                    <td class="td-01">
                                                        <strong class="ftx-04 order-statu">申请</strong>
                                                        <div class="tooltip">
                                                            案件跟踪
                                                            <a></a>
                                                        </div>
                                                    </td>      
                                                    <td width="100" class="order-doi" id="">
        	                                            <a href="javascript:;">评价</a></br>
                                                        <a href="javascript:;">取消委托</a></br>
                                                        <a href="javascript:;">投诉</a>
                                                    </td>
                                                </tr>
                                                <tr class="tr-th">
                                                    <td colspan="10">
                                                        <div class="tr-th-zz">
                                                            <span>委托人作证资料</span>
                                                            <div class="img-list">
            		        		  		                     <a target="_blank" class="img-box" href="#">
        					                                            <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
        		  		                                         </a>
        		               	                            </div>
                                                        </div>
                                                        <div class="tr-th-jz">
                                                            <span>律师卷宗资料</span>
                                                            <div class="img-list">
            		        		  		                     <a target="_blank" class="img-box" href="#">
        					                                            <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
                                                                       <img width="50" height="50" title="美国逸客Eagle Creek进口男女旅行包15.6寸电脑双肩包背包ECB40506010 黑色 适合13-15.6寸电脑" src="http://img10.360buyimg.com/N5/jfs/t154/217/1688730317/453247/b54d69bd/53b649bbNe1b9fd72.jpg" class="err-product">
        		  		                                         </a>
        		               	                            </div>
                                                        </div>
                                                        
                                                        
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="10">
                                                        <div class="total">
                                                          <ul>
                                                            <li><span>案件总金额：</span>￥1100(万元)</li>
                                                            <li><span>- 平台垫付费用：</span>￥900(万元)</li>
			                                                <li><span>- 法律服务费用：</span>￥10(万元)</li>	                
    	                                                  </ul>
                                                          <span class="clr">ad</span> <span style="color:#EDEDED;"></span>
                                                          <div class="extra">
                                                                 应付总额：<span class="ftx04"><b>￥748.00</b></span>
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
            </div>
        </div>
    </div>

    <form id="form1" runat="server"></form>

    <script type="text/javascript" src="../../Scripts/libs/artTemplate.js"></script>
    <script type="text/javascript" src="../../Scripts/libs/template.js"></script>
<%--    <script type="text/javascript" src="../../Scripts/libs/webuploader.html5only.min.js"></script>
    <script type="text/javascript" src="../../Scripts/libs/diyUpload.js"></script>--%>

    <script src="../../Scripts/module/home/uhome2.js"></script>
</body>
</html>
