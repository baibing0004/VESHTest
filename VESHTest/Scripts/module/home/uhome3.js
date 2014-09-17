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
            //显示修改表单以及提交修改表单
            _this.form();
        };
        _this.loadTb = function () {
            $("#container").append(FooterTemp());
        };
        _this.file = function () {

        };
        _this.form = function () {
            $("#userinfo-btn").click(function () {
                $("#userinfo-show").hide();
                $("#userinfo-edit").show();

            });
        };
    },
    obj:null
}
$(function () {
    uhome3.obj = new uhome3.uhome3({});
    uhome3.obj.init();
});