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
    public partial class Customer_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");

            conn.Open();
            string checkuser = "select count (*) from CustomerDetails where UserName = '" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Password from CustomerDetails where UserName = '" + TextBoxUserName.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUserName.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Customer_Main_Page.aspx");
                }
                else
                {
                    Response.Write("Password is not correct");
                }
                conn.Close();
            }
            else
            {
                Response.Write("Uer Name is not correct");
            }


        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            TextBoxUserName.Text = "";
            TextBoxPassword.Text = "";
        }
    }
}