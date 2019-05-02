<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEdid_Employee.aspx.cs" ValidateRequest="false" EnableEventValidation="false"  Inherits="AdminManger_AddEdid_Employee" %>

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
      摄影师信息管理</td>
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
                    <span style="font-family: Times New Roman">
                        <table id="Table1" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
                            <tr style="color: #000000">
                                <td style="width: 120px">
                                    登陆账号：</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 120px">
                                    登陆密码：</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 120px">
                                    <font face="宋体">姓名：</font></td>
                                <td>
                                    <asp:TextBox ID="txtGName" runat="server" Width="261px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGName"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 120px">
                                    电话：</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox></td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 120px">
                                    电子邮件：</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="205px"></asp:TextBox></td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 120px">
                                    职位：</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" Width="91px"></asp:TextBox></td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 120px; height: 58px">
                                    个人描述：</td>
                                <td style="height: 58px">
                                    <FCKeditorV2:FCKeditor ID="Fck_Content" runat="server" Height="200px" ToolbarSet="Basic"
                                        Width="100%">
                                    </FCKeditorV2:FCKeditor>
                                </td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 120px">
                                    图片：</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="219px" /><br />
                                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                                        id="file1" runat="server" class="inputBox" style="width: 232px" type="file" /><asp:Label
                                            ID="Label1" runat="server" Visible="False" Width="87px"></asp:Label>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="上传图片" /></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton"
                                        Height="22px" OnClick="Button1_Click" Text="添加" Width="64px" /></td>
                            </tr>
                        </table>
                    </span></td>
            </tr>
        </table>
    </form>
</body>
</html>
