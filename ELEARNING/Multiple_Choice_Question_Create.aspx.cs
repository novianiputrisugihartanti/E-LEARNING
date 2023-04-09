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
    public partial class Multiple_Choice_Question_Create : System.Web.UI.Page
    {
        string idbaru;
        protected void Page_Load(object sender, EventArgs e)
        {
            getIDBankSoal();
            getIDChoice();
        }
        public void getIDChoice()
        {
            txtID1.Text = string.Concat(idbaru, "Opt1");
        }
        public void getIDBankSoal()
        {
            string apiUrl = "https://localhost:44343/Quiz/GetIDBank";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?fungsi=list");
            //Repeater Rpt1 = (Repeater)Master.FindControl("Content2").FindControl("main").FindControl("repeaterLOKBeginner");
            BankSoal soal = (new JavaScriptSerializer()).Deserialize<BankSoal>(json);
            string idlama = soal.IdSoal;
            char lastCharacter = idlama[idlama.Length - 1];
            int newintid = int.Parse(lastCharacter.ToString()) + 1;
            string strgroupids = idlama.Remove(idlama.Length - 1);
            string idbaru = string.Concat(strgroupids, newintid.ToString());
            txtQuestionID.Text = idbaru;

        }
        public class BankSoal
        {
            public string IdSoal { get; set; }
            public string pertanyaan { get; set; }
            public string image { get; set; }
            public string topik { get; set; }
        }

        protected void saveBank_Click(object sender, EventArgs e)
        {
            BankSoal bs = new BankSoal();

            bs.IdSoal = txtQuestionID.Text;
            bs.pertanyaan = txtQuestionText.Text;
            bs.image = "aa";
            bs.topik = "topik";

            try
            {

                string apiUrl = "https://localhost:44343/Quiz";
                string inputJson = (new JavaScriptSerializer()).Serialize(bs);
                WebClient client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Encoding = Encoding.UTF8;
                client.UploadString(apiUrl, inputJson);

                apiUrl = "https://localhost:44343/Quiz/GetIDBank";
                client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Headers["CORS"] = "true";
                client.Headers["Secure"] = "true";
                client.Headers["Data-type"] = "json";
                client.Encoding = Encoding.UTF8;
                string json = client.DownloadString(apiUrl + "?fungsi=list");
                //Repeater Rpt1 = (Repeater)Master.FindControl("Content2").FindControl("main").FindControl("repeaterLOKBeginner");
                BankSoal soal = (new JavaScriptSerializer()).Deserialize<BankSoal>(json);
                string idlama = soal.IdSoal;


                string URI = "https://localhost:44343/Quiz/createTSoal";
                string myParameters = "IdSoal=" + Uri.EscapeDataString(idlama) + "&IdTSoal=" + Uri.EscapeDataString("PG");
                client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Headers["CORS"] = "true";
                client.Headers["Secure"] = "true";
                client.Headers["Data-type"] = "json";
                client.Encoding = Encoding.UTF8;
                string HtmlResult = client.UploadString(URI, myParameters);

            }
            catch (Exception ex)
            {
                throw ex;
            }
            
        }
    }
}