<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddSheYing.aspx.cs" EnableEventValidation="false" ValidateRequest="false"  Inherits="AdminManger_AddSheYing" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

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
      添加商品信息</td>
 </tr>
</table>
</td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    商品名称：<asp:TextBox ID="title" runat="server" Style="border-right: #ffcc00 1px solid;
                        border-top: #ffcc00 1px solid; border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid"
                        Width="341px"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    商品类别：<asp:DropDownList ID="DropDownList1" runat="server" Width="213px">
                    </asp:DropDownList></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    下单单价：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    促销价格：<asp:TextBox ID="GoodswholesalePrice" runat="server"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    是否特价：<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>否</asp:ListItem>
                        <asp:ListItem>是</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    库存数量：<asp:TextBox ID="TextBox3" runat="server" Width="61px"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    <asp:Image ID="Image1" runat="server" Width="126px" /><br />
                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                        id="file1" runat="server" class="inputBox" style="width: 141px" type="file" />&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="上传图片" />
                    <asp:Label ID="Label1" runat="server" Visible="False" Width="60px"></asp:Label>
                    &nbsp; &nbsp;</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    商品描述</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="left" colspan="10" height="24">
                    <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
