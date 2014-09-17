VJ.isDebug = true;
var list = {
    param: null,
    list: function () {
        var _this = this;
        (function () {
            //_this.dg = VJ.datagrid({ url: 'http://localhost/VESHTest/Module/admin/QueryLawyer.tjson?_n=lvde', node: $('#tabDG') });
        })();
        _this.Init = function () {
            VJ.include('../../Scripts/city2.js');
            if (Global.out('律师管理')) {
                $(document.body).empty();
            } else {
                //dg.bind({});
                /*        
                //快速生成注册信息
                var city2 = {};
                var func = function (s, p) {
                    for (i in s) {
                        console.log(i);
                        console.log(s[i]);
                        city2[i] = {Name:s[i].Name,Parent:p};
                        if (s[i].Child) {
                            func(s[i].Child, s[i]);
                        }
                    }
                };
                func(city, null);
                for (i in city2) {
                    console.log(i);
                    console.log(city2[i]);
                }        
                VJ.include('../../Scripts/city.js');
                $(catelogsCity).each(function (i, v) {
                if (v[4] == 1) {
                console.log('insert into admin_city (ID,ParentID,Name,Level) values("' + v[3] + '","-1","' + v[0] + '",'+v[4]+');');
                } else if (v[4] == 2) {
                console.log('insert into admin_city (ID,ParentID,Name,Level) values("' + v[3] + '","' + v[2] + '","' + v[0] + '",' + v[4] + ');');
                } else if (v[4] == 3) {
                var pro = v[5].split(',');
                console.log('insert into admin_city (ID,ParentID,Name,Level) values("' + pro[2] + '","' + pro[1] + '","' + v[0] + '",' + v[4] + ');');
                }
                });
                city 格式化数据备份
                VJ.include('../../Scripts/city.js');
                var city = {};
                $(catelogsCity).each(function (i, v) {
                if (v[4] == 1) {
                city[v[3]] = { Name: v[0], Child: {} };
                } else if (v[4] == 2) {
                city[v[2]].Child[v[3]] = { Name: v[0], Child: {} };
                } else if (v[4] == 3) {
                var pro = v[5].split(',');
                city[pro[0]].Child[pro[1]].Child[pro[2]] = { Name: v[0]};
                }
                });
                console.log(VJ.toJsonString(city));*/
            }
        };
    },
    obj: null
};
$(function () {
    list.obj = new list.list();
    list.obj.Init();
});