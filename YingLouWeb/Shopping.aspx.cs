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
public partial class Shopping : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["users"] == null)
            {
                Response.Write("<script>alert('您还没有登录，请登录后再使用该功能!');location='javascript:history.go(-1)';</script>");
            }
            else
            {

                SqlDataReader dr = data.GetDataReader("select top 1 * from tb_Order where IsCheckout='否' and  Ordeuser='" + Session["users"].ToString() + "' order by id desc  ");
                if (dr.Read())
                {
                    Label5.Text = dr["Orderid"].ToString();
                }
                AddUserDefined();
                BinderOrder();
            }
        }
    }

    private void AddUserDefined()
    {
        string Name = Request.QueryString["name"];
        int Price = Convert.ToInt32(Request.QueryString["price"]);
        if (Name != null && Price != 0)
        {
            SqlDataReader dr = data.GetDataReader("select top 1 * from [tb_Order] where [Ordeuser] ='" + Session["users"].ToString() + "' and  DingDanTime ='" + Request.QueryString["time"] + "' order by id desc  ");
            if (dr.Read())
            {
                
            }
            else
            {
                string Orderid;
                Orderid = DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
                string sqlOrder = "insert into tb_Order(Orderid,Ordeuser,OrderStite,DingDanTime)values('" + Orderid + "','" + Session["users"].ToString() + "','未发货','" + Convert.ToInt64(Request.QueryString["time"]) + "')";
                data.RunSql(sqlOrder);
                sqlconn.Open();
                string strid = Page.Request.QueryString["GoodsID"];
                string sqlstr = "insert into tb_OrderInfo"
                + "(OrderID,OrderMember,GoodsID,GoodsName,GoodsTypeID,GoodsTypeName,GoodsPrice,IsCheckout,shuliang)"
                + " values('" + Orderid + "','" + Session["users"].ToString() + "','" + null + "','"
                + Name + "','" + '1' + "','" + "婚纱摄影"
                + "','" + Price + "','否','" + '1' + "')";
                data.RunSql(sqlstr);
                sqlconn.Close();
            }
        }
        else
        {

        }
    }

    protected void lbtnCheck_Click(object sender, EventArgs e)
    {
        if (labMoney.Text == "0")
        {
            Alert.AlertAndRedirect("您的我的订单中没有任何物品", "Shopping.aspx");


        }
        else
        {


            Response.Redirect("SuccShop.aspx?OrderMember=" + Session["users"].ToString());

        }
    }
    protected void lbtnClear_Click(object sender, EventArgs e)
    {
        string sqlstr = "delete from tb_OrderInfo where OrderMember='"
            + Session["users"].ToString() + "' and IsCheckout='否'";
        data.RunSql(sqlstr);
        Response.Redirect("Shopping.aspx");
    }
    protected void gvOrderInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvOrderInfo.PageIndex = e.NewPageIndex;
        gvOrderInfo.DataBind();
    }
    protected void gvOrderInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void gvOrderInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr = "delete from tb_OrderInfo where id='" + gvOrderInfo.DataKeys[e.RowIndex].Value + "'";
        data.RunSql(sqlstr);
        Response.Redirect("Shopping.aspx");
    }
    public override void VerifyRenderingInServerForm(System.Web.UI.Control control)
    {
    }

    protected void gvOrderInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();
        string ID = gvOrderInfo.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            if (float.Parse(((TextBox)gvOrderInfo.Rows[e.RowIndex].FindControl("TextBox1")).Text) <= 0)
            {
                Label6.Text = "请填写正确的数量";

            }
            else
            {
                mydata.RunSql("update tb_OrderInfo  set shuliang ='" + ((TextBox)gvOrderInfo.Rows[e.RowIndex].FindControl("TextBox1")).Text + "'  where id=" + ID);

                gvOrderInfo.EditIndex = -1;
                BinderOrder();
            }
        }
        catch
        {

        }
    }
    protected void gvOrderInfo_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvOrderInfo.EditIndex = e.NewEditIndex;
        BinderOrder();
    }
    protected void gvOrderInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvOrderInfo.EditIndex = -1;
        BinderOrder();
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
        string sqlstr = "select id,shuliang,OrderID,GoodsName,GoodsTypeName,GoodsPrice from tb_OrderInfo where OrderMember='" + Convert.ToString(Session["users"]) + "' and IsCheckout='否'";
        gvOrderInfo.DataKeyNames = new string[] { "id" };
        gvDataBind(gvOrderInfo, sqlstr);

        SqlHelper data = new SqlHelper();
        SqlDataReader dr1;
        dr1 = data.GetDataReader("select OrderID from tb_OrderInfo where OrderMember='" + Convert.ToString(Session["users"]) + "' and IsCheckout='否'");
        if (dr1.Read())
        {

            string sqlstrtprice = "select sum(GoodsPrice*shuliang) as tprice from tb_OrderInfo"
                + " where OrderMember='" + Convert.ToString(Session["users"]) + "' and IsCheckout='否'";

            SqlDataReader dr;
            dr = data.GetDataReader(sqlstrtprice);
            dr.Read();
            labMoney.Text = Convert.ToString(int.Parse(dr["tprice"].ToString()));


        }
        else
        {
            labMoney.Text = "0";

        }
    }
}
