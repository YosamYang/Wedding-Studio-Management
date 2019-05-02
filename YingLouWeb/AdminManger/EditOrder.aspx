<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditOrder.aspx.cs" Inherits="AdminManger_EditOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" type="text/css" href="skin/css/base.css"/>
</head>
<body >
    <form id="form1" runat="server">
    <div>
    <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#e3ebfe" align="center">
<tr>
 <td height="26" >
  <table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td align="center" style="height: 22px">
      订单信息</td>
 </tr>
</table>
</td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr align="right" bgcolor="#eef4ea">
                <td align="left" colspan="10" height="36">
                    <table cellpadding="0" cellspacing="0" style="font-size: 12pt;
                        width: 100%; height: 50px">
                        <tr>
                            <td style="height: 17px">
                                地址：</td>
                            <td align="left" colspan="3" style="height: 17px; text-align: left">
                                <asp:TextBox ID="txtOMCity" runat="server" Width="488px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 27px">
                                下单人：</td>
                            <td align="left" style="height: 27px">
                                <asp:TextBox ID="txtOMember" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="height: 27px">
                                电 话：</td>
                            <td align="left" style="height: 27px">
                                <asp:TextBox ID="txtPhone" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                数量：</td>
                            <td align="left">
                                <asp:TextBox ID="txtONum" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td>
                                总计金额：</td>
                            <td align="left">
                                <asp:TextBox ID="txtOTPrice" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                    </table>
                    <asp:GridView ID="gvPOInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" Font-Size="12pt" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvPOInfo_PageIndexChanging"
                        PageSize="5" Width="100%">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="OrderID" HeaderText="订单编号" />
                            <asp:BoundField DataField="OrderMember" HeaderText="下单人" />
                            <asp:BoundField DataField="GoodsName" HeaderText="商品名称" />
                            <asp:BoundField DataField="GoodsPrice" HeaderText="下单价格" />
                            <asp:BoundField DataField="OrderDate" HeaderText="订单日期" />
                            <asp:BoundField DataField="SheYingShiName" HeaderText="摄影师" />
                                           
                            
                               
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    </td>
            </tr>
        </table>
    </form>
</body>
</html>
