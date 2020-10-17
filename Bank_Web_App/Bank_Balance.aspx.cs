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
    public partial class Bank_Balance : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");

            conn.Open();
            string checkuser = "select count (*) from CustomerDetails where MobileNo = '" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                /*     conn.Open();
                     string checkPasswordQuery = "select UserName from CustomerDetails where MobileNo = '" + TextBox1.Text + "'";
                     SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                     string User_Name_Temp = passComm.ExecuteScalar().ToString().Replace(" ", "");


                    string checkPasswordQuery_1 = "select Balance from CustomerDetails where MobileNo = '" + TextBox1.Text + "'";
                    SqlCommand passComm_1 = new SqlCommand(checkPasswordQuery_1, conn);
                    string Balance_Temp = passComm_1.ExecuteScalar().ToString().Replace(" ", "");




                        Session["New"] = User_Name_Temp;
                        Session["New_1"] = Balance_Temp;
                        Session["New_2"] = TextBox1.Text;
                        Response.Redirect("Bank_Balance_Modify.aspx");
                        conn.Close();
                */
                Session["New_2"] = TextBox1.Text;
                Response.Write("Contact No is correct");
                Response.Redirect("Bank_Balance_Modify.aspx");
            }
            else
            {
                Response.Write("Contact No is not correct");
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee_Main_Page.aspx");
        }
    }
}