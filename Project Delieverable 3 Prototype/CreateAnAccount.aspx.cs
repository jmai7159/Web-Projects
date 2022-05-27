using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_Delieverable_3_Prototype
{
    public partial class CreateAnAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings["sdsjomaiLogin"].ConnectionString;

            using (SqlConnection sqlconn = new SqlConnection(strConn))
            {
                SqlCommand InsertCmd = new SqlCommand("spCreateAccount", sqlconn);
                InsertCmd.CommandType = System.Data.CommandType.StoredProcedure;
                InsertCmd.Parameters.AddWithValue("@Username", tboxUsername.Text);
                InsertCmd.Parameters.AddWithValue("@Password", tboxPassword.Text);
                InsertCmd.Parameters.AddWithValue("@Email", tboxEmail.Text);
                InsertCmd.Parameters.AddWithValue("@PhoneNumber", tboxPhone.Text);
                InsertCmd.Parameters.AddWithValue("@ArtistType", ddlArtistType.Text);

                SqlParameter ArtistIDOutput = new SqlParameter();
                ArtistIDOutput.ParameterName = "@ArtistID";
                ArtistIDOutput.SqlDbType = System.Data.SqlDbType.Int;
                ArtistIDOutput.Direction = System.Data.ParameterDirection.Output;

                InsertCmd.Parameters.Add(ArtistIDOutput);

                try
                {
                    sqlconn.Open();

                    InsertCmd.ExecuteNonQuery();
                    string strArtistID = ArtistIDOutput.Value.ToString();

                    lblMessage.Text = strArtistID;

                    tboxUsername.Text = "";
                    tboxPassword.Text = "";
                    tboxEmail.Text = "";
                    tboxPhone.Text = "";
                    strArtistID = null;
                }
                catch (Exception exc)
                {
                    lblMessage.Text = exc.Message;
                }
            }
        }

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

        protected void btnLogin2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}