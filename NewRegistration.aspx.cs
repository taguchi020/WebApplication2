using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class NewRecord : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader rd;

            cn.ConnectionString = @"Data Source = JUPITER\SQLEXPRESS; Initial Catalog = 法人DB; Integrated Security = True";
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText =  "INSERT INTO [dbo].[取引先] ([法人番号],[管理店番],[部署コード],[取引先名],[取引先カナ]) VALUES(\'"+ TextBox3.Text +"\',\'"+ TextBox1.Text +"\',\'"+ TextBox2.Text +"\',\'"+ TextBox4.Text +"\',\'"+ TextBox5.Text +"\')";
            rd = cmd.ExecuteReader();
            rd.Close();
            cn.Close();

        }
        
    }
}