var Ureg = {
    param: null,
    option: {},
    Ureg: function () {
        var _this = this;

        (function () {


        })();
        _this.init = function () {
            //初始化加载
            _this.loadTb();
            //表单提交
            _this.form();
            //表单验证
            _this.validate();
        };
        _this.loadTb = function () {
            $(".footer").append(Footerlinks()).append(FooterTemp());

            $("#G-alipay-treaty").click(function () {
                var w = $(window).width();
                var h = $(window).height();
                $("body").append(mask()).append(dalert({
                    url: 'uxieyi.aspx'
                })).attr("data-widget-cid", "widget-2");
                $(".ui-xbox").width(500).height(405).css({
                    "left": w / 3 - 11,
                    "top": h / 5,
                    "z-index": "1000",
                    "position": "absolute"
                }).show();
                $(".ui-xbox-mask").css({
                    "width": "100%",
                    "height": "100%",
                    "background-color": "#000",
                    "left": "0",
                    "opacity": "0.2",
                    "position": "fixed",
                    "top": "0",
                    "z-index": "999",
                }).show();
                $(".ui-xbox-close").click(function () {
                    $(this).parent().parent().remove();
                    $(".ui-xbox-mask").remove();
                });
            });
        };
        _this.form = function () {
            //表单提交第一步
            $('#G-submit1').submit(function () {
                //表单验证
                _this.validate();
                return false;
            });
            //表单提交第二步
            $("#G-submit2").submit(function () {
                //表单验证
                _this.validate();
                return false;
            });
        };
        _this.validate = function () {
            $('.ui-form').bind('ajax:aborted:required', function () {
                return false;
            });
            
            //验证效果
            _this.all_events();
            //第一步验证
            $("#registration-form1").validate({
                rules: {
                    myphone: {
                        required: true,
                        minlength: 11
                    }
                },
                focusInvalid: false,
                onkeyup: false,
                submitHandler: function (form) {
                    $("#G-submit1").ajaxSubmit({
                        type: "post",  //提交方式  
                        dataType: "json", //数据类型  
                        // url: "../../Module/reg/newureg.tjson?_n=db2", //请求url  
                        success: function (data) { //提交成功的回调函数  
                            alert(data.result);
                        },
                        error: function () {
                            _this.phone();
                        }
                    });
                },
                highlight: function (element, errorClass) {
                    if (!$(element).is(':radio') && !$(element).is(':checkbox') && !$(element).is('select')) {
                        $(element).parent().find('.ui-zt').addClass('error');
                        $(element).addClass(errorClass);
                        $(element).css('border', 'solid 1px #f27669');
                    }
                    if ($(element).is('select')) {
                        $(element).parent().find('.sbToggle').addClass('error');
                        $(element).parent().find('.sbHolder').css('border', 'solid 1px #f27669');
                    }
                    if ($(element).is(':checkbox')) {

                        $(element).parent().find('.icon-ok').css('border', 'solid 1px #f27669');
                    }
                    if ($(element).is(':radio')) {
                        $(element).parent().find('.icon-circle').css('border', 'solid 1px #f27669');
                    }
                },
                messages: {
                    myphone: {
                        required: "请输入你的手机号码",
                        minlength: jQuery.format("手机号码不能少于11位"),
                        notEqual: "Please specify a different (non-default) value"
                    }
                }
            });
            //第二步验证
            $("#registration-form2").validate({
                rules: {
                    Password: {
                        required: true,
                        minlength: 8
                    },
                    upasswordtoo: {
                        required: true,
                        minlength: 8,
                        equalTo: "#Password"
                    },
                    Name: {
                        required: true,
                        stringCheck: true
                    },
                    IDCard: {
                        required: true,
                        minlength: 8,
                        isIdCardNo: "请输入正确的身份证号",
                        remote: {       //验证身份证是否存在
                            type: "POST",
                            url: "../../Module/reg/getCard.string?_a=1",
                            data: {
                                IDCard: function () { return $("#IDCard").val() }
                            },
                            datatype: "json",
                            cache: false
                        }
                    },
                    Mail: {
                        required: true,
                        minlength: 6,
                        email: true,
                        remote: {       //验证邮箱是否存在
                            type: "POST",
                            url: "../../Module/reg/getMail.string?_a=1",
                            data: {
                                Mail: function () { return $("#Mail").val() }
                            },
                            datatype: "json",
                            cache: false
                        }
                    },
                    Address: {
                        required: true,
                        minlength: 8,
                        stringCheck: true
                    }
                },
                focusInvalid: false,
                onkeyup: false,
                submitHandler: function (form) {
                    $("#registration-form2").ajaxSubmit({
                        type: "post",  //提交方式  
                        dataType: "json", //数据类型 
                        async: false,
                        url: "../../Module/reg/newureg.tjson?_n=db2", //请求url
                        success: function (data) { //提交成功的回调函数  
                            $(".loading-text").show(400).delay(100).hide(400);
                            $("#registration-form2").hide();
                            $("#registration-form3").show();
                            $(".ui-xbox-mask").hide();
                            $(".navi-container ol li").removeClass("ui-step-active").eq("2").addClass("ui-step-active");
                        },
                        resetForm: true,
                        clearForm: true
                    });
                },
                highlight: function (element, errorClass) {
                    if (!$(element).is(':radio') && !$(element).is(':checkbox') && !$(element).is('select')) {
                        $(element).parent().find('.ui-zt').addClass('error');
                        $(element).addClass(errorClass);
                        $(element).css('border', 'solid 1px #f27669');
                    }
                    if ($(element).is('select')) {
                        $(element).parent().find('.sbToggle').addClass('error');
                        $(element).parent().find('.sbHolder').css('border', 'solid 1px #f27669');
                    }
                    if ($(element).is(':checkbox')) {

                        $(element).parent().find('.icon-ok').css('border', 'solid 1px #f27669');
                    }
                    if ($(element).is(':radio')) {
                        $(element).parent().find('.icon-circle').css('border', 'solid 1px #f27669');
                    }
                },
                messages: {
                    Password: {
                        required: "请输入你的律金帐号密码",
                        minlength: $.format("密码长度不能少于8位"),
                        notEqual: "Please specify a different (non-default) value"
                    },
                    upasswordtoo: {
                        required: "请输入你的律金帐号密码",
                        minlength: $.format("号码不能少于11位"),
                        equalTo: "请保持你的律金帐号密码一致",
                        notEqual: "Please specify a different (non-default) value"
                    },
                    Name: {
                        required: "请输入你的真实姓名或企业名称"
                    },
                    IDCard: {
                        required: "请输入你的手机号码",
                        minlength: $.format("号码不能少于8位"),
                        remote: $.format("身份证号码已经存在,请重新输入")
                    },
                    Mail: {
                        required: "请输入你的电子邮箱",
                        minlength: $.format("电子邮箱长度必须不少于6位"),
                        email: "请输入正确的邮箱格式",
                        remote: $.format("邮箱已经存在,请重新输入")
                    },
                    Address: {
                        required: "请输入你的联系地址",
                        minlength: $.format("号码不能少于8位"),
                    }
                }
            });
            
            // 身份证号码验证 
            $.validator.addMethod("isIdCardNo", function (value, element) {
                return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
            }, "请正确输入您的身份证号码");

            // 字符验证 
            $.validator.addMethod("stringCheck", function (value, element) {
                return this.optional(element) || /^[\u0391-\uFFE5\w]+$/.test(value);
            }, "只能包括中文字、英文字母、数字和下划线");
        };
        _this.all_events = function () {
            //邮箱格式验证
            $('.ui-input-mails').autoMail({
                emails: ['', '@qq.com', '@vip.qq.com', '@163.com', '@126.com', '@sohu.com', '@sina.com', '@gmail.com', '@21cn.com', '@outlook.com']
            });

            $('.ui-form .ui-input').focus(function () {
                if (!$(this).hasClass('error')) {
                    $(this).animate({ boxShadow: '0px 0px 10px 2px #84cede' }, 90);
                    $(this).css('border', 'solid 1px #84cede')
                }
                else {
                    $(this).animate({ boxShadow: '0px 0px 10px 2px #f27669' }, 90);
                    $(this).css('border', 'solid 1px #f27669')
                }
                if ($(this).siblings('.ui-zt').hasClass('ok')) {
                    //$(this).siblings('.ui-zt').removeClass();
                    $(this).siblings('.ui-zt').removeClass('ok').addClass('error')
                    $(this).parent().find(".ui-zt i").removeClass('icon-ok').addClass('icon-remove');
                }
            }).blur(function () {
                if ($(this).hasClass('valid') && this.value != '') {
                    $(this).animate({ boxShadow: '0px 0px 0px 0px #f27669' }, 90);
                    $(this).css('border', 'solid 1px #ccc');
                    $(this).parent().find(".ui-zt i").removeClass('icon-remove').addClass('icon-ok');
                    $(this).siblings('.ui-zt').removeClass('error').addClass('ok');
                }
                if ($(this).hasClass('error')) {
                    $(this).parent().animate({ boxShadow: '0px 0px 0px 0px #f27669' }, 90);
                    $(this).css('border', 'solid 1px #f27669');
                    $(this).parent().find(".ui-zt i").removeClass('icon-ok').addClass('icon-remove');
                    $(this).siblings('.ui-zt').removeClass('ok').addClass('error');
                }
                if (!$(this).hasClass('error') && this.value == '') {
                    $(this).animate({ boxShadow: '0px 0px 0px 0px #f27669' }, 90);
                    $(this).css('border', 'solid 1px #ccc');
                }
            });

        };
        _this.phone = function () {
            var w = $(window).width();
            var h = $(window).height();
            //Load加载
            $("body").find(".ui-xbox-load").show(300).delay(100).hide(300);
            $(".loading-text-1").show(400).delay(100).hide(400);
            $("body").append(mask()).append(dalert({
                url: 'phone.aspx'
            })).attr("data-widget-cid", "widget-1");

            $(".ui-xbox").width(650).height(h / 3 + 1).css({
                "left": w / 3 - 11,
                "top": "30px"
            }).show();
            $(".ui-xbox-mask").css({
                "width": "100%",
                "height": "100%",
                "background-color": "#000",
                "left": "0",
                "opacity": "0.2",
                "position": "fixed",
                "top": "0",
                "z-index": "999",
            }).show();
            $(".ui-xbox-close").click(function () {
                $(this).parent().parent().remove();
                $(".ui-xbox-mask").remove();
            });
        };

        Resize = function () {
            var w = $(window).width();
            var h = $(window).height();
            var cid = $(".ui-xbox").attr("data-widget-cid");
            if (w <= 657 && cid == "widget-1") {
                $(".ui-xbox").width(650).height(324).css({
                    "left": w / 3 - 200,
                    "top": "30px"
                }).show();
            } else {
                $(".ui-xbox").width(650).height(h / 3 + 1).css({
                    "left": w / 3 - 11,
                    "top": "30px"
                }).show();
            }
            if (w <= 657 && cid == "widget-2") {
                $(".ui-xbox").width(500).height(405).css({
                    "left": w / 2 - 200,
                    "top": h / 5
                }).show();
            } else {
                $(".ui-xbox").width(500).height(405).css({
                    "left": w / 3 - 11,
                    "top": h / 5
                }).show();
            }

        };
    },
    obj: null
}
$(function () {
    Ureg.obj = new Ureg.Ureg({});
    Ureg.obj.init();
});