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
            //输入验证
            _this.all_events();
            //委托人登录表单提交
            _this.uform();
            //律师登录表单提交
            _this.lform();
            //选择登录
            $(".authcenter-body-login-tab li").click(function () {
                $(".authcenter-body-login-tab li").addClass("login-tab-active");
                $(this).removeClass("login-tab-active");
                $(".loginname,.password").val('');
                var num = $(this).attr("li");
                $("#G-login" + num).show().siblings(".login-modern").hide();
            });
            //回车提交
            document.onkeydown = function (event) {
                e = event ? event : (window.event ? window.event : null);
                if (e.keyCode == 13) {
                    $('#G-login-btn1').click();
                }

            }
        };
        _this.uform = function () {
            $('#G-login-btn1').click(function () {
                var loginname = $('#login-form1 .loginname').val();
                var password = $('#login-form1 .password').val();
                var seccode = $('#login-form1 .seccode').val();
                var patt_email = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                var patt_mobile = /(^((0[1,2]{1}\d{1}-?\d{8})|(0[3-9]{1}\d{2}-?\d{7,8}))$)|(^0?(13[0-9]|15[0-35-9]|18[012356789]|14[57])[0-9]{8}$)/;

                var prompt_email = $(this).parent().siblings('.sl-error').addClass("sl-error-display").find(".sl-error-text");
                var prompt_password = $(this).parent().siblings('.sl-error').addClass("sl-error-display").find(".sl-error-text");
                var prompt_verify = $(this).parent().siblings('.sl-error').addClass("sl-error-display").find(".sl-error-text");
                var h2 = $(this).parent().siblings('.ui-form-title');
                var canSubmit = true;

                if (loginname == '') {
                    h2.hide();
                    prompt_email.html('邮箱和手机号不能为空！');
                    canSubmit = false;
                } else if (!patt_email.test(loginname) && isNaN(loginname)) {
                    h2.hide();
                    prompt_email.html('邮箱格式不正确！');
                    canSubmit = false;
                } else if (!patt_mobile.test(loginname) && !isNaN(loginname)) {
                    h2.hide();
                    prompt_email.html('手机号格式不正确！');
                    canSubmit = false;
                }
                //密码
                if (password == '') {
                    h2.hide();
                    prompt_password.css('color', '#da0026');
                    prompt_password.html('密码不能为空！');
                    canSubmit = false;
                }
                if ($('.verify').css('display') == 'block' && $('.seccode').val() == '') {
                    h2.hide();
                    prompt_verify.html('请输入验证码！');
                    canSubmit = false;
                }
                if (!canSubmit) return false;

                if (canSubmit) {
                    h2.show();
                    $(this).parent().siblings('.sl-error').removeClass("sl-error-display").find(".sl-error-text").html("");
                    $("#G-login-btn1").val("登录中..");
                    VJ.ajax({
                        url: '../../Module/login/UserLogin.string?_a=1',
                        method: "POST",
                        data: {
                            userName: loginname,
                            pwd: password
                        },
                        success1: function (data, status) {
                            this.bindData(eval(data));
                        },
                        filtData: function (data) {
                            return data;
                        },
                        bindData: function (data) {
                            top.location.href = "../../Module/home/uhome.aspx?r=http%3A%2Fwww.lvde.com%2F" + data[0].ID;
                        },
                        error: function (data) {
                            $('.sl-error').addClass("sl-error-display").find(".sl-error-text").html('账户名密码错误！');
                            h2.hide();
                            $("#G-login-btn1").val("登录");
                        }
                    });

                }
            });
        };
        _this.lform = function () {
            $('#G-login-btn2').click(function () {
                var loginname = $('#login-form2 .loginname').val();
                var password = $('#login-form2 .password').val();
                var seccode = $('#login-form2 .seccode').val();
                var patt_email = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                var patt_mobile = /(^((0[1,2]{1}\d{1}-?\d{8})|(0[3-9]{1}\d{2}-?\d{7,8}))$)|(^0?(13[0-9]|15[0-35-9]|18[012356789]|14[57])[0-9]{8}$)/;

                var prompt_email = $(this).parent().siblings('.sl-error').addClass("sl-error-display").find(".sl-error-text");
                var prompt_password = $(this).parent().siblings('.sl-error').addClass("sl-error-display").find(".sl-error-text");
                var prompt_verify = $(this).parent().siblings('.sl-error').addClass("sl-error-display").find(".sl-error-text");
                var h2 = $(this).parent().siblings('.ui-form-title');
                var canSubmit = true;

                if (loginname == '') {
                    h2.hide();
                    prompt_email.html('邮箱和手机号不能为空！');
                    canSubmit = false;
                } else if (!patt_email.test(loginname) && isNaN(loginname)) {
                    h2.hide();
                    prompt_email.html('邮箱格式不正确！');
                    canSubmit = false;
                } else if (!patt_mobile.test(loginname) && !isNaN(loginname)) {
                    h2.hide();
                    prompt_email.html('手机号格式不正确！');
                    canSubmit = false;
                }
                //密码
                if (password == '') {
                    h2.hide();
                    prompt_password.css('color', '#da0026');
                    prompt_password.html('密码不能为空！');
                    canSubmit = false;
                }
                if ($('.verify').css('display') == 'block' && $('.seccode').val() == '') {
                    h2.hide();
                    prompt_verify.html('请输入验证码！');
                    canSubmit = false;
                }
                if (!canSubmit) return false;

                if (canSubmit) {
                    h2.show();
                    $(this).parent().siblings('.sl-error').removeClass("sl-error-display").find(".sl-error-text").html("");
                    $("#G-login-btn2").val("登录中..");
                    alert('律师');
                    VJ.ajax({
                        url: '../../Module/login/LawyerLogin.string?_a=1',
                        method: "POST",
                        data: {
                            userName: loginname,
                            pwd: password
                        },
                        success1: function (data, status) {
                            this.bindData(eval(data));
                        },
                        filtData: function (data) {
                            return data;
                        },
                        bindData: function (data) {
                            top.location.href = "../../Module/home/lhome.aspx?r=http%3A%2Fwww.lvde.com%2F" + data[0].ID;
                        },
                        error: function (data) {
                            h2.hide();
                            prompt_verify.html('账户名密码错误！');
                        }
                    });
                }
            });
        };
        _this.all_events = function () {
            //邮箱格式验证
            $('.loginname').autoMail({
                emails: ['', '@qq.com', '@vip.qq.com', '@163.com', '@126.com', '@sohu.com', '@sina.com', '@gmail.com', '@21cn.com', '@outlook.com']
            });
            $('.loginname, .password, .verify').focus(function () { //获得光标隐藏
                var h2 = $(this).parent().siblings('.ui-form-title');
                h2.show();
                $(this).parent().siblings('.sl-error').removeClass("sl-error-display").find(".sl-error-text").html("");
            });

            $('.loginname').blur(function () {
                var loginname = $(this).val();
                var h2 = $(this).parent().siblings('.ui-form-title');
                var prompt = $(this).parent().siblings('.sl-error').addClass("sl-error-display").find(".sl-error-text");
                var patt_email = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                var patt_mobile = /^(1(([358][0-9])|(45)|(47)))\d{8}$/;
                if (loginname == '') {
                    h2.hide();
                    prompt.html('邮箱或手机号不能为空！');
                    return;
                }
                if (loginname.indexOf("@") > -1) {
                    if (!patt_email.test(loginname) && isNaN(loginname)) {
                        h2.hide();
                        prompt.html('邮箱格式不正确！');
                        return;
                    }
                } else if (!patt_mobile.test(loginname)) {
                    h2.hide();
                    prompt.html('手机格式不正确！');
                    return;

                }
                h2.show();
                $(this).parent().siblings('.sl-error').removeClass("sl-error-display").find(".sl-error-text").html("");

                var timer;
                clearTimeout(timer);
                timer = setTimeout(function () {
                    if ($('.verify').css('display') == 'none' && loginname != '') {
                        $.getJSON('http://passport.self.com.cn/front/passport/ajaxCheckNeedSeccode?asd=12&loginname=' + loginname + '&callback=?', function (data) {
                            if (data.status == 1) {
                                $(".verify img").attr('src', data.seccode);
                                $(".verify").show();
                                $(".verify img").click(function () {
                                    $(".verify img").attr('src', data.seccode + '&rand=' + Math.random());
                                });
                            } else {
                                $('.verify').css('display', 'none');
                            }
                        });
                    }
                }, 100);
                h2.show();
                $(this).parent().siblings('.sl-error').removeClass("sl-error-display").find(".sl-error-text").html("");
            });

            $('.password').blur(function () {
                var h2 = $(this).parent().siblings('.ui-form-title');
                var password = $(this).val();
                var patt_password = /(?=.*?[a-zA-Z])(?=.*?[0-9])[a-zA-Z0-9]{6,32}/;
                var prompt_password = $(this).parent().siblings('.sl-error').addClass("sl-error-display").find(".sl-error-text");
                if (password == '') {
                    prompt_password.css('color', '#da0026');
                    h2.hide();
                    prompt_password.html('密码不能为空！');

                }
                h2.show();
                $(this).parent().siblings('.sl-error').removeClass("sl-error-display").find(".sl-error-text").html("");
            });
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
