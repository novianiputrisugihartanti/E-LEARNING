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
    public partial class Monitoring_Quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            populateTotalQ();
            populateMahasiswa();
        }
        private void populateTotalQ()
        {
            string apiUrl = "https://localhost:44343/Quiz/totalQ?idUjian=";
            string idUjian = Request.QueryString["idujian"];
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + idUjian);
            List<Pertanyaan> listPertanyaan = (new JavaScriptSerializer()).Deserialize<List<Pertanyaan>>(json);
            rptDaftarPertanyaan.DataSource = listPertanyaan;
            rptDaftarPertanyaan.DataBind();


        }
        private void populateMahasiswa()
        {
            string apiUrl = "https://localhost:44343/Quiz/daftarMahasiswa?idUjian=";
            string idUjian = Request.QueryString["idujian"];
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + idUjian);
            List<mahasiswa> listMahasiswa = (new JavaScriptSerializer()).Deserialize<List<mahasiswa>>(json);
            rptDaftarMahasiswa.DataSource = listMahasiswa;
            rptDaftarMahasiswa.DataBind();


        }
        public class mahasiswa
        {
            public string nama { get; set; }
            public string nim { get; set; }
            public string nilai { get; set; }
            public string start { get; set; }
            public string end { get; set; }
            public string attempt { get; set; }

        }
        public class Pertanyaan
        {
            public string IdSoal { get; set; }
            public string pertanyaan { get; set; }
            public string image { get; set; }
            public string topik { get; set; }
            public string nama { get; set; }
            public string nim { get; set; }
            public string jawaban { get; set; }
            public string isCorrect { get; set; }
            public string bobot { get; set; }
            public string nilai { get; set; }
            public string nomorSoal { get; set; }

        }

        protected void rptDaftarMahasiswa_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            string nim = (e.Item.FindControl("nim") as HiddenField).Value;
            string idUjian = Request.QueryString["idujian"];
            string apiUrl = "https://localhost:44343/Quiz/daftarJawabanMahasiswa?idUjian="+ idUjian+ "&nim="+ nim;
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);

            Repeater rptHistoryJawaban = e.Item.FindControl("rptHistoryJawaban") as Repeater;
            rptHistoryJawaban.DataSource = (new JavaScriptSerializer()).Deserialize<List<Pertanyaan>>(json);
            rptHistoryJawaban.DataBind();
        }

    }
}