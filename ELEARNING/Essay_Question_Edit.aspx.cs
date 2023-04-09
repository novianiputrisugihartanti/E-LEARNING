using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using System.Windows.Forms;

namespace ELEARNING
{
    public partial class Essay_Question_Edit : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string lsname = Request.QueryString["Id"];
                getAllData(lsname);
            }
        }

        public class BankSoal
        {
            public string IdSoal { get; set; }
            public string pertanyaan { get; set; }
            public string image { get; set; }
            public string topik { get; set; }
        }

        protected void yourButtonId_Click(object sender, EventArgs e)
        {
            updateSoal();
            Response.Redirect("~/Question_Bank.aspx");
        }

        public void updateSoal()
        {
            string err = "";
            BankSoal bs = new BankSoal();

            bs.IdSoal = txtQuestionID.Text;
            bs.pertanyaan = txtQuestionText.Text;
            bs.image = txtImage.Text;
            bs.topik = txtTopic.Text;

            try
            {

                string apiUrl = "https://localhost:44343/BankSoal/editsoal";
                string inputJson = (new JavaScriptSerializer()).Serialize(bs);
                WebClient uploadbs = new WebClient();
                uploadbs.Headers["Content-type"] = "application/json";
                uploadbs.Encoding = Encoding.UTF8;
                uploadbs.UploadString(apiUrl, inputJson);
                err = "";
            }
            catch (Exception ex)
            {
                err = "eror";

            }
        }

        public void getAllData(string lsname)
        {
            WebClient client = new WebClient();

            try
            {
                string apiUrl = "https://localhost:44343/BankSoal/getesai/" + lsname;
                WebClient banksoal1 = new WebClient();
                banksoal1.Headers["Content-type"] = "application/json";
                banksoal1.Headers["CORS"] = "true";
                banksoal1.Headers["Secure"] = "true";
                banksoal1.Headers["Data-type"] = "json";
                banksoal1.Encoding = Encoding.UTF8;
                string json = banksoal1.DownloadString(apiUrl + "?fungsi=list");

                // Menggunakan library JSON parsing, misalnya Newtonsoft.Json, untuk mengurai data JSON
                List<BankSoal> bankSoals = (new JavaScriptSerializer()).Deserialize<List<BankSoal>>(json); // Mengubah menjadi List<TipeSoal> atau TipeSoal[]

                txtQuestionID.Text = bankSoals[0].IdSoal;
                        txtQuestionText.Text = bankSoals[0].pertanyaan;
                        txtImage.Text = bankSoals[0].image;
                        txtTopic.Text = bankSoals[0].topik;
                        
            }
            catch (Exception ex)
            {
                MessageBox.Show("Terjadi kesalahan: " + ex.Message);
            }
        }
    }
}