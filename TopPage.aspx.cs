using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ClientScriptManager cs = Page.ClientScript;
            cs.RegisterStartupScript(this.Page.GetType(), "OpenNewWindow", "window.open('Search.aspx', null);", true);
        }
    }
}