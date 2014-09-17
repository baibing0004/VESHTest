using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace VESHTest.V.View.Theme.Front {
    public partial class HeaderScript : GCL.Project.VESH.V.View.AUserPart {
        public string User { get; set; }
        protected void Page_Load(object sender, EventArgs e) {
            if (SessionData.IsLogin) {
                User = GCL.Common.Tool.Serializer.Serialize(new {
                    UserID = SessionData.UserInfo.UserID,
                    SystemID = SessionData.UserInfo.SystemID,
                    EntityID = SessionData.UserInfo.EntityID,
                    UserName = SessionData.UserInfo["UserName"],
                    EIDS = SessionData.UserInfo.EIDS,
                    PIDS = SessionData.PermissionData.PermissionCollection.PermissionCollections,
                    Mail = SessionData.UserInfo["Mail"],
                    Phone = SessionData.UserInfo["Phone"],
                    Icon = SessionData.UserInfo["Icon"],
                    LoginTime = SessionData.UserInfo.LoginTime
                });
            }
        }

        public override bool HasRight {
            get { return true; }
        }
    }
}