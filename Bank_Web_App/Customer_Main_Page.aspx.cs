using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Web_App
{
    public partial class Customer_Main_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label_welcome.Text += Session["New_1"].ToString();
                Lable_Contct_No.Text += Session["New"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["New_2"] = Session["New"].ToString();
            Session["New_3"] = 1.ToString();
           
            Response.Redirect("Bank_Balance_Modify.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Home.aspx");

        }
    }
}