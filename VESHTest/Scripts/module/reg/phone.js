var phone = {
    param: null,
    option: {},
    phone: function () {
        var _this = this;

        (function () {


        })();
        _this.init = function () {
            //初始化加载
            _this.loadTb();
            //表单提交
            _this.form();

        };
        _this.loadTb = function () {


        };
        _this.form = function () {
            $("#p-submit").click(function () {
                $(".loading-text").show(400).delay(100).hide(400);
                $(window.parent.document).find("#registration-form1").hide();
                $(window.parent.document).find("#registration-form2").show();
                $(window.parent.document).find(".ui-xbox-mask").hide();
                $(window.parent.document).find(".navi-container ol li").removeClass("ui-step-active").eq("1").addClass("ui-step-active");
                $(window.parent.document).find(".ui-xbox").remove();
            });
        };
    },
    obj: null
}
$(function () {
    phone.obj = new phone.phone({});
    phone.obj.init();
});