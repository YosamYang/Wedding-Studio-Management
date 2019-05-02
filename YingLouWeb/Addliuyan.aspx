<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addliuyan.aspx.cs" Inherits="Addliuyan" %>
<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>
<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户登录</title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />


</head>
<body>
    <form id="form1" runat="server">
        <cc1:top ID="top" runat="server" />
        <table border="0" cellpadding="0" cellspacing="0" bgcolor="#fff" style =" width:80%; text-align: center; position: relative; left:10%;  top: 453px;">
            <tr>
                <td valign="top" style="width: 300px">
                    <table border="0" cellpadding="0"
                        cellspacing="0" style="width: 226px">
                        <tr>
                            <td class="lefttt1" style="width: 80%; font-size: 18px; background-color: #333; color: #ffffff; background-repeat: repeat-x; height: 28px;">频道导航</td>
                        </tr>

                        <tr>
                            <td align="left" valign="top"  style="width: 299px; height: 107px;">&nbsp;<uc1:Left ID="Left1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 299px; height: 15px;"></td>
                        </tr>
                    </table>
                </td>
                <td width="752" valign="top" style="height: 471px">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="100%" style="height: 9px"></td>
                        </tr>
                        <tr>
                            <td style="height: 36px">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19" style="height: 24px">
                                            <%--<img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
                                        <td bgcolor="#D8D8D8" class="red" style="height: 24px">&nbsp;&nbsp;&nbsp;&nbsp;添加留言信息</td>
                                        <td width="7" style="height: 24px">
                                            <img src="images/index_23.gif" width="7" height="24" alt="" /></td>--%>
                                        <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;添加留言信息</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>


                    </table>
                    <table border="0" bordercolor="#0099ff" style="font-size: 14px; width: 762px; height: 302px">
                        <tr>
                            <td style="width: 100px">&nbsp;您的姓名：</td>
                            <td align="left" style="width: 431px">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox><font color="red">*（请您填写姓名）</font><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*请您填写姓名"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="width: 100px">
                                <span style="color: #000000">&nbsp;您的邮箱：</span></td>
                            <td align="left" style="width: 431px; color: #000000">
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><font color="red"><span style="color: #000000">*<asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="没有填写Emal"></asp:RequiredFieldValidator>（请您填写有效的电子信箱）</span></font><asp:RegularExpressionValidator
                                        ID="revEmail" runat="server" ControlToValidate="txtEmail" Font-Size="9pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        Width="212px">输入的E-mail地址不正确，重新输入</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 23px">&nbsp;您的网站：</td>
                            <td align="left" style="width: 431px; height: 23px">
                                <asp:TextBox ID="txthttp" runat="server">http://</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">腾讯QQ：</td>
                            <td align="left" style="width: 431px">
                                <asp:TextBox ID="txtqq" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 42px">&nbsp;留言内容：</td>
                            <td align="left" style="width: 431px; color: #000000; height: 42px">
                                <asp:TextBox ID="txtbig" runat="server" Height="130px" MaxLength="100" TextMode="MultiLine"
                                    Width="395px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbig"
                                    ErrorMessage="请填写内容"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 86px">&nbsp;表情：</td>
                            <td align="left" style="width: 431px; height: 86px" valign="baseline">
                                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="1" ValidationGroup="1" />
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/留言/face1.gif" /><asp:RadioButton
                                    ID="RadioButton2" runat="server" GroupName="1" ValidationGroup="1" />
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/留言/face11.gif" />
                                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="1" ValidationGroup="1" />
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/留言/face12.gif" />
                                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="1" ValidationGroup="1" />
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/留言/face13.gif" />
                                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="1" ValidationGroup="1" />
                                <asp:Image ID="Image5" runat="server" ImageUrl="~/images/留言/face14.gif" />
                                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="1" ValidationGroup="1" />
                                <asp:Image ID="Image6" runat="server" ImageUrl="~/images/留言/face15.gif" />
                                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="1" ValidationGroup="1" />
                                <asp:Image ID="Image7" runat="server" ImageUrl="~/images/留言/face16.gif" /><br />
                                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="1" ValidationGroup="1" />
                                <asp:Image ID="Image8" runat="server" ImageUrl="~/images/留言/face2.gif" />
                                <asp:RadioButton ID="RadioButton17" runat="server" GroupName="1" ValidationGroup="1" /><asp:Image
                                    ID="Image17" runat="server" ImageUrl="~/images/留言/face3.gif" /><asp:RadioButton ID="RadioButton18"
                                        runat="server" GroupName="1" ValidationGroup="1" /><asp:Image ID="Image18" runat="server"
                                            ImageUrl="~/images/留言/face4.gif" /><asp:RadioButton ID="RadioButton19" runat="server"
                                                GroupName="1" ValidationGroup="1" /><asp:Image ID="Image19" runat="server" ImageUrl="~/images/留言/face5.gif" /><asp:RadioButton
                                                    ID="RadioButton20" runat="server" GroupName="1" ValidationGroup="1" /><asp:Image
                                                        ID="Image20" runat="server" ImageUrl="~/images/留言/face6.gif" /><asp:RadioButton ID="RadioButton21"
                                                            runat="server" GroupName="1" ValidationGroup="1" /><asp:Image ID="Image21" runat="server"
                                                                ImageUrl="~/images/留言/face7.gif" /><asp:RadioButton ID="RadioButton22" runat="server"
                                                                    GroupName="1" ValidationGroup="1" /><asp:Image ID="Image22" runat="server" ImageUrl="~/images/留言/face8.gif" /></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="height: 31px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="height: 26px"
                        Text="发表" /></td>
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
