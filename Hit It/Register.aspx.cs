using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace Hit_It
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("db_1626511_1626511_wpdco5027");

            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);


            var rolestore = new RoleStore<IdentityRole>(identityDbContext);
            var rolemanager = new RoleManager<IdentityRole>(rolestore);

            var user = new IdentityUser() { UserName = txtRegisterUsername.Text, Email = txtRegisterEmail.Text };
            IdentityResult result = manager.Create(user, txtRegisterPassword.Text);
            if (result.Succeeded)
            {
                IdentityRole endUserRole = new IdentityRole("endUser");
                rolemanager.Create(endUserRole);
                Server.Transfer("logout.aspx", true);
            }
            else
            {
                Literal1.Text = "An error Occurred :" + result.Errors.FirstOrDefault();
            }
        }
    }
}