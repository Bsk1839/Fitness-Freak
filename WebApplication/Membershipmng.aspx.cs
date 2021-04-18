using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Membership : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            conn.Open();
            GridView1.DataBind();
        }

        //cancle membership
        protected void Button3_Click(object sender, EventArgs e)
        {
            cancleMembership();
        }

        //user defined function
        void cancleMembership()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from  Membership_tbl where user_id=@user_id", conn);
                cmd.Parameters.AddWithValue("@user_id", txtuserid.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Membership Cancled Successfully');</script>");
              
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}