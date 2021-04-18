using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class userprofile : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            conn.Open();
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("UserLogin.aspx");
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
                        getUserData();
                    }
                }
            }
            catch(Exception ex)
            {

            }
            
        }
        //update button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("UserLogin.aspx");
                }
                else
                {
                    updateDetails();
                }
            }
            catch (Exception ex)
            {

            }
        }
        //user defined function

            void updateDetails()
        {
            string password = "";
            if (txtnewpwd.Text == "")
            {
                password = txtpwd.Text;
            }
            else
            {
                password = txtnewpwd.Text;
            }
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("Update User_master_table set full_name=@full_name,dob=@dob,contact_no=@contact_no,email=@email,state=@state,city=@city,pincode=@pincode,full_address=@full_address,password=@password where user_id='" + Session["username"].ToString() + "'", conn);


                cmd.Parameters.AddWithValue("@full_name", txtfname.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", txtdob.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", txtcontact.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtenail.Text.Trim());
                cmd.Parameters.AddWithValue("@state", dd1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", txtpincode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password);


               int result = cmd.ExecuteNonQuery();
                conn.Close();
                if(result > 0)
                {
                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserData();
                }
                else
                {
                    Response.Write("<script>alert('Member ID does not Exist');</script>");
                }
               
            }
            catch(Exception ex)
            {

            }
        }
        void getUserData()
        {
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from  User_master_table where user_id=@user_id", conn);
                cmd.Parameters.AddWithValue("@user_id", Session["username"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtfname.Text = dr.GetValue(0).ToString();
                        txtdob.Text = dr.GetValue(1).ToString();
                        txtcontact.Text = dr.GetValue(2).ToString();
                        txtenail.Text = dr.GetValue(3).ToString();
                        dd1.SelectedValue = dr.GetValue(4).ToString();
                        txtcity.Text = dr.GetValue(5).ToString();
                        txtpincode.Text = dr.GetValue(6).ToString();
                        txtaddress.Text = dr.GetValue(7).ToString();
                        txtuserid.Text = dr.GetValue(8).ToString();
                        txtpwd.Text = dr.GetValue(9).ToString();

                       
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {

            }

        }

       
    }
}