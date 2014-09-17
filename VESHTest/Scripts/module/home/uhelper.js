var Uhelper = {
    param: null,
    option: {},
    Uhelper: function () {
        var _this = this;

        (function () {


        })();
        _this.init = function () {
            //我的案件列表初始化加载
            _this.loadTb();

        };
        _this.loadTb = function () {
            $("#container").append(FooterTemp());
        };
    },
    obj: null
}
$(function () {
    Uhelper.obj = new Uhelper.Uhelper({});
    Uhelper.obj.init();
});