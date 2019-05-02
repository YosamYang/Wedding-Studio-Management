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

public partial class ModifyPwd : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["usersid"] == null)
            {
                Alert.AlertAndRedirect("对不起您还没有登录", "Login.aspx");
            }
            else
            { }


        }
    }/// <summary>
    /// 修改密码
    /// </summary>
    private void UPpwd()
    {
        SqlHelper mydata = new SqlHelper();
        string Username = Session["usersid"].ToString();
        try
        {
            string sql = "update [Member]  set [MemberPWD] ='" + txtpwd2.Text.ToString() + "' where [MemberID]='" + Username + "' ";
            mydata.RunSql(sql);



            LabelWarningMessage.Text = "修改成功！";


        }
        catch
        {

            LabelWarningMessage.Text = "修改失败！";
        }
    }
    /// <summary>
    /// 检验原来的密码
    /// </summary>
    private void chkpwd()
    {
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Member  where MemberID='" + Session["usersid"].ToString() + "' and MemberPWD='" + txtpwd1.Text + "'");
        if (dr.Read())
        {
            UPpwd();
        }
        else
        {
            LabelWarningMessage.Text = "原密码不正确！";
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        chkpwd();
    }
}
