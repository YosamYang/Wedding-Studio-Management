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
public partial class AdminManger_FinanceManger : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
    
            string strname = "select * from vb_OrderInfo where   MONTH( OrderDate)='" + DropDownList2.SelectedValue + "'  and YEAR( OrderDate)='" + DropDownList1.SelectedValue + "'";
            gvDataBind(gvPOInfo, strname);
           
        }
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
            string sqlstr = "select count(GoodsName) as TNum,sum(GoodsPrice) as TPrice from vb_OrderInfo where  MONTH( OrderDate) BETWEEN '" + DropDownList2.SelectedValue + "' and   '" + DropDownList3.SelectedValue + "'  and YEAR( OrderDate)='" + DropDownList1.SelectedValue + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "vb_OrderInfo");
            DataRowView mydrv = myds.Tables["vb_OrderInfo"].DefaultView[0];
            txtOTPrice.Text = Convert.ToString(mydrv.Row["TPrice"]);
            Label1.Text = "";
        }
        catch
        {
            Label1.Text = "不存在下单记录";
          
        }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            gvbind();
        
            //string strname = "select * from vb_OrderInfo where   MONTH( OrderDate)='" + DropDownList2.SelectedValue + "'  and YEAR( OrderDate)='" + DropDownList1.SelectedValue + "'";
            string strname = "select * from vb_OrderInfo where   MONTH( OrderDate) BETWEEN '" + DropDownList2.SelectedValue + "' and   '" + DropDownList3.SelectedValue + "' and YEAR( OrderDate)='" + DropDownList1.SelectedValue + "'";
            gvDataBind(gvPOInfo, strname);
         
            Label1.Text = "";
        }
        catch
        {
            Label1.Text = "不存在下单记录";
           
        }
    }
}
