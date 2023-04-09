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
    public partial class Question_Bank : System.Web.UI.Page
    {
        private const string ASCENDING = " ASC";
        private const string DESCENDING = " DESC";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                string apiUrl = "https://localhost:44343/BankSoal/GetKompetensi";
                WebClient client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Headers["CORS"] = "true";
                client.Headers["Secure"] = "true";
                client.Headers["Data-type"] = "json";
                client.Encoding = Encoding.UTF8;
                string json = client.DownloadString(apiUrl + "?fungsi=list");
                ddlkompetensi.DataSource = (new JavaScriptSerializer()).Deserialize<List<Kompetensi>>(json);
                ddlkompetensi.DataValueField = "kompetensi";
                ddlkompetensi.DataTextField = "kompetensi";
                ddlkompetensi.DataBind();

                BindGridView();
            }
        }
        public class BankSoal
        {
            public string IdSoal { get; set; }
            public string pertanyaan { get; set; }
            public string image { get; set; }
            public string topik { get; set; }
        }
        public class Kompetensi
        {

            public string IdKomp { get; set; }
            public string LoK { get; set; }
            public string kompetensi { get; set; }
        }
        public class TipeSoal
        {
            public string IdTSoal { get; set; }
            public string keterangan { get; set; }
        }
        public class HapusId
        {
            public string IdSoal { get; set; }
        }

        private void BindGridView()
        {
            string apiUrl = "https://localhost:44343/BankSoal/GetBankSoal";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?fungsi=list");
            DGSoal.DataSource = (new JavaScriptSerializer()).Deserialize<List<BankSoal>>(json);

            DGSoal.DataBind();
        }

        protected void DGSoal_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DGSoal.PageIndex = e.NewPageIndex;
            loadData();
        }

        public void loadData()
        {
            string apiUrl = "https://localhost:44343/BankSoal/GetBankSoal";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?fungsi=list");
            DGSoal.DataSource = (new JavaScriptSerializer()).Deserialize<List<BankSoal>>(json);

            DGSoal.DataBind();
        }
        protected void DGSoal_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Hapus")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument); // Mengambil indeks baris GridView
                GridViewRow row = DGSoal.Rows[rowIndex]; // Mengambil baris GridView
                string idSoal = row.Cells[1].Text;


                Response.Write("<script>alert('"+idSoal+"')</script>");


                using (WebClient webClient = new WebClient())
                {

                    HapusId ids = new HapusId();

                    ids.IdSoal =idSoal;
                   
                    string apiUrl = "https://localhost:44343/BankSoal/hapussoal";
                    string inputJson = (new JavaScriptSerializer()).Serialize(ids);
                    WebClient uploadpil = new WebClient();
                    uploadpil.Headers["Content-type"] = "application/json";
                    uploadpil.Encoding = Encoding.UTF8;
                    uploadpil.UploadString(apiUrl, inputJson);

                    BindGridView();

                }

            } else if (e.CommandName == "Duplikat")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument); // Mengambil indeks baris GridView
                GridViewRow row = DGSoal.Rows[rowIndex]; // Mengambil baris GridView
                string idSoal = row.Cells[1].Text;

                Response.Write("<script>alert('" + idSoal + "')</script>");

                using (WebClient webClient = new WebClient())
                {

                    HapusId idd = new HapusId();

                    idd.IdSoal = idSoal;

                    string apiUrl = "https://localhost:44343/BankSoal/duplicate";
                    string inputJson = (new JavaScriptSerializer()).Serialize(idd);
                    WebClient uploadpil = new WebClient();
                    uploadpil.Headers["Content-type"] = "application/json";
                    uploadpil.Encoding = Encoding.UTF8;
                    uploadpil.UploadString(apiUrl, inputJson);

                    BindGridView();

                }
            }else if (e.CommandName == "Atur")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument); // Mengambil indeks baris GridView
                GridViewRow row = DGSoal.Rows[rowIndex]; // Mengambil baris GridView
                string idSoal = row.Cells[1].Text;

                string apiUrl = "https://localhost:44343/BankSoal/GetTipeSoal/"+idSoal;
                WebClient ts = new WebClient();
                ts.Headers["Content-type"] = "application/json";
                ts.Headers["CORS"] = "true";
                ts.Headers["Secure"] = "true";
                ts.Headers["Data-type"] = "json";
                ts.Encoding = Encoding.UTF8;
                string json = ts.DownloadString(apiUrl + "?fungsi=list");
                List<TipeSoal> tipeSoalList = (new JavaScriptSerializer()).Deserialize<List<TipeSoal>>(json); // Mengubah menjadi List<TipeSoal> atau TipeSoal[]

                string jenisSoal = tipeSoalList[0].IdTSoal;
                if (jenisSoal.Equals("ES"))
                {
                    Response.Redirect("~/Essay_Question_Edit.aspx?Id=" + idSoal);
                }
                else if (jenisSoal.Equals("BS"))
                {
                    Response.Redirect("~/TrueFalse_Question_Edit.aspx?Id=" + idSoal);
                }
                else if (jenisSoal.Equals("PG"))
                {
                    Response.Redirect("~/Multiple_Choice_Question_Edit.aspx?Id=" + idSoal);
                }

               
            }
        }

        protected void DGSoal_Sorting(object sender, GridViewSortEventArgs e)
        {
            string sortExpression = e.SortExpression;

            if (GridViewSortDirection == SortDirection.Ascending)
            {
                GridViewSortDirection = SortDirection.Descending;
                SortGridView(sortExpression, DESCENDING);
            }
            else
            {
                GridViewSortDirection = SortDirection.Ascending;
                SortGridView(sortExpression, ASCENDING);
            }
        }

        public SortDirection GridViewSortDirection
        {
            get
            {
                if (ViewState["sortDirection"] == null)
                    ViewState["sortDirection"] = SortDirection.Ascending;
                return (SortDirection)ViewState["sortDirection"];
            }
            set { ViewState["sortDirection"] = value; }
        }

        private void SortGridView(string sortExpression, string direction)
        {

            DGSoal.DataBind();
        }

        protected void DGSoal_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            string selected = (string)ddl.SelectedValue;
            string apiUrl = "https://localhost:44343/BankSoal/" + selected;
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?fungsi=list");
            DGSoal.DataSource = (new JavaScriptSerializer()).Deserialize<List<BankSoal>>(json);

            DGSoal.DataBind();
        }

        protected void ddlkompetensi_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            string selected = (string)ddl.SelectedValue;
            string apiUrl = "https://localhost:44343/BankSoal/" + selected;
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Headers["CORS"] = "true";
            client.Headers["Secure"] = "true";
            client.Headers["Data-type"] = "json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl + "?fungsi=list");
            DGSoal.DataSource = (new JavaScriptSerializer()).Deserialize<List<BankSoal>>(json);

            DGSoal.DataBind();
        }
    }
}