using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELEARNING
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            if (txtUsername.Text == "")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Username atau Password tidak boleh kosong!','danger')", true);
                Response.Write("<script>alert('masuk')</script>");
            }

        }

        [System.Web.Services.WebMethod(EnableSession = true)]
        public static void SetSessionValue(string id, string username, string role, string npk, string nama, string email)
        {

            HttpContext context = HttpContext.Current;
            context.Session["id1"] = id;
            context.Session["Username1"] = username;
            context.Session["Role1"] = role;
            context.Session["NPK1"] = npk;
            context.Session["Nama1"] = nama;
            context.Session["Email1"] = email;

            HttpContext.Current.Session.Timeout = 5;
        }
    }
}