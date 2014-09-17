var law = {
    param: null,
    option: {},
    law: function () {
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
            //初始菜单效果
            $("#J_Nav").animate({ left: '0' },800);
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
    law.obj = new law.law({});
    law.obj.init();
});