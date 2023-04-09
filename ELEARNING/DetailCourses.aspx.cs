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
            //testResult.HRef = "CompetenceTestResult.aspx?id=" + Request.QueryString["id"];
            
            populateKompetensi();

        }
        private void populateKompetensi()
        {
            string idMatkul = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Kompetensi";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?fungsi=list&&idMatkul="+ idMatkul);
            List<Kompetensi> listKomp = (new JavaScriptSerializer()).Deserialize<List<Kompetensi>>(json);
            List<Kompetensi> listAsc = listKomp;
            for (int i = listKomp.Count; i > 0; i--)
            {
                string idKomp = listKomp[i - 1].idKomp;
                
                int endIndex = idKomp.Length - 8;
                string newId = idKomp.Substring(8, endIndex);
                listKomp[i - 1].index = Convert.ToInt32(newId);

                listKomp[i - 1].matkul = idMatkul;
                listAsc[Convert.ToInt32(newId)-1] = listKomp[i - 1];
            }
            rptDaftarKomp.DataSource = listAsc;
            rptDaftarKomp.DataBind();


        }
        public class Quiz
        {
            public string idUjian { get; set; }
            public string deskripsi { get; set; }
            public string namaUjian { get; set; }
            public string matkul { get; set; }
        }
        public class Kompetensi
        {
            public string idKomp { get; set; }
            public string kompetensi { get; set; }
            public string matkul { get; set; }
            public int index { get; set; }
        }

        protected void rptDaftarKomp_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            string idMatkul = Request.QueryString["id"];
            string lblComp = (e.Item.FindControl("idKomp") as HiddenField).Value;
            string apiUrl = "https://localhost:44343/Quiz";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?idKomp=" + lblComp);
            List<Quiz> listQuiz = (new JavaScriptSerializer()).Deserialize<List<Quiz>>(json);
            for (int i = listQuiz.Count; i > 0; i--)
            {
                listQuiz[i - 1].matkul = idMatkul;
            }
            Repeater rptDaftarQuiz = e.Item.FindControl("rptDaftarQuiz") as Repeater;
            rptDaftarQuiz.DataSource = listQuiz;
            rptDaftarQuiz.DataBind();
        }
    }
}