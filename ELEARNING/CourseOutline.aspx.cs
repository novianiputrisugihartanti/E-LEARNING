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
    public partial class CourseOutline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadCourses();
        }
        public void loadCourses()
        {
            string courseId = Request.QueryString["id"];
            string apiUrl = "https://localhost:44343/Modul/" + courseId + "/getLODetailbyID";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<Modul3> a = (new JavaScriptSerializer()).Deserialize<List<Modul3>>(json);
            Modul3 m = a[0];
            lblCourseName.InnerText = m.loKet;
            lblBCCourseName.InnerText = m.loKet;
        }

        public class Modul3
        {
            public string IdLODetail { get; set; }
            public string loDetail { get; set; }
            public string loKet { get; set; }
            public string tkKesulitan { get; set; }
        }
    }
}