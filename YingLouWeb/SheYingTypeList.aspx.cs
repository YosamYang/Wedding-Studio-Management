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
public partial class SheYingTypeList : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }

    private void gvbind()
    {
        string sqlstr = "";
        sqlstr = "select  * from SheYing where  GoodsTypeId='"+Request.QueryString["id"].ToString()+"' order by GoodsID asc ";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();

        SqlDataAdapter sda = new SqlDataAdapter(sqlstr, con);

        DataSet ds = new DataSet();
        sda.Fill(ds);
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;

        objPds.AllowPaging = true;
        objPds.PageSize = 9;

        int CurPage;
        if (Request.QueryString["Page"] != null)
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        else
            CurPage = 1;

        objPds.CurrentPageIndex = CurPage - 1;
        lblCurrentPage.Text = CurPage.ToString();
        lblSumPage.Text = objPds.PageCount.ToString();

        if (!objPds.IsFirstPage)
        {
            this.hyfirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + 1 + "&id=" + Request.QueryString["id"].ToString();
            lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1) + "&id=" + Request.QueryString["id"].ToString();
        }

        if (!objPds.IsLastPage)
        {
            hylastpage.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + objPds.PageCount + "&id=" + Request.QueryString["id"].ToString();

            lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1) + "&id=" + Request.QueryString["id"].ToString();
        }

        this.DataList2.DataSource = objPds;
        this.DataList2.DataBind();
        con.Close();


    }
}
