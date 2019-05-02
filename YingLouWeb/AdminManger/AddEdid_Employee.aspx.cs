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

public partial class AdminManger_AddEdid_Employee : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["Action"] != null && Request.QueryString["Action"] == "Edit")
            {
                SqlDataReader drw = data.GetDataReader("Select * From Employee where id=" + Request.QueryString["id"]);
                if (drw.Read())
                {
                    txtGName.Text = drw["name"].ToString();
                    Fck_Content.Value = drw["ds"].ToString();
                    pic.Text = drw["Photo"].ToString();
                    TextBox1.Text = drw["Tel"].ToString();
                    TextBox2.Text = drw["Emal"].ToString();
                    TextBox3.Text = drw["Job"].ToString();
                    Image1.ImageUrl = "../" + drw["Photo"].ToString();

                    TextBox4.Text = drw["LoginName"].ToString();

                  
                    Button2.Text = "修改";

                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strsql;
        if (Button2.Text == "添加")
        {
            strsql = string.Format("insert Into Employee (name,ds,Photo,Tel,Emal,Job,LoginName,LoginPwd) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",
             txtGName.Text, Fck_Content.Value.Replace("'", "''"), pic.Text, TextBox1.Text, TextBox2.Text, TextBox3.Text,TextBox4.Text,TextBox5.Text);
            data.RunSql(strsql);
            Alert.AlertAndRedirect("操作成功", "EmployeeManger.aspx");
        }
        else
        {

            strsql = string.Format("Update Employee Set name='{0}',ds='{1}',Photo='{2}',Tel='{3}',Emal='{4}',Job='{5}',Job='{6}',Job='{7}'  where id={8}",
             txtGName.Text, Fck_Content.Value.Replace("'", "''"), pic.Text, TextBox1.Text, TextBox2.Text, TextBox3.Text,TextBox4.Text,TextBox5.Text, Request.QueryString["id"]);

            data.RunSql(strsql);
            Alert.AlertAndRedirect("操作成功", "EmployeeManger.aspx");

        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploadfiles/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../" + pic.Text;
    }
}
