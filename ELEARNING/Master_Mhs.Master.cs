using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELEARNING
{
    public partial class Master_Mhs : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //populateMatkul();
                populateCourses();
                populateUser();
            }
        }

        //private void populateMatkul()
        //{
        //    string apiUrl = "https://localhost:44343/Matkul?nim=";
        //    string nim = "0320210001";
        //    WebClient client = new WebClient();
        //    client.Headers["Content-type"] = "application/json";
        //    client.Headers["CORS"] = "true";
        //    client.Headers["Secure"] = "true";
        //    client.Headers["Data-type"] = "json";
        //    client.Encoding = Encoding.UTF8;
        //    string json = client.DownloadString(apiUrl + nim);
        //    RepeaterMatkul.DataSource = (new JavaScriptSerializer()).Deserialize<List<Kompetensi>>(json);
        //    RepeaterMatkul.DataBind();
        //}

        public class Kompetensi
        {
            public string idMatKul { get; set; }
            public string matKul { get; set; }
        }

        private void populateCourses()
        {
            string apiUrl = "https://localhost:44343/Modul/0320210001/getCoursebyNIM";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<MataKuliah> a = (new JavaScriptSerializer()).Deserialize<List<MataKuliah>>(json);
            RptCourses.DataSource = (new JavaScriptSerializer()).Deserialize<List<MataKuliah>>(json);
            RptCourses.DataBind();
        }

        private void populateUser()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/0320210001/GetStudent";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<Mahasiswa> a = (new JavaScriptSerializer()).Deserialize<List<Mahasiswa>>(json);
            Mahasiswa mhs = a[0];
            lblUserLogin.InnerText = mhs.nama;
            lblUserLogin2.InnerText = mhs.nama;
            lblUserNIM.InnerText = mhs.nim;
        }

        public class Mahasiswa
        {
            public string nama { get; set; }
            public string lok { get; set; }
            public string ls { get; set; }
            public string nim { get; set; }
            public int stage { get; set; }

        }

        public class MataKuliah
        {
            public string IdMatKul { get; set; }
            public string matKul { get; set; }
            public string sks { get; set; }
            public string semester { get; set; }
        }
    }
}