using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELEARNING
{
    public partial class Master_Mhs : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNama.Text = HttpContext.Current.Session["Nama1"].ToString();
            lblRole.Text = HttpContext.Current.Session["Role1"].ToString();
            lblnameatas.Text = HttpContext.Current.Session["Nama1"].ToString();
        }
    }
}