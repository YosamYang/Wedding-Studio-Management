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
public partial class MyOrder : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["users"] == null)
        {
            Response.Write("<script>alert('您还没有登录，请登录后再使用该功能!');location='javascript:history.go(-1)';</script>");
        }
        if (!IsPostBack)
        {
            BinderOrder();
        }
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
    private void BinderOrder()
    {
        string sqlstr = "select * from vb_OrderInfo where Ordeuser='" + Convert.ToString(Session["users"]) + "' ";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
        gvDataBind(gvOrderInfo, sqlstr);


    }
    protected void gvOrderInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        gvOrderInfo.PageIndex = e.NewPageIndex;
        string sqlstr = "select *  from vb_OrderInfo where Ordeuser='" + Convert.ToString(Session["users"]) + "' ";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
        gvDataBind(gvOrderInfo, sqlstr);

    }
}
