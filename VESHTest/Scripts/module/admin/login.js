var Login = {
    param: null,
    option: {},
    Login: function () {
        var _this = this;

        (function () {
            //初始化登录页背景图自适应浏览器大小
            winWidth = $(window).width();
            winHeight = $(window).height();
            if (winHeight <= 657) {
                $("#G-authcenter-bg").width(winWidth).height("657px");
                $("#G-authcenter-bg img").width(winWidth + 278).height("657px");
            } else {
                $("#G-authcenter-bg").width(winWidth).height(winHeight);
                $("#G-authcenter-bg img").width(winWidth + 278).height(winHeight);
            }

        })();
        _this.init = function () {
           
        };
        //登录页背景图自适应浏览器大小
        Resize = function () {
            winWidth = $(window).width();
            winHeight = $(window).height();
           // $(".authcenter-body").css("width", "90%");
            if (winHeight <= 657) {
                $("#G-authcenter-bg").width(winWidth).height("657px");
                $("#G-authcenter-bg img").width(winWidth + 278).height("657px");
            } else {
                $("#G-authcenter-bg").width(winWidth).height(winHeight);
                $("#G-authcenter-bg img").width(winWidth + 278).height(winHeight);
            }
        }
    },
    obj: null
}
$(function () {
    Login.obj = new Login.Login({});
    Login.obj.init();
});
