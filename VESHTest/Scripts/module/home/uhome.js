var Uhome = {
    param: null,
    option: {},
    Uhome: function () {
        var _this = this;
        (function () {

        })();
        _this.init = function () {
            //获取URL参数
            _this.getUrl();
            //我的案件列表初始化加载
            _this.loadTb();
            //消息框
            $("body").append(messageTem());
            //查看消息框
            _this.message();
            //判断首次登录新手引导
            _this.firstlogin();
            //判断用户是否已经委托过案件,如果没有则显示不同
            _this.loadtop5();
            console.log(User);
            if (Global.out('用户首页')) {
                $('body').empty();
            }
        };
        _this.loadTb = function () {
            $("#G-nocase-tabs").hide();
            $("#container").append(FooterTemp());
            $("#advertises_list li").click(function () {
                window.location.href = "uhome1.aspx";
            });

        };
        _this.getUrl = function () {

        };
        _this.message = function () {
            $("#umessage").on("click", function () {
                $(".message-wrapper").slideDown(300);
            });
            $(".message-panel-toggle").on("click", function () {
                $(".message-wrapper").slideUp(300);
            });
            $("#umessage-tb").hover(function () {
                $(this).find(".message-panel-item-title").addClass("message-panel-item-hover");
                $(this).find("td:eq(1)").addClass("message-panel-item-hover");
            }, function () {
                $(this).find(".message-panel-item-title").removeClass("message-panel-item-hover");
                $(this).find("td:eq(1)").removeClass("message-panel-item-hover");
            });
            $("#umessage-tb").find(".message-panel-delete a").on('click', function () {
                $(this).parent().parent().parent().parent().remove();

            });
        };
        _this.firstlogin = function () {
            $("body").append(newuserTem());
            $("#creditPayShow .close").on("click", function () {
                $(this).parent().remove();
            });
        };
        _this.loadtop5 = function () {
            var trs = $("#userTop5 tr").length;
            if (trs == "0") {
                $("#creditPayShow").show();
                $("#G-case-tabs").hide();
                $("#G-nocase-tabs").show();
            } else {
                $("#userTop5 tbody").append(usertop5({
                    "time": "2014-09-10",
                    "title": "山东省日照市房产继承纠纷案",
                    "state": "审核通过",
                    "id": "user111"
                }));
            }
        }
    },
    obj: null
}
$(function () {
    Uhome.obj = new Uhome.Uhome({});
    Uhome.obj.init();
});