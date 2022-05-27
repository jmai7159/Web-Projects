using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_Delieverable_3_Prototype
{
    public partial class EnterableForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //When loading the page, check the username for a null value.
        {
            if (Session["Username"] != null)
            {
                lblUsername.Text = Session["Username"].ToString(); //Display the username.
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e) //When clicking cancel, do not save the ArtistID and return to login.
        {
            Session["ArtistID"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e) //When clicked, connect to the database and update user credentials.
        {
            string strconn = ConfigurationManager.ConnectionStrings["sdsjomaiLogin"].ConnectionString;
            using (SqlConnection sqlconn = new SqlConnection(strconn))
            {
                //Call Stored procedure to update login credentials.
                SqlCommand UpdateCmd = new SqlCommand("spUpdateLogin", sqlconn);
                UpdateCmd.CommandType = System.Data.CommandType.StoredProcedure;

                //Specify what will be updated with which input in textboxes.
                UpdateCmd.Parameters.AddWithValue("@Username", tboxUsername.Text);
                UpdateCmd.Parameters.AddWithValue("@Password", tboxPassword.Text);
                UpdateCmd.Parameters.AddWithValue("@ArtistID", Session["ArtistID"]);

                try //Try to update the information.
                {
                    sqlconn.Open();

                    UpdateCmd.ExecuteNonQuery();

                    lblMessage.Text = "Credentials successfully Updated.";
                    tboxUsername.Text = "";
                    tboxPassword.Text = "";

                }
                catch (Exception exc) //Execution error
                {
                    lblMessage.Text = exc.Message;

                }
            }

            //Save the Artist ID to display on the Login Page which ArtistID was updated.
            Session["@ArtistID"] = Session["ArtistID"];
            Response.Redirect("~/Login.aspx");
        }
        //Quick Navigation
        protected void btnWelcome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WelcomePage.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomePage.aspx");
        }

        protected void btnMyProfileNav_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ProfilePage.aspx");
        }

        protected void btnSupport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SupportContactUs.aspx");
        }

        protected void btnUpdateProfileSettings_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EnterableForm.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}