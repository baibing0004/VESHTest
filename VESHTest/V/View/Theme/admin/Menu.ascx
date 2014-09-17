<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="VESHTest.V.View.Theme.admin.Menu" %>
<div class="col-left">
    <div class="nav">
        <div class="nav-menu">
            <div style="top: 0px; display: block;" id="J_NavLabel" class="nav-label">
                <span></span>
            </div>
            <ul id="menu-primary" class="menu">
            </ul>
        </div>
    </div>
</div>
<%if (this.SessionData.IsLogin) {%>
<script type="text/javascript">
    $(function () {        
        Menu = <%=(this.MenuData)%> ;
        var menuul = $("#menu-primary");
        if (VJ.isValid(Menu)) {
            menuul.empty();
            //获取文件名
            function getFileName(path, lastChar) {
                path = path.substring(path.lastIndexOf(lastChar) + 1, path.length);
                if (path.indexOf('?') >= 0)
                    path = path.substring(0, path.lastIndexOf('?'));
                return path;
            }
            //获取下一个节点，否则返回null
            function getNext(data, i) {
                return (i < data.length - 1) ? data[i + 1] : null;
            }
            //获取菜单项，生成最终菜单，请注意：如果菜单项为"#"，且下级无此菜单，那么不予显示本菜单项，此仅仅针对菜单标题。
            function getMenuLi(node, data, i, filename) {
                var v = data[i];
                var nv = getNext(data, i);

                if (v.URLFormatting == '#' && (!VJ.isValid(nv) || (VJ.isValid(nv) && v.MenuLevel == nv.MenuLevel))) {
                    //如果菜单项为"#"，且下级无此菜单，那么不予显示本菜单项，此仅仅针对菜单标题。
                    return i;
                }
                var li = VJ.newEl("li", "menu-item menu-item-type-post_type menu-item-object-page", "").attr("id", VJ.getValue(v.PageID, ''));
                var link = $(VJ.newEl("a", "", v.Name).attr('target', v.Target));

                /*if (v.URLFormatting == '{0}') {
                //取本域RemoteUri值（不推荐）
                link.attr("href", eval("RemoteUri.CFG_MENU_" + v.PageID));
                } else if (v.URLFormatting == '{1}') {
                //取外地IP+RemoteUri值（不推荐）
                link.attr("href", eval(PoolServerUri)[0].URI + eval("RemoteUri.CFG_MENU_" + v.PageID));
                } else */
                if (v.URLFormatting == '') {
                    //特别处理当需要特别操作时
                    link = v.Name;
                } else {
                    //常见的设置 # 或者绝对地址
                    link.attr("href", v.URLFormatting);
                }
                li.append(link);
                if (typeof (link) != "string") {
                    var file = getFileName(link.attr("href"), '/');
                    if (file == filename) {
                        li.removeClass('menu-item-type-post_type').removeClass('menu-item-object-page').addClass('menu-item-type-custom').addClass('menu-item-object-custom').addClass('current').addClass("g_selected");
                        //$('.g_path').html('> '+ v.Name);                
                    }
                }
                node.append(li);
                //添加所有父节点li为选中状态
                if (li.hasClass('g_selected')) {
                    li.parents('li').removeClass('menu-item-type-post_type').removeClass('menu-item-object-page').addClass('menu-item-type-custom').addClass('menu-item-object-custom').addClass('current').addClass("g_selected");
                }
                //深度优先递归返回整个菜单
                if (!VJ.isValid(nv) || v.MenuLevel == nv.MenuLevel) {
                    return i;
                } else if (v.MenuLevel < nv.MenuLevel) {
                    link.append("<span class='listBtn'></span>");
                    var ul = VJ.newEl("ul", "", "");
                    li.append(ul);
                    for (var q = i + 1; q < data.length; q++) {
                        q = getMenuLi(ul, data, q, filename);
                        i = q;
                        if (i < 0) {
                            //判断是否nv比v的还大否则就要向上传了
                            var _nv = getNext(data, i * -1);
                            if (!VJ.isValid(_nv) || _nv.MenuLevel < v.MenuLevel)
                                return i;
                            else
                                return i * -1;
                        }
                    }
                    return i;
                } else {
                    return -1 * i;
                }
            }

            var data = Menu;
            var filename = getFileName(window.location.pathname, '/');
            for (var w = 0; w < data.length; w++) {
                w = getMenuLi(menuul, data, w, filename);
            }
        }
    });    
</script>
<%} %>
