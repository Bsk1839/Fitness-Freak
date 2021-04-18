using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Membership1 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            conn.Open();

        }

     // proceed to pay
        protected void Button1_Click(object sender, EventArgs e)
        {
            addMembership();
        }

        //user defined function
        void addMembership()
        {
           
                try
                {

                    if (conn.State == System.Data.ConnectionState.Closed)
                    {
                        conn.Open();
                    }

                    SqlCommand cmd = new SqlCommand("insert into Membership_tbl(user_id,membership,join_date,timming) values (@user_id,@membership,@join_date,@timming)", conn);

                    cmd.Parameters.AddWithValue("@user_id", txtuserid.Text);
                    cmd.Parameters.AddWithValue("@membership", ddselect.Text);
                    cmd.Parameters.AddWithValue("@join_date", txtjoindate.Text);
                    cmd.Parameters.AddWithValue("@timming", ddselect2.Text);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('Response recorded');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
         
            Response.Redirect("PaymentMode.aspx");
        
        }

        
    }
}