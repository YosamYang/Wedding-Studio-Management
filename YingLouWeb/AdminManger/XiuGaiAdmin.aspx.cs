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
public partial class Admin_XiuGaiAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Write("<script language='javascript'>alert('您还没有登陆');location.href='../login.aspx'</script>");
        }
        else
        {
            SqlConnection con = new SqlConnection(SqlHelper.connstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select  * from Admin", con);//从数据库中选择数据
            cmd.Parameters.Add("@Aname", SqlDbType.VarChar);

            cmd.Parameters["@Aname"].Value = this.txtname.Text;
            SqlDataReader sdr = cmd.ExecuteReader();//读数据
            if (sdr.Read())
            {
                txtname.Text = Convert.ToString(sdr["Aname"]);
               
            }
            con.Close();
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = (SqlConnection)con;
        cmd.CommandText = "update   Admin set   Aname=@Aname  where id=@id";

        cmd.Parameters.Add("@Aname", SqlDbType.VarChar);
        cmd.Parameters.Add("@id", SqlDbType.VarChar);
        cmd.Parameters["@Aname"].Value = this.txtname.Text;
        cmd.Parameters["@id"].Value = Request.QueryString["id"].ToString();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>alert('修改成功');location.href='AdminList.aspx'</script>");
    }
}
