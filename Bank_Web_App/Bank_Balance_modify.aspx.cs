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
              //      Label_welcome.Text = Session["New"].ToString();
                //    TextBox_Catch_balance.Text = Session["New_1"].ToString();
                    TextBox_Catch_Mobile_No.Text = Session["New_2"].ToString();
               
                
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");
                conn.Open();
                string checkPasswordQuery = "select UserName from CustomerDetails where MobileNo = '" + TextBox_Catch_Mobile_No.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string User_Name_Temp = passComm.ExecuteScalar().ToString().Replace(" ", "");

                string checkPasswordQuery_1 = "select Balance from CustomerDetails where MobileNo = '" + TextBox_Catch_Mobile_No.Text + "'";
                SqlCommand passComm_1 = new SqlCommand(checkPasswordQuery_1, conn);
                string Balance_Temp = passComm_1.ExecuteScalar().ToString().Replace(" ", "");

                Label_welcome.Text = User_Name_Temp.ToString(); ;
                TextBox_Catch_balance.Text = Balance_Temp.ToString();



                //    Session["New"] = User_Name_Temp;
                //  Session["New_1"] = Balance_Temp;
                //Session["New_2"] = TextBox1.Text;
                //Response.Redirect("Bank_Balance_Modify.aspx");
                conn.Close();


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
            int Check_page;
            Check_page = Convert.ToInt32(Session["New_3"]);
            if (Check_page == 0)
              Response.Redirect("Employee_Main_Page.aspx");
            if (Check_page == 1)
                Response.Redirect("Customer_Main_Page.aspx");
            
        }

        protected void Button_Enter_Add_Click(object sender, EventArgs e)
        {
            
            TextBox_Catch_balance.Text = (Convert.ToInt32(TextBox_Catch_balance.Text) + Convert.ToInt32(TextBox_Add.Text)).ToString();
           
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");
            conn.Open();
            string update = "update CustomerDetails set Balance='" + this.TextBox_Catch_balance.Text + "' where MobileNo='" + this.TextBox_Catch_Mobile_No.Text + "';";
            SqlCommand com = new SqlCommand(update, conn);
            com.ExecuteNonQuery();
            Response.Write("Balance addition is successfull");
            conn.Close();
        }

        protected void Button_Enter_Remove_Click(object sender, EventArgs e)
        {
            int check_Negative_Balance;
            check_Negative_Balance = (Convert.ToInt32(TextBox_Catch_balance.Text) - Convert.ToInt32(TextBox_Remove.Text));

            if (check_Negative_Balance < 0)
            {
                Response.Write("insufficient Balance");
            }
            else
            {
                TextBox_Catch_balance.Text = (Convert.ToInt32(TextBox_Catch_balance.Text) - Convert.ToInt32(TextBox_Remove.Text)).ToString();

                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");
                conn.Open();
                string update = "update CustomerDetails set Balance='" + this.TextBox_Catch_balance.Text + "' where MobileNo='" + this.TextBox_Catch_Mobile_No.Text + "';";
                SqlCommand com = new SqlCommand(update, conn);
                com.ExecuteNonQuery();
                Response.Write("Balance Subtraction is successfull");
                conn.Close();
            }
        }
    }
}