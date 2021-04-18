using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication
{
    public partial class Equipmentmngment : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            conn.Open();
            GridView1.DataBind();
        }
        //add equipment
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfEquipmentExists())
            {
                Response.Write("<script>alert('Equipment with this ID already exists. You cannot add another Equipment with the same ID');</script>");

               
            }
            else
            {

                addequipment();

            }
        }
        //upadte equipment
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfEquipmentExists())
            {
                Response.Write("<script>alert('Equipment does not exists');</script>");
                
            }
            else
            {
                updateEquipment();

            }

        }
        //delete equipment
        protected void Button4_Click(object sender, EventArgs e)
        {

            if (checkIfEquipmentExists())
            {

                Response.Write("<script>alert('Equipment does not exists');</script>"); 
            }
            else
            {
                deleteEquipment();
            }
        }
        //get details
        protected void Button1_Click(object sender, EventArgs e)
        {
            getEquipmentByID();
        }

        //user defined function
        void getEquipmentByID()
        {
            if (equipment_id.Text.Equals(""))
            {
                Response.Write("<script>alert('Equipment ID cannot be Blank ');</script>");
            }

            else
            {


                try
                {
                    if (conn.State == System.Data.ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from  equipment_master_tbl where equipment_id=@equipment_id", conn);
                    cmd.Parameters.AddWithValue("@equipment_id", equipment_id.Text);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            equipment_name.Text = dr.GetValue(1).ToString();
                            txtavailablestock.Text = dr.GetValue(2).ToString();
                            equipment_cost.Text = dr.GetValue(3).ToString();
                            equipment_description.Text = dr.GetValue(4).ToString();
                       
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

        void updateEquipment()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("Update equipment_master_tbl set equipment_name=@equipment_name,available_stock=@available_stock,equipment_cost=@equipment_cost,equipment_description=@equipment_description where equipment_id='" + equipment_id.Text + "'", conn);


                cmd.Parameters.AddWithValue("@equipment_name", equipment_name.Text);
                cmd.Parameters.AddWithValue("@available_stock", txtavailablestock.Text);
                cmd.Parameters.AddWithValue("@equipment_cost", equipment_cost.Text);
                cmd.Parameters.AddWithValue("@equipment_description", equipment_description.Text);

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Equipment Updated Successfully');</script>");
                clearform();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }


        void deleteEquipment()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from  equipment_master_tbl where equipment_id=@equipment_id", conn);
                cmd.Parameters.AddWithValue("@equipment_id", equipment_id.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Equipment Deleted Successfully');</script>");
                clearform();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        void addequipment()
        {
            try
            {
                string filepath = "~/equipment_images/images7.png";
                string filename = Path.GetFileName(image_link.PostedFile.FileName);
                image_link.SaveAs(Server.MapPath("equipment_images/" + filename));
                filepath = "~/equipment_images/" + filename;


                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();


                    SqlCommand cmd = new SqlCommand("insert into equipment_master_tbl(equipment_id,equipment_name,available_stock,equipment_cost,equipment_description,image_link) values (@equipment_id,@equipment_name,@available_stock,@equipment_cost,@equipment_description,@image_link)", conn);

                    cmd.Parameters.AddWithValue("@equipment_id", equipment_id.Text);
                    cmd.Parameters.AddWithValue("@equipment_name", equipment_name.Text);
                    cmd.Parameters.AddWithValue("@available_stock", txtavailablestock.Text);
                    cmd.Parameters.AddWithValue("@equipment_cost", equipment_cost.Text);
                    cmd.Parameters.AddWithValue("@equipment_description", equipment_description.Text);
                    cmd.Parameters.AddWithValue("@image_link", filepath);



                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                Response.Write("<script>alert('Equipment Added Successfully');</script>");
                

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        bool checkIfEquipmentExists()
        {
            try
            {

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from  equipment_master_tbl where equipment_id=@equipment_id", conn);
                cmd.Parameters.AddWithValue("@equipment_id", equipment_id.Text);

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
            equipment_id.Text = "";
            equipment_name.Text = "";
            equipment_cost.Text = "";
            txtavailablestock.Text = "";
            equipment_description.Text = "";

        }

        
    }
}