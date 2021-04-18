using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class trainermgment : System.Web.UI.Page
    {
        SqlConnection conn;
        //string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            conn.Open();
            GridView1.DataBind();
        }

        //add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfTrainerExists())
            {
                Response.Write("<script>alert('Trainer added successfully');</script>");  
            }
            else
            {
                addNewTrainer();
            }
             

        }
        //update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfTrainerExists())
            {
                Response.Write("<script>alert('Trainer does not Exixts');</script>");
            }
            else
            {
                 
                updateTrainer();
            }

        

        }

        //delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfTrainerExists())
            {
                Response.Write("<script>alert('Trainer does not Exixts');</script>");
            }
            else
            {
                
                deleteTrainer();
            }
        }

        //go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            Trainer();
        }


        //user defined function

            void Trainer()
        {
            if (txttid.Text.Equals(""))
            {
                Response.Write("<script>alert('Trainer ID cannot be Blank ');</script>");
            }
            else
            {

                try
                {
                    if (conn.State == System.Data.ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from  trainer_master_tbl where trainer_id=@trainer_id", conn);
                    cmd.Parameters.AddWithValue("@trainer_id", txttid.Text);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            txttname.Text = dr.GetValue(1).ToString();
                            txtcontact.Text = dr.GetValue(2).ToString();
                            txtdate.Text = dr.GetValue(3).ToString();
                            txtaddress.Text = dr.GetValue(4).ToString();

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

           void getTrainer()
        {
            if (txttid.Text.Equals(""))
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
                    SqlCommand cmd = new SqlCommand("select * from  trainer_master_tbl where trainer_id=@trainer_id", conn);
                    cmd.Parameters.AddWithValue("@trainer_id", txttid.Text);

                    SqlDataReader dr = cmd.ExecuteReader();



                    if (dr.HasRows)
                    {
                        dr.Read();

                        txttname.Text = dr[1].ToString();
                        txtcontact.Text = dr[2].ToString();
                        txtdate.Text = dr[3].ToString();

                        txtaddress.Text = dr[4].ToString();

                    }
                    else
                        Response.Write("<script>alert('Invalid Trainer ID ');</script>");

                }
                catch (Exception ex)
                {


                }
            }
            
        }
        
        void deleteTrainer()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from  trainer_master_tbl where trainer_id='" + txttid.Text.Trim() + "'", conn);

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Trainer Deleted Successfully');</script>");
                clearform();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                
            }
        }

        void updateTrainer()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("Update trainer_master_tbl set trainer_name=@trainer_name,contact=@contact,joined_date=@joined_date,address=@address where trainer_id='" + txttid.Text.Trim()+"'", conn);

                
                cmd.Parameters.AddWithValue("@trainer_name", txttname.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", txtcontact.Text.Trim());
                cmd.Parameters.AddWithValue("@joined_date", txtdate.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());


                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Trainer Updated Successfully');</script>");
                clearform();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
               
            }
        }
        void addNewTrainer()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();


                    SqlCommand cmd = new SqlCommand("insert into trainer_master_tbl(trainer_id,trainer_name,contact,joined_date,address) values (@trainer_id,@trainer_name,@contact,@joined_date,@address)", conn);

                    cmd.Parameters.AddWithValue("@trainer_id", txttid.Text);
                    cmd.Parameters.AddWithValue("@trainer_name", txttname.Text);
                    cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
                    cmd.Parameters.AddWithValue("@joined_date", txtdate.Text);
                    cmd.Parameters.AddWithValue("@address", txtaddress.Text);



                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                Response.Write("<script>alert('Trainer Added Successfully');</script>");
                clearform();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }





        bool checkIfTrainerExists()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from  trainer_master_tbl where trainer_id=@trainer_id", conn);

                cmd.Parameters.AddWithValue("@trainer_id", txttid.Text);

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
        void clearform()
        {
            txttid.Text = "";
            txttname.Text = "";
            txtcontact.Text = "";
            txtdate.Text = "";
            txtaddress.Text = "";

        }
    }
}