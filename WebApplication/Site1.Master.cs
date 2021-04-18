using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user login link button
                    LinkButton2.Visible = true; //user signup link button

                    LinkButton3.Visible = false; //logout link button
                    LinkButton5.Visible = false; //hello user link button

                    LinkButton6.Visible = true; //Admin link button
                    LinkButton7.Visible = false; //trainer mng link button
                    LinkButton8.Visible = false; //equipment mng link button
                    LinkButton9.Visible = false; //member mng link button
                    LinkButton10.Visible = false; //membership link button

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //user signup link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton5.Visible = true; //hello user link button
                    LinkButton5.Text ="Hello" + Session["username"].ToString();


                    LinkButton6.Visible = true; //Admin link button
                    LinkButton7.Visible = false; //trainer mng link button
                    LinkButton8.Visible = false; //equipment mng link button
                    LinkButton9.Visible = false; //member mng link button
                    LinkButton10.Visible = false; //membership link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //user signup link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton5.Visible = true; //hello Admin link button
                    LinkButton5.Text = "Hello Admin";


                    LinkButton6.Visible = false; //Admin link button
                    LinkButton7.Visible = true; //trainer mng link button
                    LinkButton8.Visible = true; //equipment mng link button
                    LinkButton9.Visible = true; //member mng link button
                    LinkButton10.Visible = true; //membership link button
                }
            }
            catch(Exception ex)
            {
               
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("trainermgment.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Membermgment.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Membershipmng.aspx");
        }
        //logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //user login link button
            LinkButton2.Visible = true; //user signup link button

            LinkButton3.Visible = false; //logout link button
            LinkButton5.Visible = false; //hello user link button

            LinkButton6.Visible = true; //Admin link button
            LinkButton7.Visible = false; //trainer mng link button
            LinkButton8.Visible = false; //equipment mng link button
            LinkButton9.Visible = false; //member mng link button
            LinkButton10.Visible = false; //membership link button

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Equipmentmngment.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewexercise.aspx");
        }
    }
}