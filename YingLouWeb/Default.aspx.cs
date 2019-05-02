using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList1.DataSource = data.GetDataReader("select top 3 * from  SheYing order by  GoodsID  desc ");
            DataList1.DataBind();
            DataList2.DataSource = data.GetDataReader("select top 9 * from  SheYing   order by  GoodsClick  desc ");
            DataList2.DataBind();
        }
    }
}
