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
    public partial class OtherResources : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateLODetail();
                populateCompetence();
            }
        }

        private void populateCompetence()
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
            List<Modul2> a = (new JavaScriptSerializer()).Deserialize<List<Modul2>>(json);
            Modul2 m = a[0];
            lblBCCompName.InnerText = m.kompetensi;
            btnCollapse.InnerText = "Modul: " + m.kompetensi;
        }


        public class Modul2
        {
            public string IdKomp { get; set; }
            public string LoK { get; set; }
            public string kompetensi { get; set; }
        }

        private void populateLODetail()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/getAllLObyKomp";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<LODetail> list = (new JavaScriptSerializer()).Deserialize<List<LODetail>>(json);
            RptLODetail.DataSource = (new JavaScriptSerializer()).Deserialize<List<LODetail>>(json);
            RptLODetail.DataBind();

            if (list.Count == 0)
            {
                lblEmpty.Visible = true;
            }
            else
            {
                lblEmpty.Visible = false;
            }
        }

        public class LODetail
        {
            public string loDetail { get; set; }
            public string loKet { get; set; }
            public string tkKesulitan { get; set; }
        }
    }
}