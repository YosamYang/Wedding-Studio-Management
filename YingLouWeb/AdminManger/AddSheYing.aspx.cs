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
public partial class AdminManger_AddSheYing : System.Web.UI.Page
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
        data.RunSql("insert into SheYing (GoodsName,GoodsTypeID,GoodsTypeName,GoodsNum,GoodsPhoto,GoodsPrice,GoodsIntroduce,GoodsSpecial,GoodswholesalePrice,GoodsCostPrice)values('" + title.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + pic.Text + "','" + TextBox2.Text + "','" + FCKeditor1.Value + "','" + DropDownList2.SelectedValue + "','" + GoodswholesalePrice.Text + "','" + GoodswholesalePrice.Text + "') ");
        Alert.AlertAndRedirect("添加成功", "AddSheYing.aspx");
    }
}
