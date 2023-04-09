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
    public partial class Detail_ByLoK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string lokname = Request.QueryString["lok"];
            if(lokname == "Moderat")
            {
                lblJudul.Text = "Moderate";
            } else if (lokname == "Pemula")
            {
                lblJudul.Text = "Beginner";
            } else if (lokname == "Lanjut")
            {
                lblJudul.Text = "Expert";
            }
            
            string apiUrl = "https://localhost:44343/Mahasiswa/PRG1/" + lokname + "/lokstud";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?fungsi=list");
            //Repeater Rpt1 = (Repeater)Master.FindControl("Content2").FindControl("main").FindControl("repeaterLOKBeginner");
            repeaterLOK.DataSource = (new JavaScriptSerializer()).Deserialize<List<ByLok>>(json);
            repeaterLOK.DataBind();
        }

        public class ByLok
        {
            public string nama { get; set; }
            public string lok { get; set; }
            public string ls { get; set; }
            public string nim { get; set; }
            public string stage { get; set; }
            public string mkul { get; set; }
        }
    }
}