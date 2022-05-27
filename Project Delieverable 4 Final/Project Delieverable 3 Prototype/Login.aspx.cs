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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //When the page loads, check if the page has been redirected and if something has changed.
        {
            if (Session["ArtistID"] != null) //If something has changed, display a successful update message.
            {
                lblSuccess.Text = "Account Index " + Session["ArtistID"] + " updated successfully!";
            }
            else //If nothing changed, do not display message.
            {
                lblSuccess.Text = "";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e) //When button is clicked, connect to the database and authenticate the user.
        {
            string strconn = ConfigurationManager.ConnectionStrings["sdsjomaiLogin"].ConnectionString;
            using (SqlConnection sqlconn = new SqlConnection(strconn))
            {
                try //Connect to the database and authenticate.
                {
                    SqlDataAdapter sqlda = new SqlDataAdapter("spLogin", sqlconn);
                    sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;

                    //Check if the inputted information is correct.
                    SqlParameter UsernameInput = new SqlParameter("@Username", tboxUsername.Text);
                    UsernameInput.Direction = ParameterDirection.Input;
                    UsernameInput.DbType = DbType.String;
                    SqlParameter PasswordInput = new SqlParameter("@Password", tboxPassword.Text);
                    PasswordInput.Direction = ParameterDirection.Input;
                    PasswordInput.DbType = DbType.String;

                    sqlda.SelectCommand.Parameters.Add(UsernameInput);
                    sqlda.SelectCommand.Parameters.Add(PasswordInput);
                    DataSet ds = new DataSet();
                    sqlda.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0) //If inputted information is correct
                    {
                        //Takes artist value and inserts into session state variable.
                        Session["ArtistID"] = ds.Tables[0].Rows[0]["ArtistID"].ToString();
                        Session["Username"] = tboxUsername.Text;
                        Response.Redirect("~/HomePage.aspx");
                    }
                    else //If inputted information is incorrect.
                    {
                        lblError.Text = "Invalid Credentials. Please try again.";
                    }
                }
                catch (Exception exc) //Execution error message.
                {
                    lblError.Text = exc.Message;

                }
            }
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

        protected void btnLogin2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}