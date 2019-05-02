<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AMCChaXun.aspx.cs" Inherits="AMCChaXun" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>热门商品展示</title>
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
    <td width="218" valign="top" bgcolor="#F6F6F6" rowspan="1" style="height: 471px">
      <table border="0" cellpadding="0" 
            cellspacing="0" style="width: 226px" >
      <tr>
        <td class="lefttt1" style="width: 299px; font-size: 18px; background-image: url(images/foot.jpg); color: #ffffff; background-repeat: repeat-x; height: 28px;">
            频道导航</td>
      </tr>
     
      <tr>
        <td align="left" valign="top"  style="width: 299px; border-right: #009933 0.1mm solid; border-top: #009933 0.1mm solid; border-left: #009933 0.1mm solid; border-bottom: #009933 0.1mm solid; height: 107px;">
            &nbsp;<uc1:Left ID="Left1" runat="server" />
        </td>
      </tr>
      <tr>
        <td align="center" style="width: 299px; height: 15px;"></td>
      </tr>
    </table>
    </td>
    <td width="10" valign="top" style="height: 471px">&nbsp;</td>
    <td width="752" valign="top" style="height: 471px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" style="height: 8px"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
            <td bgcolor="#D8D8D8" class="red" style="height: 24px">&nbsp;&nbsp;&nbsp;搜索结果</td>
            <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tbody>
                <tr>
                    <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%">
                        <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
                            Width="99%">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <a class="highlightit" href='ShowSheYing.aspx?id=<%#Eval("GoodsID") %>'>
                                                <img alt="" border="0" src='<%#Eval("GoodsPhoto")%>' style="width: 223px; height: 151px" /></a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href='ShowSheYing.aspx?id=<%#Eval("GoodsID") %>'>
                                                <%#Eval("GoodsName")%>
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%;
                        height: 38px">
                        <asp:Label ID="labCP" runat="server" Text="当前页码为："></asp:Label>
                        [
                        <asp:Label ID="labPage" runat="server" Text="1"></asp:Label>
                        &nbsp;]
                        <asp:Label ID="labTP" runat="server" Text="总页码为："></asp:Label>
                        [
                        <asp:Label ID="labBackPage" runat="server"></asp:Label>
                        &nbsp;]<asp:LinkButton ID="lnkbtnOne" runat="server" Font-Underline="False" ForeColor="Red"
                            OnClick="lnkbtnOne_Click">第一页</asp:LinkButton>
                        <asp:LinkButton ID="lnkbtnUp" runat="server" Font-Underline="False" ForeColor="Red"
                            OnClick="lnkbtnUp_Click">上一页</asp:LinkButton>
                        <asp:LinkButton ID="lnkbtnNext" runat="server" Font-Underline="False" ForeColor="Red"
                            OnClick="lnkbtnNext_Click">下一页</asp:LinkButton>&nbsp;
                        <asp:LinkButton ID="lnkbtnBack" runat="server" Font-Underline="False" ForeColor="Red"
                            OnClick="lnkbtnBack_Click" Width="51px">最后一页</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 541px; height: 8px">
                        <img src="images/middle_xwrd_bg3.gif" style="width: 745px; height: 5px" /></td>
                </tr>
            </tbody>
        </table>
    </td>
      </tr>
    </table>
    <cc2:foot ID="foot" runat="server" />
    </form>
</body>
</html>

