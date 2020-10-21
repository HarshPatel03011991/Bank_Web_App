using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Text;

namespace Bank_Web_App
{
    public partial class Demand_Draft_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox_Catch_Mobile_No.Text = Session["New_2"].ToString();

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");

            conn.Open();

            string checkPasswordQuery_2 = "select Balance from CustomerDetails where MobileNo = '" + TextBox_Catch_Mobile_No.Text + "'";
            SqlCommand passComm_2 = new SqlCommand(checkPasswordQuery_2, conn);
            string Balance_Temp = passComm_2.ExecuteScalar().ToString().Replace(" ", "");
            conn.Close();

            TextBox_Catch_Balance.Text = Balance_Temp;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string companyName = TextBox_Catch_Mobile_No.Text;
            int orderNo = 1234;
            DataTable dt = new DataTable();
        /*    
          dt.Columns.AddRange(new DataColumn[5] {
                                new DataColumn("ProductId", typeof(string)),
                                new DataColumn("Product", typeof(string)),
                                new DataColumn("Price", typeof(string)),
                                new DataColumn("Quantity", typeof(string)),
                                new DataColumn("Total", typeof(string))});
         
            dt.Rows.Add(TextBox_Amount_In_Words.Text, "Sun Glasses", 200, 5, 1000);
            dt.Rows.Add(102, "Jeans", 400, 2, 800);
            dt.Rows.Add(103, "Trousers", 300, 3, 900);
            dt.Rows.Add(104, "Shirts", 550, 2, 1100);
            */
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    int check_Negative_Balance;
                    check_Negative_Balance = (Convert.ToInt32(TextBox_Catch_Balance.Text) - Convert.ToInt32(TextBox_Amout_Number.Text));
                    Response.Write(" ");
                    if (check_Negative_Balance < 0)
                    {
                        Response.Write("insufficient Balance");
                    }
                    else
                    {

                        TextBox_Catch_Balance.Text = (Convert.ToInt32(TextBox_Catch_Balance.Text) - Convert.ToInt32(TextBox_Amout_Number.Text)).ToString();

                        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sevak\source\repos\Bank_Web_App\Bank_Web_App\App_Data\DB_Bank_Web_App.mdf;Integrated Security=True");
                        conn.Open();
                        string update = "update CustomerDetails set Balance='" + this.TextBox_Catch_Balance.Text + "' where MobileNo='" + this.TextBox_Catch_Mobile_No.Text + "';";
                        SqlCommand com = new SqlCommand(update, conn);
                        com.ExecuteNonQuery();
                        conn.Close();

                      

                        StringBuilder sb = new StringBuilder();

                        //Generate Invoice (Bill) Header.

                        //  sb.Append("<table width='100%' frame='void'  border-collapse= 'collapse' >");
                        //  sb.Append("<table style border: '2'>");

                        //      sb.Append("<table width='100%'; border='.5' border-style=groove'>");

                     
                        sb.Append("<table border ='0'>");
                      

                         //sb.Append("<table width='100%' border - collapse: 'collapse' border:' 2px solid #000000'>");
                        sb.Append("<tr><td align='center' style='background-color: #D20B0C' colspan = '2'><h1><b>Demand Draft</b></h1></td></tr>");
                        sb.Append("<tr><td colspan = '2'></td></tr>");
                       
                        sb.Append("<tr><td><b>Canada Trust </b>");
                        //    sb.Append(orderNo);
                        sb.Append("</td><td align = 'right'><b>Date: </b>");
                        sb.Append(DateTime.Now);
                        sb.Append("</td></tr>");

                        sb.Append("<tr><td align = 'right' colspan = '2'><b>Unique No : </b>");
                        sb.Append(companyName);
                        sb.Append("</td></tr>");

                        sb.Append("<tr><td colspan = '2'><b>Favour of : </b>");
                        sb.Append(TextBox_In_Favour_of.Text);
                        sb.Append("</td></tr>");

                        sb.Append("<tr>");
                        sb.Append("<td colspan = '2'><b>Payable At : </b>");
                        sb.Append(TextBox_Payable_At.Text);
                        sb.Append("</td></tr>");

                        sb.Append("<tr>");
                        sb.Append("<td align = 'right' colspan = '2'><b>Amount : </b>");
                        sb.Append(TextBox_Amout_Number.Text);
                        sb.Append("</td></tr>");
                     

                        sb.Append("<tr><td colspan = '2'><b>Amount in Words : </b>");
                        sb.Append(TextBox_Amount_In_Words.Text);
                        sb.Append("</td></tr>");
                       

                        sb.Append("</table>");
                      
                        // sb.Append("<br />");

                        //Generate Invoice (Bill) Items Grid.
                        /*       sb.Append("<table border = '0'>");
                               sb.Append("<tr>");
                               foreach (DataColumn column in dt.Columns)
                               {
                                   sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                                   sb.Append(column.ColumnName);
                                   sb.Append("</th>");
                               }
                               sb.Append("</tr>");
                               foreach (DataRow row in dt.Rows)
                               {
                                   sb.Append("<tr>");
                                   foreach (DataColumn column in dt.Columns)
                                   {
                                       sb.Append("<td>");
                                       sb.Append(row[column]);
                                       sb.Append("</td>");
                                   }
                                   sb.Append("</tr>");
                               }
                               sb.Append("<tr><td align = 'right' colspan = '");
                               sb.Append(dt.Columns.Count - 1);
                              // sb.Append("'>Total</td>");
                               sb.Append("'></td>");
                               sb.Append("<td>");
                         //      sb.Append(dt.Compute("sum(Total)", ""));
                               sb.Append("</td>");
                               sb.Append("</tr></table>");
                        */
                        //Export HTML String as PDF.

                        StringReader sr = new StringReader(sb.ToString());
                        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                        PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                        pdfDoc.Open();
                        htmlparser.Parse(sr);
                        pdfDoc.Close();
                        Response.ContentType = "application/pdf";
                        Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + orderNo + ".pdf");
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);
                      
                        Response.End();
                      
                    }

                   

                }
            }

        }
    }
}