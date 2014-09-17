var Index = {
    param: null,
    Index: function () {
        var _this = this;
        (function () {

        })();
        _this.Init = function () {
            if (Global.out('后台首页')) {
                $(document.body).empty();
            }
            //加载....
            $("#footer").append(FooterTemp());
            //菜单....
            $("#menu-primary li").click(function () {
                $("#menu-primary li").removeClass("current-menu-item");
                $(this).addClass("current-menu-item");
                var t = $(this).attr("mtop");
                $("#menu_h").animate({ top: t + "px" }, 400);
            });
            $("#menu-primary a").click(function () {
                var page = $(this).attr("url");
                $("#contentIframe").attr("src", page+".page");
            });


            //退出...
            $("#loginout").click(function () {
                Global.logout();
            });
        };
    },
    obj: null
};
$(function () {
    Index.obj = new Index.Index();
    Index.obj.Init();
});