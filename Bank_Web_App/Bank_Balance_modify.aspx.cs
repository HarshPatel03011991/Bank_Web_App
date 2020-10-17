using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Bank_Web_App
{
    public partial class Bank_Balance_modify : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                    Label_welcome.Text = Session["New"].ToString();
                    TextBox_Catch_balance.Text = Session["New_1"].ToString();
                    TextBox_Catch_Mobile_No.Text = Session["New_2"].ToString();
            }
            else
            {
                Response.Redirect("Bank_Balance.aspx");
            }
        }
/*
        protected void TextBox_Catch_balance_TextChanged(object sender, EventArgs e)
        {

        }
*/
        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bank_Balance.aspx");
        }

        protected void Button_Enter_Add_Click(object sender, EventArgs e)
        {
            // TextBox_Catch_balance = TextBox_Catch_balance. 20;
            TextBox_Catch_balance.Text = (Convert.ToInt32(TextBox_Catch_balance.Text) + Convert.ToInt32(TextBox_Add.Text)).ToString();
           
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");
            conn.Open();
            string update = "update CustomerDetails set Balance='" + this.TextBox_Catch_balance.Text + "' where MobileNo='" + this.TextBox_Catch_Mobile_No.Text + "';";
            SqlCommand com = new SqlCommand(update, conn);
            com.ExecuteNonQuery();
            Response.Write("Update Balance is successfull");
            conn.Close();
        }
    }
}