var Lhome = {
    param: null,
    option: {},
    Lhome: function () {
        var _this = this;

        (function () {


        })();
        _this.init = function () {
            if (Global.out('律师首页')) {
                $('body').empty();
            }
            //我的案件列表初始化加载
            _this.loadTb();

            //临时
            $("#G-trend-consume").show();
        };
        _this.loadTb = function () {
            $("#container").append(FooterTemp());
        };
    },
    obj: null
}
$(function () {
    Lhome.obj = new Lhome.Lhome({});
    Lhome.obj.init();
});