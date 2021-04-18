using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class PaymentMode : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            conn.Open();
        }
        //confirm and pay
        protected void Button3_Click(object sender, EventArgs e)
        {
            paymentDetails();
        }

        //user defined

        void paymentDetails()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Payment_master_tbl(user_id,full_name,card_number,expiration_month,expiration_year,cvv,amount,status) values (@user_id,@full_name,@card_number,@expiration_month,@expiration_year,@cvv,@amount,@status)", conn);

                cmd.Parameters.AddWithValue("@user_id",txtuserid.Text);
                cmd.Parameters.AddWithValue("@full_name", txtfullname.Text);
                cmd.Parameters.AddWithValue("@card_number", txtcard.Text);
                cmd.Parameters.AddWithValue("@expiration_month", ddselect.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@expiration_year", ddselect2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@cvv", txtcvv.Text);
                cmd.Parameters.AddWithValue("@amount", txtamount.Text);
                cmd.Parameters.AddWithValue("@status", "Done");


                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Response recorded');</script>");


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            Response.Redirect("PaymentSuccess.aspx");
         
        }
        void clearform()
        {
            txtfullname.Text = "";
            txtcard.Text = "";
            ddselect.SelectedIndex=0;
            ddselect2.SelectedIndex = 0;
            txtcvv.Text = "";
            txtamount.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            clearform();
        }
    }
}