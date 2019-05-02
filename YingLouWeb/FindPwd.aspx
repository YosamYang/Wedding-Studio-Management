<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FindPwd.aspx.cs" Inherits="FindPwd" %>
<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title> 找回密码</title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />

<style type="text/css">

.white1 {color: #FFFFFF;
}
body {
	background-image: url(images/bg.gif);
}

</style>
</head>
<body>
    <form id="form1" runat="server">
   <cc1:top ID="top" runat="server" />
     <table border="0" cellpadding="0" cellspacing="0" bgcolor="#fff" style =" width:80%; text-align: center; position: relative; left:10%;  top: 453px;">
  <tr>
    <td valign="top" style="width: 300px">
      <table border="0" cellpadding="0" 
            cellspacing="0" style="width: 226px" >
      <tr>
        <td class="lefttt1" style="width: 80%; font-size: 18px; background-color: #333; color: #ffffff; background-repeat: repeat-x; height: 28px;">
            频道导航</td>
      </tr>
     
      <tr>
        <td align="left" valign="top"  style="width: 299px; height: 107px;">
            &nbsp;<uc1:Left ID="Left1" runat="server" />
        </td>
      </tr>
      <tr>
        <td align="center" style="width: 299px; height: 15px;"></td>
      </tr>
    </table>
    </td>
    <td valign="top" style="height: 471px; width: 752px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" height="8"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <%--<td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
            <td bgcolor="#D8D8D8" class="red" style="height: 24px">&nbsp;&nbsp;&nbsp;&nbsp;找回密码</td>
            <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>--%>
              <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;找回密码</td>
          </tr>
        </table></td>
      </tr>
        <tr>
            <td align="center" style="height: 36px">
                登陆账号：<asp:TextBox ID="TextBox1" runat="server" CssClass="label" Width="138px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*"></asp:RequiredFieldValidator><asp:Button ID="Button1" runat="server"
                        OnClick="Button1_Click" Text="下一步" />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
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
