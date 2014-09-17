using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace VESHTest {
    public class RetEntity {
        public string Result { get; set; }
        public string ResultString { get { if (SMSAPI.RetCode.ContainsKey(Result == null ? "" : Result)) return SMSAPI.RetCode[Result]; else return "无值"; } }
        public string Method { get; set; }
        public IList<Message> Messages { get; set; }
        public RetEntity() {
            Messages = new List<Message>();
        }
        public override string ToString() {
            return string.Format("{0} {1} {2};",this.Messages[0].Msgid,this.Method,this.ResultString);
        }
        public static RetEntity Parse(string ret) {
            var entity = new RetEntity();
            System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
            doc.LoadXml(ret);
            entity.Result = doc.DocumentElement.GetAttribute("result");
            entity.Method = doc.DocumentElement.GetAttribute("name");
            foreach (System.Xml.XmlNode node in doc.SelectNodes("//Item")) {
                entity.Messages.Add(Message.Parse(node));
            };
            return entity;
        }
    }
}
