using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Security.Cryptography;
using System.Xml;
using System.Text;
using System.Collections.Generic;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text.RegularExpressions;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

/// <summary>
/// Summary description for Function
/// </summary>
public class Function
{
    public Function()
    {
        //
        // TODO: Add constructor logic here
        //
    }    
    public static string GetConfigSettings(string nodeName, string Region)
    {
        string s1;
        string path = HttpContext.Current.Request.PhysicalApplicationPath;
        path = String.Format("{0}\\{1}.config", path, Region);
        XmlDocument xDoc = new XmlDocument();
        xDoc.Load(path);
        XmlNodeList node = xDoc.GetElementsByTagName(nodeName);
        bool flag = node.Count <= 0;
        if (!flag)
            s1 = node[0].Attributes[0].InnerXml;
        else
            s1 = String.Empty;
        return s1;
    }
    public static string GetConfigSettings(string nodeName, string Region, string attribute)
    {
        string s1;
        string path = HttpContext.Current.Request.PhysicalApplicationPath;
        path = String.Format("{0}\\{1}.config", path, Region);
        XmlDocument xDoc = new XmlDocument();
        xDoc.Load(path);
        XmlNodeList node = xDoc.GetElementsByTagName(nodeName);
        bool flag = node.Count <= 0;
        if (!flag)
            s1 = node[0].Attributes[attribute].InnerXml;
        else
            s1 = String.Empty;
        return s1;
    }
    public static string GenerateRandom6Digits()
    {
        Random objRandom = new Random();
        int iRandomValue = objRandom.Next(100000, 999999);
        string cValue = iRandomValue.ToString();
        return cValue;
    }    
    public static bool SendEmail(string authmail, string emailto, string emailfrom, string subject, string body, string bcc)
    {

        MailMessage mail = new MailMessage();
        mail.Headers.Add("Reply-To", emailfrom);
        mail.From = new MailAddress(emailfrom);
        mail.To.Add(new MailAddress(emailto));
        if ((bcc != "") && (bcc != null))
        {
            mail.Bcc.Add(bcc);
        }
        mail.Subject = subject;
        mail.Body = body;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;

        SmtpClient client = new SmtpClient();
        NetworkCredential SMTPUserInfo;
        SMTPUserInfo = new NetworkCredential(Function.GetConfigSettings(authmail, "email"), Function.GetConfigSettings(authmail + "Password", "email"));
        client.Credentials = SMTPUserInfo;
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        client.EnableSsl = true;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        try
        {
            client.Send(mail);
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
        

    }

    public static string ReadMailBody(string url)
    {

        string file = HttpContext.Current.Server.MapPath(url);
        StreamReader sr;
        FileInfo fi = new FileInfo(file);
        string input = "";
        if (File.Exists(file))
        {
            sr = File.OpenText(file);
            input += sr.ReadToEnd();
            sr.Close();
        }
        input += "";
        return input;
    }
    public static bool SendEmailWithAttachment(string authmail, string emailto, string emailfrom, string attachment, string subject, string body)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.Headers.Add("Reply-To", emailfrom);
            mail.From = new MailAddress(emailfrom);
            mail.To.Add(new MailAddress(emailto));
            mail.Subject = subject;
            mail.Body = body;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            Attachment att = new Attachment(attachment);
            mail.Attachments.Add(att);

            SmtpClient client = new SmtpClient();
            NetworkCredential SMTPUserInfo = new NetworkCredential(Function.GetConfigSettings(authmail, "email"), Function.GetConfigSettings(authmail + "Password", "email"));
            client.Credentials = SMTPUserInfo;
            client.Host = Function.GetConfigSettings("SmtpServer", "email"); ;
            client.Port = System.Convert.ToInt32(Function.GetConfigSettings("Port", "email"));
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Send(mail);
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }
   

    public static bool CheckEmail(string strEmail)
    {
        Regex rex = new Regex("^[\\w\\.=-]+@[\\w\\.-]+\\.[\\w]{2,3}$");
        return rex.IsMatch(strEmail);
    }

    public static string SendSMSNEW(string API)
    {
        try
        {
            WebClient Client = new WebClient();
            string baseurl = API;
            Stream data = Client.OpenRead(baseurl);
            StreamReader reader = new StreamReader(data);
            string s = reader.ReadToEnd();
            data.Close();
            reader.Close();
            return s;
        }
        catch (Exception ex)
        {
            return ex.Message.ToString();
        }
    }
    public static string doPaging(int CurrentPage, int totelRows, int pageSize, string url)
    {
        string links = "";

        int rowCount = totelRows;
        int pageCount = (rowCount / pageSize);
        pageCount += (rowCount % pageSize) > 0 ? 1 : 0;
        pageCount = pageSize > rowCount || pageSize == rowCount ? 1 : pageCount;
        int realCurrentPage = CurrentPage;
        CurrentPage = CurrentPage > pageCount ? 1 : CurrentPage;

        string startbutton = "<li><a id='first' href='" + url + "page=1' class='btn' >First </a></li>";
        string endbutton = "<li><a id='last'  href='" + url + "page=" + pageCount + "' class='btn' style='float:right;' >Last</a></li>";
        int startItem = CurrentPage - 2;
        int endItem = CurrentPage + 2;
        if (startItem <= 0)
        {
            startItem = 1;
            endItem = pageCount >= 5 ? 5 : pageCount;
            startbutton = CurrentPage > 1 ? startbutton : "";
            endbutton = CurrentPage == pageCount ? "" : endbutton;
        }
        else
        {
            if (endItem >= pageCount)
            {
                endItem = pageCount;
                startItem = pageCount >= 5 ? pageCount - 4 : 1;
                endbutton = "";
            }
        }
        links += startbutton;
        for (int i = startItem; i <= endItem; i++)
        {
            if (i == CurrentPage)
            {
                links += "<li><a href='javascript:void(0);' class='black normal active' >" + i + "</a></li>";
            }
            else
            {
                links += "<li><a class='black normal'  href='" + url + "page=" + i + "'>" + i + "</a></li>";
            }
        }
        links += endbutton;
        return links;
    }

    public static string HtmlToPlainText(string html)
    {
        const string tagWhiteSpace = @"(>|$)(\W|\n|\r)+<";//matches one or more (white space or line breaks) between '>' and '<'
        const string stripFormatting = @"<[^>]*(>|$)";//match any character between '<' and '>', even when end tag is missing
        const string lineBreak = @"<(br|BR)\s{0,1}\/{0,1}>";//matches: <br>,<br/>,<br />,<BR>,<BR/>,<BR />
        var lineBreakRegex = new Regex(lineBreak, RegexOptions.Multiline);
        var stripFormattingRegex = new Regex(stripFormatting, RegexOptions.Multiline);
        var tagWhiteSpaceRegex = new Regex(tagWhiteSpace, RegexOptions.Multiline);

        var text = html;
        //Decode html specific characters
        text = System.Net.WebUtility.HtmlDecode(text);
        //Remove tag whitespace/line breaks
        text = tagWhiteSpaceRegex.Replace(text, "><");
        //Replace <br /> with line breaks
        text = lineBreakRegex.Replace(text, Environment.NewLine);
        //Strip formatting
        text = stripFormattingRegex.Replace(text, string.Empty);

        return text;
    }
}

