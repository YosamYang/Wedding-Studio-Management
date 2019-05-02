<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsList.aspx.cs" Inherits="NewsList" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>新闻资讯中心</title>
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
        <td style="height: 66px" align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <%--<td width="45px" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>--%>
            <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;新闻资讯中心</td>
            <%--<td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>--%>
          </tr>
        </table><asp:DataList ID="DataList2" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"
                            Width="736px">
            <ItemTemplate>
                <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 116px">
                    <tr>
                        <td align="left" style="width: 100px; height: 23px;">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "NewsTypeList.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'><h2><%# DataBinder.Eval(Container, "DataItem.name") %></h2></asp:HyperLink></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList></td>
      </tr>
      
              
        </table>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tbody>
                <tr>
                    <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%">
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                            Width="707px">
                            <ItemTemplate>
                                <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 748px">
                                    <tr>
                                        <td align="left" style="width: 329px">
                                         
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "NewsInfo.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'><%# DataBinder.Eval(Container, "DataItem.name") %></asp:HyperLink></td>
                                        <td align="center" style="width: 140px">
                                            <asp:Label ID="Label2" runat="server" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.Addtime") %>'
                                                Width="193px"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%;
                        height: 38px">
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
                    <td style="width: 541px; height: 8px">
                        <img src="images/middle_xwrd_bg3.gif" style="width: 745px; height: 5px" /></td>
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
