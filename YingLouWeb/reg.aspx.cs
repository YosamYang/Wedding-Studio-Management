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
public partial class reg : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sqlconn.Open();

            sqlconn.Close();
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string sqltest = "select * from Member where MemberName='" + this.txtLoginName.Text + "'";
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand(sqltest, sqlconn);
        SqlDataReader read = sqlcom.ExecuteReader();
        read.Read();
        if (read.HasRows)
        {
            if (this.txtLoginName.Text.Trim() == read["MemberName"].ToString().Trim())
            {
                Response.Write("<script language='javascript'>alert('该会员已经注册过');localtion='Register.aspx'</script>");
                return;
            }
        }
        string sqlstr = "insert into Member "
            + "(MemberName,MemberSex,MemberPWD,MemberTName,"
            + "MemberPhone,MemberEmail,MemberCity,MemberAddress,MemberPostCode,MemberWenTi,MemberDaAn)"
            + "values('" + txtLoginName.Text + "','" + ddlSex.SelectedValue
            + "','" + txtPwd.Text + "','" + txtTName.Text + "','" + txtTel.Text + "','" + txtEmail.Text
            + "','" + ddlCity.SelectedValue + "','" + txtAddress.Text + "','" + txtPostCode.Text + "','"+DropDownList1.SelectedValue+"','"+txtdanan.Text+"')";
        data.RunSql(sqlstr);
        sqlconn.Close();
        Session["regName"] = txtLoginName.Text.Trim();
        Alert.AlertAndRedirect("恭喜您成为本站会员", "login.aspx");
    }

    protected void btnTest_Click(object sender, EventArgs e)
    {
        if (txtLoginName.Text == "")
        {

        }
        else
        {
            string sqlstr = "select * from Member where MemberName='" + this.txtLoginName.Text + "'";
            sqlconn.Open();
            SqlCommand sqlcom = new SqlCommand(sqlstr, sqlconn);
            SqlDataReader read = sqlcom.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                if (this.txtLoginName.Text.Trim() == read["MemberName"].ToString().Trim())
                {
                    Label3.Text = "该会员已经注册过";

                    return;
                }
            }
            else
            {
                Label3.Text = "您可以进行正常注册";

            }
            read.Close();
            sqlconn.Close();
        }
    }

}
