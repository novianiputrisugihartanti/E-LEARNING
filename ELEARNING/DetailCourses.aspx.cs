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
    public partial class DetailCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateCompetence();
                populateCourse();
                populateTest();
                populateComfirm();

            }

        }

        private void populateCourse()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/getCoursebyID";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<matkul> a = (new JavaScriptSerializer()).Deserialize<List<matkul>>(json);
            matkul m = a[0];
            lblCourseName.InnerText = m.MatKul;
            lblBCCourseName.InnerHtml = m.MatKul;

        }

        private void populateComfirm()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/getTestbyIDMatkul";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<CompTest> list = (new JavaScriptSerializer()).Deserialize<List<CompTest>>(json);
            //RptConfirm.DataSource = (new JavaScriptSerializer()).Deserialize<List<CompTest>>(json);
            //RptConfirm.DataBind();
        }

        public class matkul
        {
            public string IdMatKul { get; set; }
            public string MatKul { get; set; }
            public string SKS { get; set; }
            public string Semester { get; set; }
        }

        private void populateCompetence()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/getKompbyCourse";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<Competence> list = (new JavaScriptSerializer()).Deserialize<List<Competence>>(json);
            RptCompetence.DataSource = (new JavaScriptSerializer()).Deserialize<List<Competence>>(json);
            RptCompetence.DataBind();
        }

        public class Competence
        {
            public string IdKomp { get; set; }
            public string loK { get; set; }
            public string kompetensi { get; set; }
        }

        protected void RptCompetence_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string lblComp = (e.Item.FindControl("lblComp") as HiddenField).Value;
                Repeater RptLODetail = e.Item.FindControl("RptLODetail") as Repeater;
                string apiUrl = "https://localhost:44343/Modul/AC/" + lblComp + "/getLObyLS";
                string inputJson = "";
                WebClient client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Headers["CORS"] = "true";
                client.Headers["Secure"] = "true";
                client.Headers["Data-type"] = "json";
                client.Encoding = Encoding.UTF8;
                string json = client.DownloadString(apiUrl);
                List<LODetail> a = (new JavaScriptSerializer()).Deserialize<List<LODetail>>(json);
                RptLODetail.DataSource = (new JavaScriptSerializer()).Deserialize<List<LODetail>>(json);
                RptLODetail.DataBind();
            }
        }

        public class LODetail
        {
            public string IdLODetail { get; set; }
            public string loDetail { get; set; }
            public string loKet { get; set; }
            public string tkKesulitan { get; set; }
        }

        private void populateTest()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/getTestbyIDMatkul";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<CompTest> a = (new JavaScriptSerializer()).Deserialize<List<CompTest>>(json);
            CompTest m = a[0];
            lblAttempt.Text = m.attempt;
            lblTestName.InnerText = m.namaUjian;
            lblStart.Text = m.timeOpen;
            lblClose.Text = m.timeClose;
        }

        public class CompTest
        {
            public string IdPelaksanaan { get; set; }
            public string attempt { get; set; }
            public string keterangan { get; set; }
            public string IdUjian { get; set; }
            public string IsJawabRandom { get; set; }
            public string IsPertRandom { get; set; }
            public string PertPerHalaman { get; set; }
            public string deskripsi { get; set; }
            public string namaUjian { get; set; }
            public string timeClose { get; set; }
            public string timeLimit { get; set; }
            public string timeOpen { get; set; }
        }
    }
}