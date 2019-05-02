<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>后台登陆</title>
<link href="skin/css/index.css" rel="stylesheet" type="text/css" />

</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <table width="708" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="106" class="tab1">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top" class="tab2" style="height: 109px"><table width="100%" border="0" cellspacing="8" cellpadding="0">
      <tr>
        <td width="70" align="center" style="height: 27px">用户名:</td>
        <td style="height: 27px">
            <input id="txtname" runat="server" class="l_input" name="username" type="text" style="width: 146px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                ErrorMessage="*"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td width="70" align="center">密&nbsp;&nbsp;码:</td>
        <td>
            <input id="txtpwd" runat="server" class="l_input" name="password" type="password" style="width: 146px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                ErrorMessage="*"></asp:RequiredFieldValidator></td>
      </tr>
        <tr>
            <td align="center" width="70">
                验证码：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="89px"></asp:TextBox>
                <asp:Image ID="Image1" runat="server" ImageUrl="../VaildImg.aspx" onclick="this.src=this.src+'?'" /></td>
        </tr>
      <tr>
        <td height="40" align="center">&nbsp;</td>
        <td height="40" align="left">
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="skin/images/dx_04.gif"
                OnClick="ImageButton1_Click" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="216" valign="top" class="tab3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td align="center"></td>
      </tr>
    </table></td>
  </tr>
</table>
    </form>
</body>
</html>
