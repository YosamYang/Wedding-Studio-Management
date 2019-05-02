<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyan.aspx.cs" Inherits="liuyan" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>用户留言板</title>
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
        <td style="height: 36px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <%--<td width="45px" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>--%>
            <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;用户留言板</td>
            <%--<td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>--%>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table border="0" bordercolor="#0099ff" style="width: 100%">
            <tr>
                <td style="width: 1061px">
                    <asp:DataList ID="DataList1" runat="server" Width="725px">
                        <ItemTemplate>
                            <table border="0" cellpadding="1" cellspacing="0" style="width: 735px">
                                <tr>
                                    <td colspan="2">
                                        <div align="left">
                                            <img src='<%#Eval("biaoqing") %>' />
                                            留言者：
                                            <%# Eval("name") %>
                                            QQ：<a href='http://wpa.qq.com/msgrd?V=1&Uin=<%# Eval("qq") %>&Site=留言板&Menu=yes'
                                                target="_blank">
                                                <img alt='<%# Eval("qq") %>' border="0" src="Images/ico_qq.gif" /></a> 留言时间：<%# Eval("addTime") %>
                                            Email：<%# Eval("email") %>
                                            网址：<%# Eval("younet") %>
                                        </div>
                                        <div align="right">
                                            
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Reply" PostBackUrl="Addliuyan.aspx"
                                                Text="我要留言"></asp:LinkButton>
                                        </div>
                                        <hr />
                                        <div align="left">
                                            留言信息:
                                            <%# Eval("content") %>
                                        </div>
                                        <hr />
                                        <div align="left">
                                            回复信息：
                                            <%# Eval("huifu") %>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td style="width: 1061px; height: 45px" align=center >
                   
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
