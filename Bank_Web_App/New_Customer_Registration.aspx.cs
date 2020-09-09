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
    public partial class New_Customer_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGuID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");
                conn.Open();
                string insert = " insert into CustomerDetails (id,UserName,Email,Password,Country,Balance,MobileNo) values (@id,@uname,@email,@password,@country,@balance,@mobileno)";
                SqlCommand com = new SqlCommand(insert, conn);
                com.Parameters.AddWithValue("@id", newGuID.ToString());
                com.Parameters.AddWithValue("@uname", TextBoxUN.Text);
                com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@password", TextBoxPass.Text);
                com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());
                com.Parameters.AddWithValue("@balance", TextBoxBalance.Text);
                com.Parameters.AddWithValue("@mobileno", TextBoxMobile.Text);
                com.ExecuteNonQuery();
                
                Response.Write("your registration is successfull");
                conn.Close();
            }
            catch (Exception ex)
            {

                Response.Write("Error : " + ex.ToString());
            }
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_Main_Page.aspx");
        }
    }
}