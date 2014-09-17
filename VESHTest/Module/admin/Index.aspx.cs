using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VESHTest.Module.admin {
    public partial class Index : GCL.Project.VESH.V.View.AScriptPage {
        protected void Page_Load(object sender, EventArgs e) {

        }

        public override string SystemID {
            get { return "admin"; }
        }
    }
}