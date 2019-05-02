<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XiuGaiAdmin.aspx.cs" Inherits="Admin_XiuGaiAdmin" %>

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
      修改管理员账号</td>
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
                    &nbsp;修改管理员账号</td>
            </tr>
            <tr align="right" bgcolor="#eef4ea">
                <td align="center" colspan="10" height="36">
                    <span style="font-family: Times New Roman">登陆帐号：</span><asp:TextBox ID="txtname" runat="server" Width="168px"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="修改" />&nbsp;
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>
