using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication
{
    public partial class usersignup : Page
    {
        SqlConnection conn;
       //string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            conn.Open();
        }
        //sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                Response.Write("<script>alert('User Alreay Exist With This User ID, Try With Other ID');</script>");
                

            }
            else
            {

                signupNewUser();
            }  

        }

        //user defined method
          bool checkUserExists()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

               
                SqlCommand cmd = new SqlCommand("select * from  User_master_table where user_id=@user_id", conn);
                cmd.Parameters.AddWithValue ("@user_id", txtuserid.Text);

                SqlDataReader dr = cmd.ExecuteReader();

                conn.Close();

                if (dr.HasRows)
                    return true;
                else 
                    return false;

            }
            catch (Exception ex)
            {
                
                return false;
            }
           
        }



        void signupNewUser()
        {
           
    try
    {

        if (conn.State == System.Data.ConnectionState.Closed)
        {
            conn.Open();
        }

        SqlCommand cmd = new SqlCommand("insert into User_master_table(full_name,dob,contact_no,email,state,city,pincode,full_address,user_id,password,account_status) values (@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@user_id,@password,@account_status)", conn);

        cmd.Parameters.AddWithValue("@full_name", txtfullname.Text);
        cmd.Parameters.AddWithValue("@dob", txtdob.Text);
        cmd.Parameters.AddWithValue("@contact_no", txtcontact.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@state", ddselect.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@pincode", txtpincode.Text);
        cmd.Parameters.AddWithValue("@full_address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@user_id", txtuserid.Text);
         cmd.Parameters.AddWithValue("@password", txtpwd.Text);
         cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('sign up successfully done, go for user login');</script>");


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

       
    }
}