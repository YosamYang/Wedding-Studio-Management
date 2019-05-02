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
public partial class MyInfo : System.Web.UI.Page
{
    public string sql, dID;
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Session["usersid"].ToString();
        if (!IsPostBack)
        {
            if (dID == null)
            {
                Alert.AlertAndRedirect("对不起您还没有登录", "Login.aspx");
            }
            else
            {
                sql = "select * from Member where MemberID=" + dID;
                getdata(sql);
            }
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            txtLoginName.Text = dr["MemberName"].ToString();
            txtTName.Text = dr["MemberTName"].ToString();
            txtTel.Text = dr["MemberPhone"].ToString();
            txtEmail.Text = dr["MemberEmail"].ToString();
            txtPostCode.Text = dr["MemberPostCode"].ToString().Trim();
            txtAddress.Text = dr["MemberAddress"].ToString();
            txtdanan.Text = dr["MemberDaAn"].ToString();
            DropDownList1.Items.FindByValue(dr["MemberWenTi"].ToString()).Selected = true;
            //ddlCity.Items.FindByValue(dr["MemberCity"].ToString()).Selected = true;
        }

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        sql = "update Member set MemberName='" + txtLoginName.Text.ToString().Trim() + "',MemberTName='" + txtTName.Text + "',MemberPhone='" + txtTel.Text + "',MemberEmail='" + txtEmail.Text + "',MemberPostCode='" + txtPostCode.Text + "' ,MemberAddress='" + txtAddress.Text + "',MemberSex='" + ddlSex.SelectedValue + "',MemberCity='" + ddlCity.SelectedItem.Text + "',MemberWenTi='" + DropDownList1.SelectedValue + "',MemberDaAn='"+txtdanan.Text+"'  where MemberID=" + dID;
        data.RunSql(sql);
        Alert.AlertAndRedirect("修改成功", "MyInfo.aspx");
    }
}
