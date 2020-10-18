using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Web_App
{
    public partial class Demand_Draft_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer_Main_Page.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox_In_Favour_of.Text = "";
            TextBox_Payable_At.Text = "";
            TextBox_Amout_Number.Text = "";
            TextBox_Amount_In_Words.Text = "";
        }
    }
}