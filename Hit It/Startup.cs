using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;
using Owin;
using Microsoft.Owin;

[assembly: OwinStartup(typeof(Hit_It.Startup))]

namespace Hit_It
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString ("/SignIn.aspx") 
            });
        }

    }

}