using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Membermgment : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            conn.Open();
            GridView1.DataBind();
        }

        // go button
        protected void btngo_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }
        // Active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateStatusByID("active");
        }
        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateStatusByID("pending");
        }
        //danger button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateStatusByID("deactive");
        }

        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {
             deleteMember();
        }

        //user defined
        void getMemberByID()
        {
            if (txtmemberid.Text.Equals(""))
            {
                Response.Write("<script>alert('Member ID cannot be Blank ');</script>");
            }

            else
            {


                try
                {
                    if (conn.State == System.Data.ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from  User_master_table where user_id='" + txtmemberid.Text + "' ", conn);

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            txtfname.Text = dr.GetValue(0).ToString();
                            txtac.Text = dr.GetValue(10).ToString();
                            txtdob.Text = dr.GetValue(1).ToString();
                            txtcontact.Text = dr.GetValue(2).ToString();
                            txtemail.Text = dr.GetValue(3).ToString();
                            txtstate.Text = dr.GetValue(4).ToString();
                            TextBox1.Text = dr.GetValue(5).ToString();
                            txtpincode.Text = dr.GetValue(6).ToString();
                            txtadds.Text = dr.GetValue(7).ToString();

                        }

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
           

        void updateStatusByID(string status)
        {
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("Update User_master_table set account_status='"+status+"' where user_id='" + txtmemberid.Text + "' ", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Member status updated')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        void deleteMember()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from   User_master_table where user_id='" + txtmemberid.Text.Trim() + "'", conn);

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Trainer Deleted Successfully');</script>");
                clearform();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        void clearform()
        {
            txtmemberid.Text= "";
            txtfname.Text = "";
            txtac.Text = "";
            txtdob.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
            txtstate.Text = "";
            TextBox1.Text = "";
            txtpincode.Text = "";
            txtadds.Text = "";

        }
    }

}