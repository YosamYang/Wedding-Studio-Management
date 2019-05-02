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
using System.Data.SqlClient;
public partial class Admin_ModifySheYingType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(SqlHelper.connstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select  * from SheYingtype where id='" + Request.QueryString["id"].ToString() + "'", con);//从数据库中选择数据
            cmd.Parameters.Add("@name", SqlDbType.VarChar);

            cmd.Parameters["@name"].Value = txtname.Text;
            SqlDataReader sdr = cmd.ExecuteReader();//读数据
            if (sdr.Read())
            {
                txtname.Text = Convert.ToString(sdr["name"]);

            }
            con.Close();

        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = (SqlConnection)con;
        cmd.CommandText = "update   SheYingtype set  name=@name  where id=@id";

        cmd.Parameters.Add("@name", SqlDbType.VarChar);
        cmd.Parameters.Add("@id", SqlDbType.Int);

        cmd.Parameters["@id"].Value = Request.QueryString["id"].ToString();
        cmd.Parameters["@name"].Value = txtname.Text;

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>alert('修改成功');location.href='SheYingTypeManger.aspx'</script>");
    }
}
