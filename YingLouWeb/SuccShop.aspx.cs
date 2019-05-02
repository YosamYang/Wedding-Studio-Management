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
public partial class SuccShop : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from  Employee");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataBind();

            BinderMenber();
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
        string sqlstr = "select shuliang,OrderID,GoodsName,GoodsTypeName,GoodsPrice from tb_OrderInfo where OrderMember='" + Convert.ToString(Session["users"]) + "' and IsCheckout='否'";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
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

    private void BinderMenber()
    {

        SqlDataReader dr = data.GetDataReader("select * from Member where MemberName='" + Request.QueryString["OrderMember"].ToString() + "'");
        dr.Read();
        Label2.Text = dr["MemberName"].ToString();
        Label3.Text = dr["MemberAddress"].ToString();
        Label4.Text = dr["MemberPhone"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sqlstrshop2 = "update tb_OrderInfo set IsCheckout='是' where OrderMember='" + Session["users"].ToString() + "'";
        data.RunSql(sqlstrshop2);
        string sqlstrshop1 = "update tb_Order set IsCheckout='是' ,SheYingShiName='" + DropDownList1.SelectedItem.Text + "' ,SheYingShiId='"+DropDownList1.SelectedValue+"' where Ordeuser='" + Session["users"].ToString() + "'";
        data.RunSql(sqlstrshop1);

        Alert.AlertAndRedirect("操作成功！", "MyOrder.aspx");
    }
}

