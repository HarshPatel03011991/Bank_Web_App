using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Web_App
{
    public partial class Bank_Balance_modify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label_welcome.Text += Session["New"].ToString();
            }
            else
            {
                Response.Redirect("Bank_Balance.aspx");
            }
        }
    }
}