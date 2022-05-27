using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Project_Delieverable_3_Prototype
{
    public partial class SupportContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomePage.aspx");
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            string toEmail = "kim.strom@okstate.edu";
            string fromEmail = "msisapplicationtest@gmail.com";

            MailAddress fromAddress = new MailAddress(fromEmail);
            MailAddress toAddress = new MailAddress(toEmail);

            try
            {
                //Email code
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("msisapplicationtest@gmail.com", System.Configuration.ConfigurationManager.AppSettings["password"]);

                MailMessage message = new MailMessage(fromAddress, toAddress);
                message.Subject = "Art Station Support Request";
                message.Body = "Art Station Support Request: " + tboxFirstName.Text + " " + tboxLastName.Text + "." + "Email: " + tboxEmail.Text + " Message Start: " + tboxMessage.Text;

                smtp.Send(message);

                tboxFirstName.Text = "";
                tboxLastName.Text = "";
                tboxEmail.Text = "";
                tboxMessage.Text = "";



                lblSuccess.Text = "Messagee successfully sent.";

            }
            catch (Exception exc)
            {
                //Code Failure
                lblFail.Text = "An error has occured: " +exc.Message;
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}