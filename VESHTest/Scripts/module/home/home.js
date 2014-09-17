var Home = {
    param: null,
    option: {},
    Home: function () {
        var _this = this;
        (function () {

        })();
        _this.init = function () {
            //回到页头
            $('#top-link').click(function () {
                $('html, body').animate({ scrollTop: 0 });
                return false;
            });
            //初始化加载
            _this.loadTb();
            //切换轮播图
            _this.imgTb();
            //我们的律师
            _this.owlimgs();
            //业务类型
            _this.owlyw();
            //初始化金额
            _this.initFun();
            //初始化案例
            _this.initCase();
        };
        _this.initCase = function () {
            VJ.include('../../Scripts/module/home/case.js?_=' + Math.floor(Math.random() * 100000));
            $('#new ul').empty();
            $(newCase).each(function (i, v) {
                $('#new ul').append(homecase({
                    ID: v.ID,
                    CaseTypeName: v.CaseTypeName,
                    Name: v.Name
                }));
            });
            $('#having ul').empty();
            $(havingCase).each(function (i, v) {
                $('#having ul').append(homecase({
                    ID: v.ID,
                    CaseTypeName: v.CaseTypeName,
                    Name: v.Name
                }));
            });
            $('#stay ul').empty();
            $(stayCase).each(function (i, v) {
                $('#stay ul').append(homecase({
                    ID: v.ID,
                    CaseTypeName: v.CaseTypeName,
                    Name: v.Name
                }));
            });
        }
        _this.initFun = function () {
            //需要有地方加载统计数据
            VJ.include('../../Scripts/module/home/fun.js?_=' + Math.floor(Math.random() * 100000));
            var dh = function (val, time, step, func) {
                var _val = val / (time * 1.0 / step);
                var count = 0;
                var dh2 = function () {
                    setTimeout(function () {
                        count = count + Math.floor(Math.random() * (_val / 4) + _val / 4 * 3);
                        _val = _val * 1.1;
                        if (count > val) { count = val; }
                        func(count);
                        step = step * 1.1;
                        if (count < val) {
                            dh2();
                        }
                    }, step);
                }
                dh2();
            };
            dh(fun.acceptamount, 2000, 5, function (count) { $('#datalv li:eq(0) span').html(count + '(万元)'); });
            dh(fun.recoveamount, 2000, 5, function (count) { $('#datalv li:eq(1) span').html(count + '(万元)'); });
            dh(fun.paymentamount, 2000, 5, function (count) { $('#datalv li:eq(2) span').html(count + '(万元)'); });
        };
        _this.loadTb = function () {
            $(".footer").append(WfooterTemp());
        };
        _this.imgTb = function () {
            $('.flexslider').flexslider({
                animation: "slide",
                directionNav: false

            });
        }
        _this.owlimgs = function () {
            var owl = $("#owl-ls");
            VJ.include('../../Scripts/module/home/lawyer.js?_=' + Math.floor(Math.random() * 100000));
            owl.empty();
            $(lawyer).each(function (i, v) {
                owl.append(HomeLsimg({
                    url: v.Icon,
                    name: v.LName,
                    lawname: v.Name
                }));
            });
            owl.owlCarousel({
                items: 4,
                pagination: false
            });
            $(".owl-prev").click(function () {
                owl.trigger('owl.prev');
            });
            $(".owl-next").click(function () {
                owl.trigger('owl.next');
            });

        };
        _this.owlyw = function () {
            var owl = $("#owl-yewx");
            owl.owlCarousel({
                items: 4,
                pagination: false
            });
            $(".owl-prevh").click(function () {
                owl.trigger('owl.prev');
            });
            $(".owl-nexth").click(function () {
                owl.trigger('owl.next');
            });
        }
    },
    obj: null
}
$(function () {
    Home.obj = new Home.Home({});
    Home.obj.init();
});