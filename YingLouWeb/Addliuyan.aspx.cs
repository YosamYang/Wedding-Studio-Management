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
using System.Text;

public partial class Addliuyan : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void BindInsert()
    {

        string Name = FunStr(this.txtName.Text.Trim());
        string Email = FunStr(this.txtEmail.Text.Trim());
        string http = FunStr(this.txthttp.Text.Trim());
        string qq = FunStr(this.txtqq.Text.Trim());
        string content = FunStr(this.txtbig.Text.Trim());

        //表情
        string faceurl = "";

        if (this.RadioButton1.Checked) { faceurl = "images/留言/face1.gif"; }
        if (this.RadioButton2.Checked) { faceurl = "images/留言/face11.gif"; }
        if (this.RadioButton3.Checked) { faceurl = "images/留言/face12.gif"; }
        if (this.RadioButton4.Checked) { faceurl = "images/留言/face13.gif"; }
        if (this.RadioButton5.Checked) { faceurl = "images/留言/face14.gif"; }
        if (this.RadioButton6.Checked) { faceurl = "images/留言/face15.gif"; }
        if (this.RadioButton7.Checked) { faceurl = "images/留言/face16.gif"; }
        if (this.RadioButton8.Checked) { faceurl = "images/留言/face2.gif"; }
        if (this.RadioButton17.Checked) { faceurl = "images/留言/face3.gif"; }
        if (this.RadioButton18.Checked) { faceurl = "images/留言/face4.gif"; }
        if (this.RadioButton19.Checked) { faceurl = "images/留言/face5.gif"; }
        if (this.RadioButton20.Checked) { faceurl = "images/留言/face6.gif"; }
        if (this.RadioButton21.Checked) { faceurl = "images/留言/face7.gif"; }
        if (this.RadioButton22.Checked) { faceurl = "images/留言/face8.gif"; }
        //时间

        //头像
        string face = "";



        //
        StringBuilder strSql = new StringBuilder();
        strSql.Append("insert into liuyan(");
        strSql.Append("name,email,younet,qq,content,biaoqing,touxiang,addTime)");
        strSql.Append(" values (");
        strSql.Append("@nName,@email,@http,@qq,@nContent,@biaoqing,@touxiang,@nTime)");

        //带参数
        SqlParameter[] parameters = {
					new SqlParameter("@nName", SqlDbType.NVarChar,50),
                    new SqlParameter("@email", SqlDbType.NVarChar,50),
                    new SqlParameter("@http",SqlDbType.NVarChar,50),
                    new SqlParameter("@qq", SqlDbType.NVarChar,15),
					new SqlParameter("@nContent", SqlDbType.NVarChar,200),
                    new SqlParameter("@biaoqing", SqlDbType.NVarChar,50),
                    new SqlParameter("@touxiang", SqlDbType.NVarChar,50),
					new SqlParameter("@nTime", SqlDbType.DateTime)};
        parameters[0].Value = Name;
        parameters[1].Value = Email;
        parameters[2].Value = http;
        parameters[3].Value = qq;
        parameters[4].Value = content;
        parameters[5].Value = faceurl;
        parameters[6].Value = face;
        parameters[7].Value = DateTime.Now;

        SqlCommand cmd = new SqlCommand(strSql.ToString(), con);
        cmd.Parameters.Add(parameters[0]);
        cmd.Parameters.Add(parameters[1]);
        cmd.Parameters.Add(parameters[2]);
        cmd.Parameters.Add(parameters[3]);
        cmd.Parameters.Add(parameters[4]);
        cmd.Parameters.Add(parameters[5]);
        cmd.Parameters.Add(parameters[6]);
        cmd.Parameters.Add(parameters[7]);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('留言发表成功！');window.location.href='liuyan.aspx'</script>");
        }
        catch (Exception ex)
        {
            ex.ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.BindInsert();
    }
    public static string FunStr(string str)
    {
        str = str.Replace("'", "‘");
        str = str.Replace("   ", "&nbsp;");

        str = str.Trim();
        if (str.Trim().ToString() == "")
            str = "无";
        return str;
    }
}
