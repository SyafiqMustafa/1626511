using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hit_It
{
    public partial class uploadproductimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/Images/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            String filename = productId + ".jpg";

            Image1.ImageUrl = "~/Images/" + filename;
        }
    }
}