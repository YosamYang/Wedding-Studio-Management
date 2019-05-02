<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>
<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
   <script type="text/javascript" src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
   <script type="text/javascript"src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <title>用户登录</title>
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
<%--            <td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
            <td bgcolor="#D8D8D8" class="red" style="height: 24px">&nbsp;&nbsp;&nbsp;&nbsp;用户登录</td>
            <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>--%>
              <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;用户登录</td>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table style="width: 100%">
            <tr>
                <td align="center" style="width: 100%">
                    <table id="TABLE1" runat="server" cellpadding="0" cellspacing="0" height="174" style="border-right: #0099ff 0.2mm solid;
                        border-top: #0099ff 0.2mm solid; border-left: #0099ff 0.2mm solid; border-bottom: #0099ff 0.2mm solid"
                        width="100%">
                        <tr>
                            <td align="center" height="90" style="width: 100%" valign="top">
                                <table cellpadding="0" cellspacing="0" height="123" style="width: 277px">
                                    <tr>
                                        <td style="height: 133px">
                                            <table cellpadding="0" cellspacing="0" height="120" style="width: 100%">
                                                <tr>
                                                    <td align="center" class="huicu" height="29" style="width: 87px">
                                                        用户：</td>
                                                    <td align="left" width="70">
                                                        <asp:TextBox ID="txtMName" runat="server" Width="120px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" class="huicu" style="width: 87px">
                                                        密码：</td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtMPwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="height: 24px">
                                                        <a href="#"></a>&nbsp;<asp:Button ID="Button1"  class="btn btn-default btn-sm" runat="server" OnClick="Button1_Click"
                                                            Text="登录" /></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="height: 19px">
                                                        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#00C0C0" OnClick="LinkButton1_Click">注册</asp:LinkButton>
                                                        <asp:LinkButton ID="LinkButton2" runat="server"  ForeColor="#00C0C0" OnClick="LinkButton2_Click" CausesValidation="False">找回密码</asp:LinkButton></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table id="table2" runat="server" cellpadding="0" cellspacing="0" class="huicu" height="174"
                        style="border-right: #0099ff 0.2mm solid; border-top: #0099ff 0.2mm solid; border-left: #0099ff 0.2mm solid;
                        border-bottom: #0099ff 0.2mm solid" visible="false" width="100%">
                        <tr>
                            <td align="center" bgcolor="#3399cc" style="width: 700px; height: 16px">
                                会员登陆信息</td>
                        </tr>
                        <tr>
                            <td style="width: 700px; height: 14px;" valign="top" align="center">
                                            <table style="width: 266px">
                                                <tr>
                                                    <td class="huicu" style="text-align: center">
                                                        欢迎<asp:Label ID="MName" runat="server" ForeColor="#FF8000" Width="107px"></asp:Label>光临！</td>
                                                </tr>
                                                <tr>
                                                    <td class="huicu" style="height: 16px; text-align: center">
                                                        <asp:LinkButton ID="lbtnLogout" runat="server" Font-Underline="False" ForeColor="Black"
                                                            OnClick="lbtnLogout_Click" Width="96px">注销</asp:LinkButton>
                                                        <asp:HyperLink ID="hlinkEdit" runat="server" Font-Underline="False" ForeColor="Black"
                                                            NavigateUrl="UserHome.aspx" Width="90px">用户中心</asp:HyperLink></td>
                                                    <td style="height: 16px">
                                                    </td>
                                                </tr>
                                            </table>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
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
