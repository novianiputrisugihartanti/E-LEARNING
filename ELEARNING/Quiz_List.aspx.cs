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
    public partial class Quiz_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            populateKompetensi();
        }
        private void populateKompetensi()
        {
            string apiUrl = "https://localhost:44343/Dosen?username=";
            string idDosen = "can123";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + idDosen);
            JavaScriptSerializer java = new JavaScriptSerializer();
            Dosen dosen = java.Deserialize<List<Dosen>>(json)[0];
            

            apiUrl = "https://localhost:44343/Kompetensi2";
            client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            json = client.DownloadString(apiUrl + "?fungsi=list&&idMatkul=" + dosen.idMatKul);
            List<Kompetensi> listKomp = (new JavaScriptSerializer()).Deserialize<List<Kompetensi>>(json);
            List<Kompetensi> listAsc = listKomp;
            for (int i = listKomp.Count; i > 0; i--)
            {
                string idKomp = listKomp[i - 1].idKomp;

                int endIndex = idKomp.Length - 8;
                string newId = idKomp.Substring(8, endIndex);
                listKomp[i - 1].index = Convert.ToInt32(newId);

                listKomp[i - 1].matkul = dosen.idMatKul;
                listAsc[Convert.ToInt32(newId) - 1] = listKomp[i - 1];
            }
            rptDaftarKomp.DataSource = listAsc;
            rptDaftarKomp.DataBind();

            
        }
        
        protected void rptDaftarKomp_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            string idMatkul = (e.Item.FindControl("idMatkul") as HiddenField).Value;
            string lblComp = (e.Item.FindControl("idKomp") as HiddenField).Value;
            string apiUrl = "https://localhost:44343/Quiz";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?idKomp="+ lblComp);
            List<Quiz> listQuiz = (new JavaScriptSerializer()).Deserialize<List<Quiz>>(json);
            for (int i = listQuiz.Count; i > 0; i--)
            {
                listQuiz[i - 1].matkul = idMatkul;
            }
            Repeater RptLODetail = e.Item.FindControl("rptDaftarQuiz") as Repeater;
            RptLODetail.DataSource = (new JavaScriptSerializer()).Deserialize<List<Quiz>>(json);
            RptLODetail.DataBind();
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
        public class Dosen
        {
            public string imageDosen { get; set; }
            public string jkelaminDosen { get; set; }
            public string namaDosen { get; set; }
            public string npk { get; set; }

            public string paswdDosen { get; set; }
            public string useridDosen { get; set; }
            public string idMatKul { get; set; }
            public string matKul { get; set; }
        }
    }
}