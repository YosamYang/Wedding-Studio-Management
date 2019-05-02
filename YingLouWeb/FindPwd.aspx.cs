using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class FindPwd : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select MemberName from Member where MemberName='" + TextBox1.Text + "'  ");
        if (dr.Read())
        {
            Response.Redirect("FindPwdNext.aspx?MemberName=" + TextBox1.Text);

        }
        else
        {
            Label1.Text = "账号不存在请重新输入";
            return;
        }

    }
}
