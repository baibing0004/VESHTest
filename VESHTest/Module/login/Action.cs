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

namespace VESHTest.Module.login {
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

        public void UserLogin(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            //处理登陆并进行会话保存
            string userName = Convert.ToString(request["userName"]);
            string pwd = Convert.ToString(Tool.GetCRCHashCode(request["pwd"]));
            var ret = manager.ExcuteQuery("lvde", "VESHTest.Module.login.UserLogin", new Hashtable() { { "_UserName", userName }, { "_Password", pwd } });
            if (ret.DataSet.Tables.Count > 0) {
                //todo 获取用户信息 选择默认角色 获取角色串 权限串 获取菜单栏准备转向 设置Login
                session.DBResult.Add("user", ret.DataSet);
                session.UserInfo.UserID = Convert.ToString(ret.GetCell("ID"));
                session.UserInfo.EntityID = Convert.ToString(ret.GetCell("EntityID"));
                session.UserInfo["UserName"] = Convert.ToString(ret.GetCell("Name"));
                //这里需要可用的登陆时间 不用手动设置session.UserInfo.LoginTime = GCL.Common.Tool.FormatNow();
                session.UserInfo.SystemID = "my";
                session.UserInfo["Icon"] = Convert.ToString(ret.GetCell("Icon"));
                session.UserInfo["Mail"] = Convert.ToString(ret.GetCell("Mail"));
                session.UserInfo["Phone"] = Convert.ToString(ret.GetCell("Phone"));
                session.UserInfo["QQ"] = Convert.ToString(ret.GetCell("QQ"));
                session.UserInfo["bankNo"] = Convert.ToString(ret.GetCell("bankNo"));
                session.UserInfo["LoginCount"] = Convert.ToString(ret.GetCell("LoginCount"));

                session.UserInfo.EIDS = Convert.ToString(ret.GetCell(1, 0));
                session.PermissionData.Init(Convert.ToString(ret.GetCell(1, 1)));
                session.UserInfo.SessionID = SessionData.CreateGUIDSessionID();
                session.Login();
                session.Status = string.Format("[{0}]", GCL.Common.Tool.Serializer.Serialize(new { ID = session.UserInfo.UserID, SessionID = session.UserInfo.SessionID, UserName = session.UserInfo["UserName"], EntityID = session.UserInfo.EntityID, EIDS = session.UserInfo.EIDS, PIDS = session.PermissionData.PermissionCollection.PermissionCollections }));
            } else {
                session.DBResult.Add("user", null);
                session.Status = "";
            }
        }

        public void LawyerLogin(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            //处理登陆并进行会话保存
            string userName = Convert.ToString(request["userName"]);
            string pwd = Convert.ToString(Tool.GetCRCHashCode(request["pwd"]));
            var ret = manager.ExcuteQuery("lvde", "VESHTest.Module.login.LawyerLogin", new Hashtable() { { "_UserName", userName }, { "_Password", pwd } });
            if (ret.DataSet.Tables.Count > 0) {
                //todo 获取用户信息 选择默认角色 获取角色串 权限串 获取菜单栏准备转向 设置Login
                session.DBResult.Add("user", ret.DataSet);
                session.UserInfo.UserID = Convert.ToString(ret.GetCell("ID"));
                session.UserInfo.EntityID = Convert.ToString(ret.GetCell("EntityID"));
                session.UserInfo["UserName"] = Convert.ToString(ret.GetCell("LName"));
                //这里需要可用的登陆时间 不用手动设置session.UserInfo.LoginTime = GCL.Common.Tool.FormatNow();
                session.UserInfo.SystemID = "my";
                session.UserInfo["Icon"] = Convert.ToString(ret.GetCell("Icon"));
                session.UserInfo["Mail"] = Convert.ToString(ret.GetCell("Mail"));
                session.UserInfo["Phone"] = Convert.ToString(ret.GetCell("Phone"));
                session.UserInfo["QQ"] = Convert.ToString(ret.GetCell("QQ"));
                session.UserInfo["bankNo"] = Convert.ToString(ret.GetCell("bankNo"));
                session.UserInfo["Name"] = Convert.ToString(ret.GetCell("Name"));
                session.UserInfo["LoginCount"] = Convert.ToString(ret.GetCell("LoginCount"));

                session.UserInfo.EIDS = Convert.ToString(ret.GetCell(1, 0));
                session.PermissionData.Init(Convert.ToString(ret.GetCell(1, 1)));
                session.UserInfo.SessionID = SessionData.CreateGUIDSessionID();
                session.Login();
                session.Status = string.Format("[{0}]", GCL.Common.Tool.Serializer.Serialize(new { ID = session.UserInfo.UserID, SessionID = session.UserInfo.SessionID, UserName = session.UserInfo["UserName"], EntityID = session.UserInfo.EntityID, EIDS = session.UserInfo.EIDS, PIDS = session.PermissionData.PermissionCollection.PermissionCollections }));
            } else {
                session.DBResult.Add("user", null);
            }
        }

        public void Dispose() {
        }
    }
}