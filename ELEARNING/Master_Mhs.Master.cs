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
                populateMatkul();
            }
        }
        //private void populateKompetensi()
        //{
        //    string apiUrl = "https://localhost:44343/Kompetensi";
        //    string inputJson = "";
        //    WebClient client = new WebClient();
        //    client.Headers["Content-type"] = "application/json";
        //    client.Headers["CORS"] = "true";
        //    client.Headers["Secure"] = "true";
        //    client.Headers["Data-type"] = "json";
        //    client.Encoding = Encoding.UTF8;
        //    string json = client.DownloadString(apiUrl+"?fungsi=list");
        //    RepeaterKompetensi.DataSource = (new JavaScriptSerializer()).Deserialize<List<Kompetensi>>(json);
        //    RepeaterKompetensi.DataBind();
        //}
        private void populateMatkul()
        {
            string apiUrl = "https://localhost:44343/Matkul?nim=";
            string nim = "0320210001";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + nim);
            RepeaterMatkul.DataSource = (new JavaScriptSerializer()).Deserialize<List<Kompetensi>>(json);
            RepeaterMatkul.DataBind();
        }

        public class Kompetensi
        {
            public string idMatKul { get; set; }
            public string matKul { get; set; }
        }
    }
}