﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_AddNews : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from Infotype");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql = "insert into News(name,content,typeid,TypeName) values('" + title.Text.ToString().Trim() + "','" + FCKeditor1.Value + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "')";
        data.RunSql(sql);
        Alert.AlertAndRedirect("添加成功", "addnews.aspx");


    }
}
