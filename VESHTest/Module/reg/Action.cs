using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VESHTest.Module.reg {
    public class Action : GCL.Project.VESH.V.Control.IAction {
        public bool IsStatic {
            get { return true; }
        }

        public void PreLoad(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {

        }

        public void getMail(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            var ret = new GCL.Db.Ni.NiTemplateManager(session.Middler, "Ni").ExcuteQuery("db2", "VESHTest.Module.reg.getMail", new System.Collections.Hashtable() { { "Mail", request["Mail"] } });
            if (ret.DataSet.Tables.Count > 0) {
                session.Status = Convert.ToString(ret.GetFirstCell(0));
            }
        }

        public void Dispose() {
        }
    }
}