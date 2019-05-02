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
public partial class EmpLyInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];
            data.RunSql("update Employee set click=click+1 where id=" + id);
            SqlDataReader dr = data.GetDataReader("select * from Employee where id=" + id);
            dr.Read();
            this.newstitle.InnerText = "姓名：" + dr["Name"].ToString() + "电话：" + dr["Tel"].ToString() + "电子邮件：" + dr["Emal"].ToString();
            this.readcount.InnerText = dr["click"].ToString();
            Image1.ImageUrl = dr["Photo"].ToString();

            this.contents.InnerHtml = dr["Ds"].ToString();
        }
    }
}
