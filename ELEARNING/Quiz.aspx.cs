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
    public partial class Quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            populateQuestion();
            populateNumber();
            populateCourse();
        }


        private void populateQuestion()
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
            RptQuestion.DataSource = (new JavaScriptSerializer()).Deserialize<List<Question>>(json);
            RptQuestion.DataBind();
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
        }

        public class Question
        {
            public string IdKomp { get; set; }
            public string kompetensi { get; set; }
            public string IdSoal { get; set; }
            public string pertanyaan { get; set; }
            public string topik { get; set; }
        }

        private void populateCourse()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/GetKompByID";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<Question> list = (new JavaScriptSerializer()).Deserialize<List<Question>>(json);
            RptFinishAttempt.DataSource = (new JavaScriptSerializer()).Deserialize<List<Question>>(json);
            RptFinishAttempt.DataBind();
        }

        public class Modul2
        {
            public string IdKomp { get; set; }
            public string LoK { get; set; }
            public string kompetensi { get; set; }
        }

        protected void RptQuestion_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string lblIdSoal = (e.Item.FindControl("lblIdSoal") as HiddenField).Value;
                Repeater RptAnswer = e.Item.FindControl("RptAnswer") as Repeater;
                Button btnQFlag = e.Item.FindControl("btnQFlag") as Button;
                string apiUrl = "https://localhost:44343/Modul/" + lblIdSoal + "/GetAnswerbyQeustionID";
                string inputJson = "";
                WebClient client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Headers["CORS"] = "true";
                client.Headers["Secure"] = "true";
                client.Headers["Data-type"] = "json";
                client.Encoding = Encoding.UTF8;
                string json = client.DownloadString(apiUrl);
                List<Answer> a = (new JavaScriptSerializer()).Deserialize<List<Answer>>(json);
                RptAnswer.DataSource = (new JavaScriptSerializer()).Deserialize<List<Answer>>(json);
                RptAnswer.DataBind();
            }
        }

        public class Answer
        {
            public string IdSoal { get; set; }
            public string IdPilihan { get; set; }
            public string bobot { get; set; }
            public string feedback { get; set; }
            public string pilihan { get; set; }
        }

        public class QuestionFlag
        {
            public string IdSoal { get; set; }
            public string nim { get; set; }
            public string flag { get; set; }
        }

        protected void btnQFlag_Click(object sender, EventArgs e)
        {
            QuestionFlag questionFlag = new QuestionFlag();


            var btn = (Button)sender;
            var item = (RepeaterItem)btn.NamingContainer;
            var ddl = (HiddenField)item.FindControl("lblIdSoal");
            var btnNumber = (Button)RptNumber.Items[item.ItemIndex].FindControl("btnNumber");
            btnNumber.BackColor = System.Drawing.Color.Yellow;
            questionFlag.nim = "0320210001";
            questionFlag.IdSoal = ddl.Value;
            questionFlag.flag = "true";
            string apiUrl = "https://localhost:44343/Modul/PostQuestionFlag";
            string inputJson = (new JavaScriptSerializer()).Serialize(questionFlag);
            WebClient uploadbs = new WebClient();
            uploadbs.Headers["Content-type"] = "application/json";
            uploadbs.Encoding = Encoding.UTF8;
            uploadbs.UploadString(apiUrl, inputJson);
        }
    }
}