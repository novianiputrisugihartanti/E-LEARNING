using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ELEARNING
{
    public partial class Profile : System.Web.UI.Page
    {
        string file;
        string filename;
        protected void Page_Load(object sender, EventArgs e)
        {
            populateProfile();
            populateProfilePhoto();
        }

        private void populateProfile()
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
            List<Mahasiswa> list = (new JavaScriptSerializer()).Deserialize<List<Mahasiswa>>(json);
            RptProfile.DataSource = (new JavaScriptSerializer()).Deserialize<List<Mahasiswa>>(json);
            RptProfile.DataBind();
        }

        public class Mahasiswa
        {
            public string nama { get; set; }
            public string lok { get; set; }
            public string ls { get; set; }
            public string nim { get; set; }
            public int stage { get; set; }

        }



        private void populateProfilePhoto()
        {
            string apiUrl = "https://localhost:44343/Modul/0320210001/GetProfilePhoto";
            string inputJson = "";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            List<profilePhotoEdit> list = (new JavaScriptSerializer()).Deserialize<List<profilePhotoEdit>>(json);
            RptprofilePhoto.DataSource = (new JavaScriptSerializer()).Deserialize<List<profilePhotoEdit>>(json);
            RptprofilePhoto.DataBind();
        }

        public class profilePhotoEdit
        {
            public string nim { get; set; }
            public string profilePhoto { get; set; }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            profilePhotoEdit profilePhotoEdit = new profilePhotoEdit();

            try
            {
                filename = Path.GetFileName(formFile.PostedFile.FileName);
                formFile.SaveAs(Server.MapPath("assets/img/" + filename));

            }
            catch (Exception ex)
            {

            }

            profilePhotoEdit.nim = "0320210001";
            profilePhotoEdit.profilePhoto = formFile.FileName;
            string apiUrl = "https://localhost:44343/Modul/EditProfilePhoto";
            string inputJson = (new JavaScriptSerializer()).Serialize(profilePhotoEdit);
            WebClient uploadbs = new WebClient();
            uploadbs.Headers["Content-type"] = "application/json";
            uploadbs.Encoding = Encoding.UTF8;
            uploadbs.UploadString(apiUrl, inputJson);
        }
    }
}