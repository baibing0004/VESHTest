var about = {
    param: null,
    option: {},
    about: function () {
        var _this = this;
        
        (function () {
           
            
        })();
        _this.init = function () {
            //初始化加载
            _this.loadTb();
            //菜单效果触发
            _this.menuload();
        };
        _this.loadTb = function () {
            //导航菜单
            $('#menu-primary').onePageNav();
        };
        _this.menuload = function () {
            $("#menu-primary li").hover(function () {
                $(this).addClass("current-menu-item");
                var t = $(this).attr("mtop");
                $("#J_NavLabel").animate({ top: t + "px" }, 200);
            }, function () {
                $(this).removeClass("current-menu-item").stop(true, true).animate({ top: "0px" }, 200);
            });
        };
    },
    obj:null
}
$(function () {
    about.obj = new about.about({});
    about.obj.init();
});