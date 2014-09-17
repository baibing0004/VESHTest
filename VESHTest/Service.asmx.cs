using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using GCL.Db.Ni;
using GCL.IO.Config;

namespace VESHTest
{
    /// <summary>
    /// 通知信息
    /// </summary>
    public class NotifyMessage
    {
        public string LoginName { get; set; }

        public string UserID { get; set; }
        /// <summary>
        /// 标题
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// 消息描述
        /// </summary>
        public string Message { get; set; }
        /// <summary>
        /// 所属应用ID
        /// </summary>
        public string AppID { get; set; }

        /// <summary>
        /// 消息类型 0 通知 1 待办
        /// </summary>
        public int MsgType { get; set; }
        /// <summary>
        /// 调用参数
        /// </summary>
        public string Param { get; set; }

        public override string ToString()
        {
            return string.Format("{0}:{1}-{2}=>{3}.{4}", LoginName, Title, Message, AppID, Param);
        }
    }
    /// <summary>
    /// 通知信息
    /// </summary>
    public class ServerNotifyMessage : IRowToObject
    {
        public ServerNotifyMessage()
        {
            this.ID = Guid.NewGuid().ToString().Replace("-", string.Empty);
        }
        public ServerNotifyMessage(NotifyMessage msg)
            : this()
        {
            this.AppID = msg.AppID;
            this.UserID = msg.UserID;
            this.LoginName = msg.LoginName;
            this.Message = msg.Message;
            this.Param = msg.Param;
            this.Title = msg.Title;
            this.MsgType = msg.MsgType;
        }

        [NiDataParameterAttribute("ID")]
        public string ID { get; set; }

        [NiDataParameterAttribute("UserName")]
        public string LoginName { get; set; }

        [NiDataParameterAttribute("UserID")]
        public string UserID { get; set; }

        /// <summary>
        /// 标题
        /// </summary>
        [NiDataParameterAttribute("Title")]
        public string Title { get; set; }
        /// <summary>
        /// 消息描述
        /// </summary>
        [NiDataParameterAttribute("Message")]
        public string Message { get; set; }
        /// <summary>
        /// 所属应用ID
        /// </summary>
        [NiDataParameterAttribute("AppID")]
        public string AppID { get; set; }
        /// <summary>
        /// 调用参数
        /// </summary>
        [NiDataParameterAttribute("param")]
        public string Param { get; set; }

        [NiDataParameterAttribute("MsgType")]
        public int MsgType { get; set; }

        public void Fill(System.Data.DataRow row)
        {
            this.ID = Convert.ToString(row["ID"]);
            this.LoginName = Convert.ToString(row["UserName"]);
            this.UserID = Convert.ToString(row["UserID"]);
            this.AppID = Convert.ToString(row["AppID"]);
            this.Title = Convert.ToString(row["Title"]);
            this.Message = Convert.ToString(row["Message"]);
            this.Param = Convert.ToString(row["param"]);
            this.MsgType = Convert.ToInt32(row["MsgType"]);
        }
    }
    /// <summary>
    /// Summary description for ReceiMsg
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service : System.Web.Services.WebService
    {
        NiTemplateManager manager = new NiTemplateManager(ConfigManagerFactory.GetApplicationConfigManager(), "ni");
        /// <summary>
        /// 
        /// </summary>
        /// <param name="msgs"></param>
        [WebMethod]
        public void ReceiveMsg(NotifyMessage[] msgs)
        {
            if (msgs != null)
            {
                foreach (var notifyMessage in msgs)
                {
                    //File.AppendAllText(AppDomain.CurrentDomain.BaseDirectory + "/ReceiveMsg.log", string.Format("{0}{1}", notifyMessage, Environment.NewLine));
                    manager.ExcuteNonQuery("sqliteTemplate", "Service.ReceiveMsg", new ServerNotifyMessage(notifyMessage));
                }
            }

            return;
        }
    }
}
