<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyPwd.aspx.cs" Inherits="Admin_ModifyPwd" %>

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
      修改登录密码</td>
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
                    &nbsp;修改登录密码</td>
            </tr>
            <tr align="right" bgcolor="#eef4ea">
                <td align="center" colspan="10" height="36">
                    <span style="font-family: Times New Roman">原密码：<asp:TextBox ID="txtpwd1" runat="server"
                        TextMode="Password" Width="142px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server" ControlToValidate="txtpwd1" Display="Dynamic" ErrorMessage="密码不能空"></asp:RequiredFieldValidator>新密码：<asp:TextBox
                                ID="txtpwd2" runat="server" TextMode="Password" Width="138px"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd2" Display="Dynamic"
                                    ErrorMessage="密码不能空"></asp:RequiredFieldValidator>确认新密码：<asp:TextBox ID="TextBox2"
                                        runat="server" TextMode="Password" Width="138px"></asp:TextBox><asp:CompareValidator
                                            ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="txtpwd2"
                                            Display="Dynamic" ErrorMessage="密码不一致"></asp:CompareValidator><asp:Button ID="Button1"
                                                runat="server" OnClick="Button1_Click" Text="修改密码" /><asp:Label ID="LabelWarningMessage"
                                                    runat="server" ForeColor="Red"></asp:Label></span></td>
            </tr>
        </table>
    </form>
</body>
</html>
