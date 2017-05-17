using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Host.SystemWeb;

namespace Hit_It
{
    public partial class Sign_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var identityDatabase = new Microsoft.AspNet.Identity.EntityFramework.IdentityDbContext("db_1626511_1626511_wpdco5027");
            var userStore = new UserStore<IdentityUser>(identityDatabase);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginUsername.Text, txtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Server.Transfer("logout.aspx", true);
            }
            else
            {
                Literal2.Text = "Invalid username or password.";
            }

        }
        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            //Note: user is automatically redirected if trying to access another page
        }

    }
}