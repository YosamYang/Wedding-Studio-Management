<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsInfo.aspx.cs" Inherits="NewsInfo" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>新闻信息</title>
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
    <td width="752" valign="top" style="height: 471px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" height="8"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td bgcolor="#333" class="red" style="height: 30px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table id="Table1" align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#ffcf00"
            cellpadding="0" cellspacing="0" style="width: 100%">
            <tbody>
                <tr>
                    <td align="center" bgcolor="#eee" class="tabTitle" colspan="1" height="22"
                        style="width: 921px">
                        <b>
                            <asp:Label ID="Label2" runat="server" Width="100%"></asp:Label></b></td>
                </tr>
                <tr>
                    <td colspan="1" style="width: 921px; height: auto; text-align: left">
                        <strong>
                            <div id="DIV1" runat="server" style="width: 748px; height: auto">
                            </div>
                        </strong>
                    </td>
                </tr>
            </tbody>
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
