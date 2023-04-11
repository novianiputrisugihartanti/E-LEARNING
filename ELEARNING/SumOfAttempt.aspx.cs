using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELEARNING
{
    public partial class SumOfAttempt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            populateNumber();
            populateSum();
        }

        private void populateNumber()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/GetQuizbyIDKomp";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<Question> list = (new JavaScriptSerializer()).Deserialize<List<Question>>(json);
            RptNumber.DataSource = (new JavaScriptSerializer()).Deserialize<List<Question>>(json);
            RptNumber.DataBind();
            RptSum.DataSource = (new JavaScriptSerializer()).Deserialize<List<Question>>(json);
            RptSum.DataBind();
        }

        public class Question
        {
            public string IdKomp { get; set; }
            public string kompetensi { get; set; }
            public string IdSoal { get; set; }
            public string pertanyaan { get; set; }
            public string topik { get; set; }
        }

        private void populateSum()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/GetQuizbyIDKomp";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<Question> list = (new JavaScriptSerializer()).Deserialize<List<Question>>(json);
            RptSum.DataSource = (new JavaScriptSerializer()).Deserialize<List<Question>>(json);
            RptSum.DataBind();
        }
    }
}