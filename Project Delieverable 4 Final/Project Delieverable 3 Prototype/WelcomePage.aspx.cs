using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Delieverable_3_Prototype
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomePage.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void btnSupport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SupportContactUs.aspx");
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

        protected void btnSupport2_Click(object sender, EventArgs e)
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