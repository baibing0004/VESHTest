using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace VESHTest {
    public class Message {
        public string Cid { get; set; }
        public string Sid { get; set; }
        public string Msgid { get; set; }
        public string Total { get; set; }
        public string Price { get; set; }
        public string Remain { get; set; }
        public static Message Parse(System.Xml.XmlNode node) {
            Message msg = new Message() {
                Cid = node.Attributes["cid"].Value,
                Sid = node.Attributes["sid"].Value,
                Msgid = node.Attributes["msgid"].Value,
                Total = node.Attributes["total"].Value,
                Price = node.Attributes["price"].Value,
                Remain = node.Attributes["remain"].Value,
            };
            return msg;
        }
    }
}
