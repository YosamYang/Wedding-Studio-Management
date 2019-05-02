<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinanceManger.aspx.cs" Inherits="AdminManger_FinanceManger" %>

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
      财务信息统计</td>
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
                            <td align="center" colspan="4" style="height: 10px; text-align: center">
                                 <span style="font-family: Times New Roman"></span>年份：<asp:DropDownList ID="DropDownList1"
                                     runat="server" Width="68px">
                                     <asp:ListItem Selected="True">2014</asp:ListItem>
                                     <asp:ListItem>2013</asp:ListItem>
                                     <asp:ListItem>2012</asp:ListItem>
                                     <asp:ListItem>2011</asp:ListItem>
                                     <asp:ListItem>2010</asp:ListItem>
                                 </asp:DropDownList>
                                从：&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Width="53px">
                                    <asp:ListItem Selected="True">1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                </asp:DropDownList>月到<asp:DropDownList ID="DropDownList3" runat="server" Width="53px">
                                     <asp:ListItem>1</asp:ListItem>
                                     <asp:ListItem>2</asp:ListItem>
                                     <asp:ListItem>3</asp:ListItem>
                                     <asp:ListItem>4</asp:ListItem>
                                     <asp:ListItem>5</asp:ListItem>
                                     <asp:ListItem>6</asp:ListItem>
                                     <asp:ListItem>7</asp:ListItem>
                                     <asp:ListItem>8</asp:ListItem>
                                     <asp:ListItem>9</asp:ListItem>
                                     <asp:ListItem>10</asp:ListItem>
                                     <asp:ListItem>11</asp:ListItem>
                                     <asp:ListItem Selected="True">12</asp:ListItem>
                                 </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="统计" /></td>
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
            <tr align="right" bgcolor="#eef4ea">
                <td align="left" colspan="10" style="height: 36px">
                    下单总金额：<asp:TextBox ID="txtOTPrice" runat="server" ReadOnly="True"></asp:TextBox><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>
