using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VESHTest.Module.Test {
    public class Action:GCL.Project.VESH.V.Control.IAction {
        public bool IsStatic {
            get { return true; }
        }

        public void PreLoad(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            session.Login();
        }

        public void Dispose() {
        }
    }
}