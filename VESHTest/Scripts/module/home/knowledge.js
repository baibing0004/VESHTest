var knowledge = {
    param: null,
    option: {},
    knowledge: function () {
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
            $("#J_Nav").animate({ left: '0' }, 800);
        };
        _this.menuload = function () {
            $("#menu-primary li").hover(function () {
                var t = $(this).attr("mtop");
                $(this).addClass("current-menu-item");
                $("#J_NavLabel").animate({ top: t +"px"}, 300);
            }, function () {
                $(this).removeClass("current-menu-item").stop(true, true).animate({ top: "0px" }, 300);
            });
        };
    },
    obj:null
}
$(function () {
    knowledge.obj = new knowledge.knowledge({});
    knowledge.obj.init();
});