using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Hit_It
{
    public partial class Contact : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            // Smtp authentication
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("syfqmstafa@gmail.com", "tama2017");
            client.UseDefaultCredentials = false;
            client.Credentials = userpass;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(txtEmail.Text);
            msg.To.Add(new MailAddress("syfqmstafa@gmail.com"));

            msg.Subject = txtSubject.Text;
            msg.IsBodyHtml = true;
            msg.Body = string.Format("From: " + txtName.Text + ",   Email: " + txtEmail.Text + ",   Message: " + txtComments.Text);

            try
            {
                client.Send(msg);
                message.Text = "Your comments has been successfully sent.";
            }
            catch (Exception ex)
            {
                message.Text = "Error occured while sending your message." + ex.Message;
            }
            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtComments.Text = "";
        }

    }


     }
