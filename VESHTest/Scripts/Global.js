Global = {};
//添加string.endWith与startWith方法
String.prototype.endWith = function (str) {
    if (str == null || str == "" || this.length == 0 || str.length > this.length)
        return false;
    if (this.substring(this.length - str.length) == str)
        return true;
    else
        return false;
    return true;
};

String.prototype.startWith = function (str) {
    if (str == null || str == "" || this.length == 0 || str.length > this.length)
        return false;
    if (this.substr(0, str.length) == str)
        return true;
    else
        return false;
    return true;
};
Global.check = function (name) {
    if (User) {
        //添加后门
        if (!VJ.isValid(Pers)) { VJ.showException("permission.js不存在"); return false; }
        //if(VJ.getValue(checkAdmin,true) && (VJ.isValid(pers))) return true;
        var id = VJ.getValue(Pers[name], '_');
        return (VJ.getValue(User.PIDS, '').indexOf(';' + id + ';') >= 0);
    }
    return false;
};
Global.logout = function () {
    VJ.ajax({
        url: '../../Module/admin/Logout.string?_a=1',
        success: function () {
            Global.alert('', '退出成功!', function () {
                window.location.href = "/";
            });
        }
    });
};
Global.alert = function (title, message, func) {
    alert(message);
    if (func) {
        func();
    }
};
// 判断无权而被关闭页面
Global.out = function (permission) {
    if (!Global.check(permission)) {
        Global.alert('提示', '您没有权限操作此页面，本页面点击确定后会自动关闭！', function () {
            Global.logout();
            window.location.href = '/';
        });
        return true;
    } else return false;
};

//解决Placeholder的IE8兼容问题  2014-08-19 丁磊
if (!('placeholder' in document.createElement('input'))) {
    $('input[placeholder],textarea[placeholder]').each(function () {
        var that = $(this),
            text = that.attr('placeholder');
        if (that.val() === "") {
            that.val(text).addClass('placeholder');
        }
        that.focus(function () {
            if (that.val() === text) {
                that.val("").removeClass('placeholder');
            }
        })
            .blur(function () {
                if (that.val() === "") {
                    that.val(text).addClass('placeholder');
                }
            })
            .closest('form').submit(function () {
                if (that.val() === text) {
                    that.val('');
                }
            });
    });
}