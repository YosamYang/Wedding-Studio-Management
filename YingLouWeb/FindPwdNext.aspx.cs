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

public partial class FindPwdNext : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select * from Member where MemberName='" + Request.QueryString["MemberName"].ToString() + "' and MemberWenTi='" + DropDownList1.SelectedValue + "' and MemberDaAn='" + TextBox2.Text + "'  ");
        if (dr.Read())
        {
            Label1.Text = "您的登陆密码为：" + dr["MemberPWD"].ToString();

        }
        else
        {
            Label1.Text = "密码问题或者答案不正确请重新输入";
            return;
        }

    }
}
