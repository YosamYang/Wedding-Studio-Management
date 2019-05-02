<%@ Page Language="C#" AutoEventWireup="true" CodeFile="huifu.aspx.cs" Inherits="Admin_huifu" %>

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
      回复留言信息</td>
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
                    留言姓名：<asp:Label ID="name" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    电子邮件：<asp:Label ID="email" runat="server"></asp:Label></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    个人主页：<asp:Label ID="younet" runat="server"></asp:Label></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    留言QQ&nbsp; ：<asp:Label ID="qq" runat="server"></asp:Label></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    留言内容</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="left" colspan="10" height="24">
                    <asp:Label ID="content" runat="server"></asp:Label></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    回复内容</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="left" colspan="10" style="height: 75px">
                    <asp:TextBox ID="huifu" runat="server" Height="121px" TextMode="MultiLine" Width="1095px"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" style="height: 24px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回复" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
