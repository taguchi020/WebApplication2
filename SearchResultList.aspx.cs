using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string strSql = "SELECT [法人番号], [管理店番], [部署コード], [取引先名] FROM [取引先]";
            string strSqlWhere = "";

            if (!string.IsNullOrEmpty(Request.QueryString["kanritenban"]))
            {
                strSqlWhere = " WHERE [管理店番] like \'%" + Request.QueryString["kanritenban"] + "%\'";
            }
            if (!string.IsNullOrEmpty(Request.QueryString["busyokodo"]))
            {
                if(strSqlWhere.Length == 0)
                {
                    strSqlWhere = " WHERE [部署コード] like \'%" + Request.QueryString["busyokodo"] + "%\'";
                }else{
                    strSqlWhere += " AND [部署コード] like \'%" + Request.QueryString["busyokodo"] + "%\'";
                }
            }
            if (!string.IsNullOrEmpty(Request.QueryString["houjinbango"]))
            {
                if (strSqlWhere.Length == 0)
                {
                    strSqlWhere = " WHERE [法人番号] like \'%" + Request.QueryString["houjinbango"] + "%\'";
                }
                else
                {
                    strSqlWhere += " AND [法人番号] like \'%" + Request.QueryString["houjinbango"] + "%\'";
                }
            }
            if (!string.IsNullOrEmpty(Request.QueryString["torihikisaki"]))
            {
                if (strSqlWhere.Length == 0)
                {
                    strSqlWhere = " WHERE [取引先名] like \'%" + Request.QueryString["torihikisaki"] + "%\'";
                }
                else
                {
                    strSqlWhere += " AND [取引先名] like \'%" + Request.QueryString["torihikisaki"] + "%\'";
                }
            }

            SqlDataSource1.SelectCommand = strSql + strSqlWhere;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("Select") == 0)
            {
                Response.Redirect("EditRegistration.aspx");
            }
        }
    }
}