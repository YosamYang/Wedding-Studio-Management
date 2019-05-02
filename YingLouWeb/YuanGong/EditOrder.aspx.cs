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
public partial class AdminManger_EditOrder : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    protected void lbtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("OrderManage.aspx");
    }
    protected void gvPOInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvPOInfo.PageIndex = e.NewPageIndex;
        gvbind();
    }
    public void gvDataBind(GridView gv, string sqlstr)
    {
        sqlconn.Open();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
        DataSet myds = new DataSet();
        myda.Fill(myds);
        gv.DataSource = myds;
        gv.DataBind();
        sqlconn.Close();
    }
    public void gvbind()
    {
     
        try
        {
            string strname = "select OrderID,OrderMember from vb_OrderInfo where OrderID='" + Request["OrderID"].ToString() + "'";
            SqlDataAdapter mydaname = new SqlDataAdapter(strname, sqlconn);
            DataSet mydsname = new DataSet();
            mydaname.Fill(mydsname, "vb_OrderInfo");
            DataRowView mydrvname = mydsname.Tables["vb_OrderInfo"].DefaultView[0];
            string sqlstr = "select sum(shuliang) as TNum,sum(GoodsPrice*shuliang) as TPrice from vb_OrderInfo where OrderID='"
                + Convert.ToString(mydrvname.Row["OrderID"]) + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "vb_OrderInfo");
            DataRowView mydrv = myds.Tables["vb_OrderInfo"].DefaultView[0];
            txtONum.Text = Convert.ToString(mydrv.Row["TNum"]);
            txtOTPrice.Text = Convert.ToString(mydrv.Row["TPrice"]);
            string sqlstrpart = "select * from vb_OrderInfo where OrderID='"
                + Convert.ToString(mydrvname.Row["OrderID"]) + "'";
            SqlDataAdapter mydabind = new SqlDataAdapter(sqlstrpart, sqlconn);
            DataSet mydsbind = new DataSet();
            mydabind.Fill(mydsbind, "vb_OrderInfo");
            DataRowView mydrvbind = mydsbind.Tables["vb_OrderInfo"].DefaultView[0];
            txtOMember.Text = Convert.ToString(mydrvbind.Row["OrderMember"]);
            gvDataBind(gvPOInfo, sqlstrpart);
            string sqlstrminfo = "select MemberPhone,MemberCity from Member where MemberName='" + txtOMember.Text.Trim() + "'";
            SqlDataAdapter mydaminfo = new SqlDataAdapter(sqlstrminfo, sqlconn);
            DataSet mydsminfo = new DataSet();
            mydaminfo.Fill(mydsminfo, "Member");
            DataRowView mydrvminfo = mydsminfo.Tables["Member"].DefaultView[0];
            txtOMCity.Text = Convert.ToString(mydrvminfo.Row["MemberCity"]);
            txtPhone.Text = Convert.ToString(mydrvminfo.Row["MemberPhone"]);
           
        }
        catch
        {
            Response.Write("<script>alert('该用户已经不存在')<script>");
        }
    }
}
