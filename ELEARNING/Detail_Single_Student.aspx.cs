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
    public partial class Detail_Single_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string lsname = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Mahasiswa/PRG1/" + lsname + "/singlestud";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?fungsi=list");
            //Repeater Rpt1 = (Repeater)Master.FindControl("Content2").FindControl("main").FindControl("repeaterLOKBeginner");
            ByStud stud = (new JavaScriptSerializer()).Deserialize<ByStud>(json);
            lblnama.Text = stud.nama;
            lblnim.Text = stud.nim;
            lblStage.Text = stud.stage;
            lblLOK.Text = stud.lok;
            lblLS.Text = stud.ls;
        }



        public class ByStud
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