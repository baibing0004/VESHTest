using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VESHTest.Module.admin {
    public partial class minilogin : GCL.Project.VESH.V.View.AScriptPage {
        protected void Page_Load(object sender, EventArgs e) {
            if (!this.SessionData.IsLogin) {
                if (this.SessionData.DBResult.ContainsKey("user") && this.SessionData.DBResult["user"] == null) {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "ButtonClickScript", "<script type=\"text/javascript\">" +
                        "LoginInfo = 'LoginError';" +
                        "</script>");
                }
            } else {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "ButtonClickScript", "<script type=\"text/javascript\">" +
                    "LoginInfo = 'OK';" + (SessionData.DBResult.ContainsKey("Menu") ? ("NewURL='" + SessionData.DBResult["Menu"].Tables[0].Rows[0]["URLFormatting"] + "';") : "") +
                    "</script>");
            }
        }

        public override string SystemID {
            get { return "admin"; }
        }
    }
}