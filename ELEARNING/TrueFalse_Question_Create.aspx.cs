﻿using System;
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
    public partial class TrueFalse_Question_Create : System.Web.UI.Page
    {
        string idbaru;
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

                getIDBankSoal();
                getIDChoice();
            }
        }

        public class Kompetensi
        {

            public string IdKomp { get; set; }
            public string LoK { get; set; }
            public string kompetensi { get; set; }
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

        public class LODetail
        {
            public string IdLODetail { get; set; }
            public string Keterangan { get; set; }
            public string Judul { get; set; }
            public string TkKesulitan { get; set; }
        }

        public class RelationKategoriSoalModel
        {
            public string IdSoal { get; set; }
            public string IdTSoal { get; set; }
        }


        public class RelationLoDetailModel
        {
            public string IdSoal { get; set; }
            public string Ket { get; set; }
        }

        public class RelationJawabanSoalModel
        {
            public string IdSoal { get; set; }
            public string IdPil { get; set; }
        }

        public class RelationMempunyaiSoal
        {
            public string IdSoal { get; set; }
            public string kompetensi { get; set; }

        }
        public void getIDBankSoal()
        {
            string apiUrl = "https://localhost:44343/BankSoal/GetIDBank";
            WebClient banksoal1 = new WebClient();
            banksoal1.Headers["Content-type"] = "application/json";
            banksoal1.Headers["CORS"] = "true";
            banksoal1.Headers["Secure"] = "true";
            banksoal1.Headers["Data-type"] = "json";
            banksoal1.Encoding = Encoding.UTF8;
            string json = banksoal1.DownloadString(apiUrl + "?fungsi=list");
            BankSoal soal = (new JavaScriptSerializer()).Deserialize<BankSoal>(json);
            string idlama = soal.IdSoal;
            char lastCharacter = idlama[idlama.Length - 1];
            int newintid = int.Parse(lastCharacter.ToString()) + 1;
            string strgroupids = idlama.Remove(idlama.Length - 1);
            idbaru = string.Concat(strgroupids, newintid.ToString());
            txtQuestionID.Text = idbaru;

        }
        public void UploadBankSoal()
        {
            string err = "";
            BankSoal bs = new BankSoal();

            bs.IdSoal = txtQuestionID.Text;
            bs.pertanyaan = txtQuestionText.Text;
            bs.image = txtImage.Text;
            bs.topik = txtTopic.Text;

            try
            {

                string apiUrl = "https://localhost:44343/BankSoal";
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

            if (err == "")
            {
                try
                {

                    RelationKategoriSoalModel rs = new RelationKategoriSoalModel();

                    rs.IdSoal = txtQuestionID.Text;
                    rs.IdTSoal = "BS";
                    string apiUrl = "https://localhost:44343/BankSoal/rkatsoal";
                    string inputJson = (new JavaScriptSerializer()).Serialize(rs);
                    WebClient uploadbs = new WebClient();
                    uploadbs.Headers["Content-type"] = "application/json";
                    uploadbs.Encoding = Encoding.UTF8;
                    uploadbs.UploadString(apiUrl, inputJson);

                }
                catch (Exception ex)
                {
                   
                }
            }
            else
            {
                Response.Write("<script>alert('Cie error')</script>");
            }

        }

        public void getIDChoice()
        {
            txtID1.Text = string.Concat(idbaru, "Opt1");
            txtID2.Text = string.Concat(idbaru, "Opt2");
        }
        public void UploadJawaban()
        {
            PertDetail[] newAnsw = new PertDetail[2];

            for (int i = 0; i < 2; i++)
            {
                if (i == 0)
                {
                    string err1 = "";
                    newAnsw[i] = new PertDetail();
                    newAnsw[i].IdPilihan = txtID1.Text;
                    newAnsw[i].pilihan = txtChoice1.SelectedValue;
                    newAnsw[i].bobot = GradeC1.SelectedValue;

                    try
                    {

                        string apiUrl = "https://localhost:44343/BankSoal/pertemuan";
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

                    if (err1 == "")
                    {
                        try
                        {
                            using (WebClient webClient = new WebClient())
                            {

                                RelationJawabanSoalModel jwm = new RelationJawabanSoalModel();

                                jwm.IdSoal = txtQuestionID.Text;
                                jwm.IdPil = txtID1.Text;
                                string apiUrl = "https://localhost:44343/BankSoal/rjawsoal";
                                string inputJson = (new JavaScriptSerializer()).Serialize(jwm);
                                WebClient uploadpil = new WebClient();
                                uploadpil.Headers["Content-type"] = "application/json";
                                uploadpil.Encoding = Encoding.UTF8;
                                uploadpil.UploadString(apiUrl, inputJson);

                            }
                        }
                        catch (Exception ex)
                        {
                           
                        }
                    }

                }
                else if (i == 1)
                {
                    string err2 = "";
                    newAnsw[i] = new PertDetail();
                    newAnsw[i].IdPilihan = txtID2.Text;
                    newAnsw[i].pilihan = txtChoice2.SelectedValue;
                    newAnsw[i].bobot = GradeC2.SelectedValue;
                    try
                    {

                        string apiUrl = "https://localhost:44343/BankSoal/pertemuan";
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

                    if (err2 == "")
                    {
                        try
                        {
                            RelationJawabanSoalModel jwm2 = new RelationJawabanSoalModel();

                            jwm2.IdSoal = txtQuestionID.Text;
                            jwm2.IdPil = txtID2.Text;
                            string apiUrl = "https://localhost:44343/BankSoal/rjawsoal";
                            string inputJson = (new JavaScriptSerializer()).Serialize(jwm2);
                            WebClient uploadpil2 = new WebClient();
                            uploadpil2.Headers["Content-type"] = "application/json";
                            uploadpil2.Encoding = Encoding.UTF8;
                            uploadpil2.UploadString(apiUrl, inputJson);

                        }
                        catch (Exception ex)
                        {
                            
                        }
                    }

                }


            }

        }

        protected void yourButtonId_Click1(object sender, EventArgs e)
        {
            UploadBankSoal();
            UploadJawaban();
            PunyaSoal();
            string value = "";
            foreach (RepeaterItem item in rptLODetail.Items)
            {
                System.Web.UI.WebControls.CheckBox chk = item.FindControl("rbt_etails") as System.Web.UI.WebControls.CheckBox;
                if (chk.Checked)
                {
                    value += chk.Text + "|";

                }
            }
            string allvalue = value;
            string[] LODet = allvalue.Split('|');

            for (int i = 0; i < LODet.Length; i++)
            {
                try
                {
                    RelationLoDetailModel rd = new RelationLoDetailModel();

                    rd.IdSoal = txtQuestionID.Text;
                    rd.Ket = LODet[i].ToString();
                    string apiUrl = "https://localhost:44343/BankSoal/rLODet";
                    string inputJson = (new JavaScriptSerializer()).Serialize(rd);
                    WebClient uploadrd = new WebClient();
                    uploadrd.Headers["Content-type"] = "application/json";
                    uploadrd.Encoding = Encoding.UTF8;
                    uploadrd.UploadString(apiUrl, inputJson);

                }
                catch (Exception ex)
                {
                   
                }

            }

        }

        public void PunyaSoal()
        {
            try
            {

                RelationMempunyaiSoal ms = new RelationMempunyaiSoal();

                ms.IdSoal = txtQuestionID.Text;
                ms.kompetensi = ddlkompetensi.SelectedValue;
                string apiUrl = "https://localhost:44343/BankSoal/punyasoal";
                string inputJson = (new JavaScriptSerializer()).Serialize(ms);
                WebClient uploadbs = new WebClient();
                uploadbs.Headers["Content-type"] = "application/json";
                uploadbs.Encoding = Encoding.UTF8;
                uploadbs.UploadString(apiUrl, inputJson);

            }
            catch (Exception ex)
            {
                
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

                string kesulitan = ddlkesulitan.SelectedValue;
                string kompetensi = ddlkompetensi.SelectedValue;



                string apiUrl = "https://localhost:44343/BankSoal/" + kompetensi + "/" + kesulitan;
                WebClient client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Headers["CORS"] = "true";
                client.Headers["Secure"] = "true";
                client.Headers["Data-type"] = "json";
                client.Encoding = Encoding.UTF8;
                string json = client.DownloadString(apiUrl + "?fungsi=list");
                rptLODetail.DataSource = (new JavaScriptSerializer()).Deserialize<List<LODetail>>(json);
                rptLODetail.DataBind();
            
        }
    }
}