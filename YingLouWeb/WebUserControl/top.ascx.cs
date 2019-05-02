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

public partial class WebUserControl_top : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["usersid"] != null)
        {
            Login1.Visible = true;
            Login2.Visible = false;

        }
        else
        {
            Login1.Visible = false;
            Login2.Visible = true;
        }
       

    }

}
