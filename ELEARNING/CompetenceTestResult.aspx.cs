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
    public partial class CompetenceTestResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getTestResult();
            string idMatkul = Request.QueryString["idmatkul"];
            btnKembali.HRef = "DetailCourses.aspx?id=" + idMatkul;
        }
        private void getTestResult()
        {
            string idKomp = Request.QueryString["idujian"];
            
            string nim = "0320210001";
            string apiUrl = "https://localhost:44343/Kompetensi";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl+ "?nim="+nim+ "&&idKomp=" + idKomp);
            List<Kompetensi> listKomp = (new JavaScriptSerializer()).Deserialize<List<Kompetensi>>(json);
            Kompetensi komp = listKomp[0];
            //set nilai
            btnKompetensi.InnerHtml = listKomp[0].kompetensi.ToString();

            nilai.InnerText = komp.nilai;
            if (Int32.Parse( komp.nilai) > 70)
            {
                review.InnerHtml = "You <b>ALREADY HAVE ALLOWED</b> to continue to next module.";
            }
            else
            {
                review.InnerHtml = "You <b>NOT YET ALLOWED</b> to continue to next module.";
                btnNext.Visible = false;
                btnRetake.Visible = true;
            }

            //Set What you know
            apiUrl = "https://localhost:44343/Ujian/getHasilUjianSalah";
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            json = client.DownloadString(apiUrl + "?nim=" + nim + "&&idUjian=" + idKomp);
            List<BankSoal> listTopikSalah = (new JavaScriptSerializer()).Deserialize<List<BankSoal>>(json);
            rptSalah.DataSource = listTopikSalah;
            rptSalah.DataBind();

            apiUrl = "https://localhost:44343/Ujian/getHasilUjianBenar";
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            json = client.DownloadString(apiUrl + "?nim=" + nim + "&&idUjian=" + idKomp);
            List<BankSoal> listTopikBenar = (new JavaScriptSerializer()).Deserialize<List<BankSoal>>(json);
            rptBenar.DataSource = listTopikBenar;
            rptBenar.DataBind();
        }
        public class Kompetensi
        {
            public string nama { get; set; }
            public string nilai { get; set; }
            public string ujian { get; set; }
            public string kompetensi { get; set; }
        }
        public class BankSoal
        {
            public string idSoal { get; set; }
            public string pertanyaan { get; set; }
            public string image { get; set; }
            public string topik { get; set; }
        }
    }
}