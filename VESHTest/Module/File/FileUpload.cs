using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using GCL.Project.VESH.V.Control;
using System.IO;

namespace VESHTest.Module.File {
    public class Action : IAction {
        public bool IsStatic {
            get { return true; }
        }

        public void PreLoad(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {

        }
        public void Upload(HttpRequest request, HttpResponse response, HttpContext context, GCL.Project.VESH.V.Control.Session.SessionDataManager session) {
            string filePathName = string.Empty;
            string urlPath = "../../upload";
            string localPath = Path.Combine(HttpRuntime.AppDomainAppPath, "upload");
            if (request.Files.Count == 0) {
                session.Status = GCL.Common.Tool.Serializer.Serialize(new { jsonrpc = 2.0, error = new { code = 102, message = "保存失败" }, id = "id" });
            }
            try {
                var dataPath = GCL.Common.Tool.FormatNow("yyyy/MM/dd/");
                filePathName = dataPath + Guid.NewGuid().ToString().Replace("-", "") + request.Files[0].FileName.Substring(request.Files[0].FileName.IndexOf('.'));//自己在这里处理文件保存 Request.Files[0]

                if (!System.IO.Directory.Exists(dataPath)) {
                    System.IO.Directory.CreateDirectory(localPath + "/" + dataPath);
                }
                //todo 入库
                request.Files[0].SaveAs(string.Format("{0}/{1}", localPath, filePathName));
            } catch (Exception ex) {
                session.Status = GCL.Common.Tool.Serializer.Serialize(new { jsonrpc = 2.0, error = new { code = 103, message = "保存失败" }, id = "id" });
                return;
            }

            session.Status = GCL.Common.Tool.Serializer.Serialize(new {
                jsonrpc = "2.0",
                id = "id",
                filePath = string.Format("{0}/{1}", urlPath, filePathName)
            });
        }
        public void Dispose() {
        }
    }
}