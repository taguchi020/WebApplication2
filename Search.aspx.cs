using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "SearchResultList.aspx?kanritenban=" + kanritenban.Text + "&busyokodo=" + busyokodo.Text + "&houjinbango=" + houjinbango.Text + "&torihikisaki=" + torihikisaki.Text;
            ClientScriptManager cs = Page.ClientScript;
            cs.RegisterStartupScript(this.Page.GetType(), "OpenNewWindow", "window.open('" + url + "', null);", true);

        }
    }
}