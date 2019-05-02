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
public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["VaildCode"].ToString().ToLower() == this.TextBox3.Text.ToLower())
        {
            SqlConnection con = new SqlConnection(SqlHelper.connstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin where  Aname='" + this.txtname.Value + "'and  Apwd='" + this.txtpwd.Value + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Admin"] = sdr["Aname"].ToString();
                Session["AdminId"] = sdr["id"].ToString();

                Response.Write("<script language='javascript'>alert('登录成功');location.href='index.html'</script>");

            }

            else
            {
                Response.Write("<script language='javascript'>alert('用户名或密码错误请重新登录');location.href='login.aspx'</script>");

            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('验证码错误');location.href='login.aspx'</script>");

        }

    }
}
