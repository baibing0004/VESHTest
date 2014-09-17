using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using GCL.Project.VESH.V.Control;
using GCL.Common;
using GCL.Db.Ni;
using System.Collections;
using GCL.Project.VESH.E.Entity;
using GCL.Project.VESH.V.Control.Session;
using System.Text;

namespace VESHTest.Module.admin {
    public class Action : IAction {
        public bool IsStatic {
            get { return true; }
        }
        NiTemplateManager manager = null;
        public void PreLoad(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            if (manager == null) { manager = new NiTemplateManager(session.Middler, "Ni"); }
        }

        public void Logout(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            session.Logout();
        }

        public void minilogin(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            //处理登陆并进行会话保存
            string userName = Convert.ToString(request["userName"]);
            string pwd = Convert.ToString(Tool.GetCRCHashCode(request["pwd"]));
            var ret = manager.ExcuteQuery("lvde", "VESHTest.Module.admin.Login", new Hashtable() { { "_UserName", userName }, { "_Password", pwd }, { "SystemType", 1 } });
            if (ret.DataSet.Tables.Count > 0) {
                //todo 获取用户信息 选择默认角色 获取角色串 权限串 获取菜单栏准备转向 设置Login
                session.DBResult.Add("user", ret.DataSet);
                session.UserInfo.UserID = Convert.ToString(ret.GetCell("ID"));
                session.UserInfo.EntityID = Convert.ToString(ret.GetCell("EntityID"));
                session.UserInfo["UserName"] = Convert.ToString(ret.GetCell("UserName"));
                //这里需要可用的登陆时间 不用手动设置session.UserInfo.LoginTime = GCL.Common.Tool.FormatNow();
                session.UserInfo.SystemID = "admin";
                session.UserInfo["Mail"] = Convert.ToString(ret.GetCell("Mail"));
                session.UserInfo["Phone"] = Convert.ToString(ret.GetCell("Phone"));
                //数据库中没有 添加默认值
                session.UserInfo["Icon"] = "../../Images/home/demo.jpg";
                session.UserInfo.EIDS = Convert.ToString(ret.GetCell(1, 0));
                //session.UserInfo["PIDS"] = Convert.ToString(ret.GetCell(1, 1));
                session.PermissionData.Init(Convert.ToString(ret.GetCell(1, 1)));
                session.UserInfo.SessionID = SessionData.CreateGUIDSessionID();
                session.Login();
                ret = session.NiTemplateManager.ExcuteQuery("lvde", "VESHTest.Module.admin.GetMenu", new Hashtable() { { "_PerIDs", session.PermissionData.PermissionCollection.PermissionCollections }, { "_SystemID", "admin" } });
                var menu = ret.Fill<VESHTest.Entity.Menu>(0);
                if (menu != null && menu.Length > 0) {
                    session.DBResult.Add("Menu", ret.DataSet);
                    var menu2 = GCL.Common.Tool.Serializer.Serialize(menu);
                    session[".Menu"][".value"] = menu2;
                }
            } else {
                session.DBResult.Add("user", null);
            }
        }

        public void GetPermission(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            var ret = manager.ExcuteQuery("lvde", "VESHTest.Module.admin.GetPermission");
            if (ret.DataSet.Tables.Count > 0) {
                var dt = ret.DataSet.Tables[0];
                int rowNum = ret.DataSet.Tables[0].Rows.Count;
                StringBuilder sb = new StringBuilder();
                try {
                    sb.Append(@"window.Pers={");
                    for (int i = 0; i < rowNum; i++) {
                        sb.Append(i == 0 ? ("'" + dt.Rows[i][0].ToString()) : (",'" + dt.Rows[i][0].ToString()));
                        sb.Append(@"':'");
                        sb.Append(dt.Rows[i][1].ToString());
                        sb.Append("'");
                    }
                    sb.Append(@"};");
                    string savePath = null;
                    savePath = request.PhysicalApplicationPath + "Scripts\\permission.js";
                    session.Status = sb.ToString();
                    if (System.IO.File.Exists(savePath))
                        System.IO.File.Delete(savePath);
                    System.IO.File.WriteAllText(savePath, sb.ToString());
                } finally {
                    sb.Clear();
                    sb = null;
                }
            } else {
                session.Status = "[False]";
            }
        }

        public void Dispose() {
        }
    }
}