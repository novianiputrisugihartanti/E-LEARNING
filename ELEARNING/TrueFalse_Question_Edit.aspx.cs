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
    public partial class TrueFalse_Question_Edit : System.Web.UI.Page
    {
        string idbaru;
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

        public class PertDetail
        {
            public string IdPilihan { get; set; }
            public string pilihan { get; set; }
            public string bobot { get; set; }
        }

        public class DataItem
        {
            public BankSoal bankSoal { get; set; }
            public PertDetail jawaban { get; set; }
        }

        protected void yourButtonId_Click1(object sender, EventArgs e)
        {
            updateSoal();
            updateJawaban();
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

        public void updateJawaban()
        {
            PertDetail[] newAnsw = new PertDetail[5];

            for (int i = 0; i < 5; i++)
            {
                if (i == 0)
                {
                    string err1 = "";
                    newAnsw[i] = new PertDetail();
                    newAnsw[i].IdPilihan = txtID1.Text;
                    newAnsw[i].pilihan = txtChoice1.Text;
                    newAnsw[i].bobot = GradeC1.SelectedValue;

                    try
                    {

                        string apiUrl = "https://localhost:44343/BankSoal/editjwbn";
                        string inputJson = (new JavaScriptSerializer()).Serialize(newAnsw[i]);
                        WebClient pert1 = new WebClient();
                        pert1.Headers["Content-type"] = "application/json";
                        pert1.Encoding = Encoding.UTF8;
                        pert1.UploadString(apiUrl, inputJson);

                    }
                    catch (Exception ex)
                    {
                        err1 = "error1";

                    }


                }
                else if (i == 1)
                {
                    string err2 = "";
                    newAnsw[i] = new PertDetail();
                    newAnsw[i].IdPilihan = txtID2.Text;
                    newAnsw[i].pilihan = txtChoice2.Text;
                    newAnsw[i].bobot = GradeC2.SelectedValue;
                    try
                    {

                        string apiUrl = "https://localhost:44343/BankSoal/editjwbn";
                        string inputJson = (new JavaScriptSerializer()).Serialize(newAnsw[i]);
                        WebClient pert2 = new WebClient();
                        pert2.Headers["Content-type"] = "application/json";
                        pert2.Encoding = Encoding.UTF8;
                        pert2.UploadString(apiUrl, inputJson);

                    }
                    catch (Exception ex)
                    {
                        err2 = "error";

                    }


                }
            }
        }

        public void getAllData(string lsname)
        {
            WebClient client = new WebClient();

            try
            {
                string apiUrl = "https://localhost:44343/BankSoal/getsdj/" + lsname;
                WebClient banksoal1 = new WebClient();
                banksoal1.Headers["Content-type"] = "application/json";
                banksoal1.Headers["CORS"] = "true";
                banksoal1.Headers["Secure"] = "true";
                banksoal1.Headers["Data-type"] = "json";
                banksoal1.Encoding = Encoding.UTF8;
                string json = banksoal1.DownloadString(apiUrl + "?fungsi=list");

                // Menggunakan library JSON parsing, misalnya Newtonsoft.Json, untuk mengurai data JSON
                List<DataItem> dataItems = (new JavaScriptSerializer()).Deserialize<List<DataItem>>(json);
                int i = 0;
                // Menyisipkan data ke dalam textbox-textbox
                foreach (var dataItem in dataItems)
                {
                    if (i == 0)
                    {
                        txtQuestionID.Text = dataItem.bankSoal.IdSoal;
                        txtQuestionText.Text = dataItem.bankSoal.pertanyaan;
                        txtImage.Text = dataItem.bankSoal.image;
                        txtTopic.Text = dataItem.bankSoal.topik;
                        txtChoice1.Text = dataItem.jawaban.pilihan;
                        txtID1.Text = dataItem.jawaban.IdPilihan;
                        GradeC1.SelectedValue = dataItem.jawaban.bobot;
                        i = i + 1;
                    }
                    else if (i == 1)
                    {
                        txtChoice2.Text = dataItem.jawaban.pilihan;
                        txtID2.Text = dataItem.jawaban.IdPilihan;
                        GradeC2.SelectedValue = dataItem.jawaban.bobot;
                        i = i + 1;
                    }


                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Terjadi kesalahan: " + ex.Message);
            }
        }
    }
}