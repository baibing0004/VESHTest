var uhome3 = {
    param: null,
    option: {},
    uhome3: function () {
        var _this = this;
        
        (function () {
           
            
        })();
        _this.init = function () {
            //初始化加载
            _this.loadTb();
            //上传申请资料
            _this.file();
        };
        _this.loadTb = function () {
            $("#container").append(FooterTemp());
        };
        _this.file = function () {

        };
    },
    obj:null
}
$(function () {
    uhome3.obj = new uhome3.uhome3({});
    uhome3.obj.init();
});