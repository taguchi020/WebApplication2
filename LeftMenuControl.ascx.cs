using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class LeftMenuControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //検索画面に遷移
            Response.Redirect("Search.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //新規画面に遷移
            Response.Redirect("NewRegistration.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //編集画面に遷移
            Response.Redirect("EditRegistration.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //削除画面に遷移
            Response.Redirect("DeleteRecord.aspx");

        }
    }
}