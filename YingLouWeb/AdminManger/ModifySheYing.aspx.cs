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
using System.IO;
using System.Data.SqlClient;
public partial class AdminManger_ModifySheYing : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            DropDownList1.DataSource = data.GetDataReader("select * from SheYingtype");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();
         string   sql = "select * from SheYing where GoodsID=" + Request.QueryString["id"].ToString();
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            title.Text = dr["GoodsName"].ToString();
            TextBox2.Text = dr["GoodsPrice"].ToString();
            TextBox3.Text = dr["GoodsNum"].ToString();
            GoodswholesalePrice.Text = dr["GoodswholesalePrice"].ToString();
            FCKeditor1.Value = dr["GoodsIntroduce"].ToString();
            pic.Text = dr["GoodsPhoto"].ToString();
            Image1.ImageUrl = "../" + dr["GoodsPhoto"].ToString();
            DropDownList1.Items.FindByValue(dr["GoodsTypeID"].ToString()).Selected = true;
            DropDownList1.Items.FindByText(dr["GoodsTypeName"].ToString()).Selected = true;
       
            if (Convert.ToString(dr["GoodsSpecial"]).Trim() == "否")
            {
                DropDownList2.SelectedIndex = 0;
            }
            if (Convert.ToString(dr["GoodsSpecial"]).Trim() == "是")
            {
                DropDownList2.SelectedIndex = 1;
            }

        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploadfiles/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../" + pic.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "update SheYing set GoodsName='" + title.Text.ToString().Trim() + "',GoodsPrice='" + TextBox2.Text + "',GoodsNum='" + TextBox3.Text + "',GoodsIntroduce='" + FCKeditor1.Value + "' ,GoodsPhoto='" + pic.Text + "',GoodsTypeID='" + DropDownList1.SelectedValue + "',GoodsTypeName='" + DropDownList1.SelectedItem.Text + "' ,GoodsSpecial='" + DropDownList2.SelectedValue + "',GoodswholesalePrice='" + GoodswholesalePrice.Text + "',GoodsCostPrice='" + GoodswholesalePrice.Text + "'  where GoodsID=" + Request.QueryString["id"].ToString();
        data.RunSql(sql);
        Alert.AlertAndRedirect("修改成功", "SheYingManger.aspx");
    }
}
