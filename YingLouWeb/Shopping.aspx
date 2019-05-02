<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shopping.aspx.cs" Inherits="Shopping" %>

<%@ Register Src="WebUserControl/Home.ascx" TagName="Home" TagPrefix="uc2" %>


<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>我的订单</title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />

<style type="text/css">

.white1 {color: #FFFFFF;
}
body {
	background-image: url(images/bg.gif);
}

</style>
    <link href="common/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <cc1:top ID="top" runat="server" />
    <table border="0" cellpadding="0" cellspacing="0" bgcolor="#fff" style =" width:80%; text-align: center; position: relative; left:10%;  top: 453px;">
  <tr>
    <td width="218" valign="top" bgcolor="#F6F6F6" rowspan="1" style="height: 471px">
      
       <table border="0" cellpadding="0" 
            cellspacing="0" style="width: 226px" >
      <tr>
        <td class="lefttt1" style="width: 80%; font-size: 18px; background-color: #333; color: #ffffff; background-repeat: repeat-x; height: 28px;">
            频道导航</td>
      </tr>
     
      <tr>
        <td align="left" valign="top"  style="width: 299px; height: 107px;">
              <uc2:Home ID="Home1" runat="server" />&nbsp;<uc1:Left ID="Left1" runat="server" />
        </td>
      </tr>
      <tr>
        <td align="center" style="width: 299px; height: 15px;"></td>
      </tr>
    </table>
    </td>
    <td width="752" valign="top" style="height: 471px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" height="8"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <%--<td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
            <td bgcolor="#D8D8D8" class="red" style="height: 24px">&nbsp;&nbsp;&nbsp;&nbsp;我的订单</td>
            <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>--%>
              <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;我的订单</td>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table align="center" border="1" cellpadding="0" cellspacing="0" style="font-size: 12pt;
            width: 746px; height: 355px">
            <tr>
                <td align="center" style="vertical-align: bottom; width: 883px; height: 50px; text-align: center">
                    &nbsp;<asp:LinkButton ID="lbtnCheck" runat="server" Font-Underline="False" ForeColor="Black"
                        OnClick="lbtnCheck_Click">生成订单</asp:LinkButton>
                    <asp:LinkButton ID="lbtnClear" runat="server" Font-Underline="False" ForeColor="Black"
                        OnClick="lbtnClear_Click">清空我的订单</asp:LinkButton>
                    <br />
                    订单号：<asp:Label ID="Label5" runat="server" Width="158px"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3" style="vertical-align: top; height: 191px; text-align: center">
                    <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" Font-Size="12pt" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="gvOrderInfo_PageIndexChanging"
                        OnRowCancelingEdit="gvOrderInfo_RowCancelingEdit" OnRowDataBound="gvOrderInfo_RowDataBound"
                        OnRowDeleting="gvOrderInfo_RowDeleting" OnRowEditing="gvOrderInfo_RowEditing"
                        OnRowUpdating="gvOrderInfo_RowUpdating" PageSize="8" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                        <RowStyle BackColor="#F7F7DE" />
                        <Columns>
                            <asp:TemplateField HeaderText="名称">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("GoodsName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="类别">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("GoodsTypeName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="价格">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("GoodsPrice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="数量">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("shuliang") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("shuliang") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                                <ControlStyle Font-Underline="False" ForeColor="Black" />
                                <ItemStyle Font-Underline="False" />
                            </asp:CommandField>
                            <asp:CommandField EditText="修改" HeaderText="修改数量" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" style="height: 20px; background-color: #f0f5d5">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="合计金额："></asp:Label>
                    <asp:Label ID="labMoney" runat="server"></asp:Label>
                    &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
    </td>
      </tr>
    </table>
         <div style ="width: 80%; left: 10%; position: relative; top: 458px; background-color: #fff;">
            <cc2:foot ID="foot1" runat="server" style="width:100%" />
        </div>
    </form>
</body>
</html>
