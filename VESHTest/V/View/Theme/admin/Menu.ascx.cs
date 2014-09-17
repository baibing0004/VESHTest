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
using GCL.Project.VESH.E.Module;
using GCL.Project.VESH.V.Control.Session;
using GCL.Project.VESH.E.Entity;
using GCL.Project.VESH.E.Entity.Power.Security;
using GCL.Project.VESH.E.Entity.Power.Permission;

namespace VESHTest.V.View.Theme.admin {


    public partial class Menu : GCL.Project.VESH.V.View.AUserPart {
        public override bool HasRight {
            get { return true; }
        }

        public string MenuData { get; set; }

        protected void Page_Load(object sender, EventArgs e) {
            if (this.SessionData.IsLogin) {
                if (this.SessionData[".Menu"].Count == 0) {
                    var ret = SessionData.NiTemplateManager.ExcuteQuery("lvde", "VESHTest.Module.admin.GetMenu", new Hashtable() { { "_PerIDs", SessionData.PermissionData.PermissionCollection.PermissionCollections }, { "_SystemID", "admin" } });
                    SessionData.DBResult.Add("menu", ret.DataSet);
                    var menu = ret.Fill<VESHTest.Entity.Menu>(0);
                    if (menu != null && menu.Length > 0) {
                        var menu2 = GCL.Common.Tool.Serializer.Serialize(menu);
                        SessionData[".Menu"][".value"] = menu2;
                        this.MenuData = menu2;
                    }
                } else {
                    this.MenuData = Convert.ToString(SessionData[".Menu"][".value"]);
                }
            }
        }

        //protected override void OnPreRender(EventArgs e) {
        //    proxy = AModule.Root.MenuProvider;
        //    base.OnPreRender(e);
        //}

        //private APermissionCollection PermissionCollection {
        //    get { return SessionDataManager.GetCurrentSessionDataManager().PermissionData.PermissionCollection; }
        //}
        //private IMenuProvider proxy;
        //public IMenuProvider MenuItem {
        //    get { return proxy; }
        //}

        //public void BindMenu(System.Web.UI.WebControls.Menu menu) {
        //    proxy.BindMenu(PermissionCollection, menu);
        //}

        //public void BindXML(System.Web.UI.WebControls.Xml xml) {
        //    proxy.BindXML(PermissionCollection, xml);
        //}

        //public string ToJSON() {
        //    return proxy.ToJSON(PermissionCollection);
        //}

        //public string ToXML() {
        //    return proxy.ToXML(PermissionCollection);
        //}

        //public System.Xml.XmlDocument ToXMLDocument() {
        //    System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
        //    doc.LoadXml(ToXML());
        //    return doc;
        //}

    }
}