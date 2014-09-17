using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;

namespace VESHTest {
    /// <summary>
    /// 临时用于短信发送
    /// </summary>
    public class SMSAPI {
        public static IDictionary<string, string> RetCode;
        static SMSAPI() {
            RetCode = new Dictionary<string, string>() {
                {"1","操作成功"},
                {"0","帐户格式不正确(正确的格式为:员工编号@企业编号)"},
                {"-1","服务器拒绝(速度过快、限时或绑定IP不对等)如遇速度过快可延时再发"},
                {"-2","密钥不正确"},
                {"-3","密钥已锁定"},
                {"-4","参数不正确(内容和号码不能为空，手机号码数过多，发送时间错误等)"},
                {"-5","无此帐户"},
                {"-6","帐户已锁定或已过期"},
                {"-7","帐户未开启接口发送"},
                {"-8","不可使用该通道组"},
                {"-9","帐户余额不足"},
                {"-10","内部错误"},
                {"-11","扣费失败"},
                {"100","发送成功"},
                {"101","验证失败"},
                {"102","短信不足"},
                {"103","操作失败"},
                {"104","非法字符"},
                {"105","内容过多"},
                {"106","号码过多"},
                {"107","频率过快"},
                {"108","号码内容空"},
                {"109","账号冻结"},
                {"110","禁止频繁单条发送"},
                {"111","系统暂定发送"},
                {"112","号码错误"},
                {"113","定时时间格式不对"},
                {"114","账号被锁,10分钟后登录"},
                {"115","连接失败"},
                {"116","禁止接口发送"},
                {"117","绑定IP不正确"},
                {"120","系统升级"}
            };
        }

        //字符串加密
        public static string GetStringMD5(string str, int size) {
            string ret = "";
            if (size == 32) {
                byte[] b = System.Text.Encoding.UTF8.GetBytes(str);
                b = new MD5CryptoServiceProvider().ComputeHash(b);
                for (int i = 0; i < b.Length; i++) {
                    ret += b[i].ToString("x").PadLeft(2, '0');
                }
            } else if (size == 16) {
                MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
                ret = BitConverter.ToString(md5.ComputeHash(System.Text.Encoding.UTF8.GetBytes(str)), 4, 8);
                ret = ret.Replace("-", "");
            }
            return ret;
        }

        public string APIUrl = "http://smsapi.c123.cn/OpenPlatform/OpenApi?";
        public string UserID { get; private set; }
        private string _pwd;
        public string Password { get; private set; }
        /// <summary>
        /// 默认使用测试账号
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="pwd"></param>
        public SMSAPI(string userID = "1001@501076550001", string pwd = "D3F65D9C5D9C99C3CEC511D3FF0DD685") {
            UserID = userID;
            Password = pwd;
        }
        System.Text.RegularExpressions.Regex reg = new System.Text.RegularExpressions.Regex("result=\"-?\\d\"");

        public string SendSMS(string mobile, string content) {
            string data = string.Format("action=sendOnce&cgid=52&csid=0&ac={0}&authkey={1}&m={2}&c={3}", UserID, Password, mobile, HttpUtility.UrlEncode(content));
            string ret = GCL.Common.Tool.PostString(APIUrl, data);
            string code = reg.Match(ret).Value;
            if (code.Length > 1) code = code.Split('=')[1].Trim('"');
            if ("1".Equals(code) && ret.IndexOf("<Item") >= 0) {
                RetEntity entity = RetEntity.Parse(ret);
                return entity.ToString();
            } else {
                return RetCode[code] + ";";
            }
        }
        public string TestResult(string ret) {
            string code = reg.Match(ret).Value;
            if (code.Length > 1) code = code.Split('=')[1].Trim('"');
            if ("1".Equals(code) && ret.IndexOf("<Item") >= 0) {
                RetEntity entity = RetEntity.Parse(ret);
                return entity.ToString();
            } else {
                return RetCode[code]+";";
            }
        }
    }
}