<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowSheYing.aspx.cs" Inherits="ShowSheYing" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>商品详细信息</title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />

<style type="text/css">

.white1 {color: #FFFFFF;
}
body {
	background-image: url(images/bg.gif);
}

</style>
    <link href="common/common.css" rel="stylesheet" type="text/css" />
  
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
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table align="center"  cellpadding="0"
            cellspacing="0" style="font-size: 9pt;;
            width: 980px; height: 355px">
            <tr>
                <td bgcolor="#f7f6f3" rowspan="6" style="width: 196px; text-align: center">
                    <asp:Image ID="iGPhoto" runat="server" Height="160px" Width="210px" /></td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    商品名称：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px" align="left">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    商品类别：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px" align="left">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <input id="Hidden1" runat="server" type="hidden" /></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    下单单价：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 812px;  height: 30px" align="left">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    库存数量：</td>
                <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                    查看数量：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 812px;  height: 30px" align="left">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: left">
                   </td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 812px;  height: 30px" align="left">
                   </td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="3">
                    &nbsp;商品介绍：</td>
            </tr>
            <tr>
                <td colspan="3" style="vertical-align: top; text-indent: 8pt; height: auto; text-align: left" align="left">
                    <div id="DIV1" runat="server" style="width: 738px; height: auto">
                    </div>
                </td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="3" style="height: 24px; text-align: right">
                    <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>下单数量：<asp:TextBox ID="TextBox1" runat="server" Width="101px">1</asp:TextBox>
                    <asp:Button ID="btnShop" runat="server" Height="23px" OnClick="btnShop_Click" Text="在线下单"
                        Width="81px" />
                    &nbsp;</td>
            </tr>
            <tr>
            <td bgcolor="silver" colspan="3" style="height: 24px;" align="center">
                评论信息
            </td>
        </tr>
    <tr>
        <td align="left" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
            <asp:DataList ID="DataList2" runat="server" Width="100%">
                <ItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 100%">
                                评论人：<%#Eval("UserName")%>
                                时间：<%#Eval("AddTime", "{0:d}")%>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%">
                                内容：<%#Eval("Titles")%>
                            </td>
                        </tr>
                    </table>
                    <hr />
                </ItemTemplate>
            </asp:DataList></td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
            共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp; &nbsp;
            当前第【<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
            <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
            &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
            <asp:TextBox ID="TextBox2" runat="server" Height="69px" TextMode="MultiLine" Width="544px"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="填写评论信息"></asp:RequiredFieldValidator><br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="评论" /></td>
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
