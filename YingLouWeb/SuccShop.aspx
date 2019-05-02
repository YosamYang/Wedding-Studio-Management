<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuccShop.aspx.cs" Inherits="SuccShop" %>

<%@ Register Src="WebUserControl/Home.ascx" TagName="Home" TagPrefix="uc2" %>


<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>

<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>我的订单</title>
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
    <td width="218" valign="top" bgcolor="#F6F6F6" rowspan="1" style="height: 471px">
        
     <table border="0" cellpadding="0" 
            cellspacing="0" style="width: 226px" >
      <tr>
        <td class="lefttt1" style="width: 80%; font-size: 18px; background-color: #333; color: #ffffff; background-repeat: repeat-x; height: 28px;">
            频道导航</td>
      </tr>
     
      <tr>
        <td align="left" valign="top"  style="width: 299px; height: 107px;">
          <uc2:Home ID="Home1" runat="server" />  &nbsp;<uc1:Left ID="Left1" runat="server" />
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
            <%--<td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
            <td bgcolor="#D8D8D8" class="red" style="height: 24px">&nbsp;&nbsp;&nbsp;&nbsp;确认订单</td>
            <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>--%>
              <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;确认订单</td>
          </tr>
        </table></td>
      </tr>
      
              
        </table>
        <table cellpadding="0" cellspacing="0" style="width: 759px; height: 315px">
            <tr>
                <td align="center" colspan="3" style=" width: 916px;
                    color: #ff9966; height: 5px">
                    下单人信息</td>
            </tr>
            <tr>
                <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                    下单人：<asp:Label ID="Label2" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                    下单人地址：<asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                    联系电话：<asp:Label ID="Label4" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 27px">
                    选择摄影师：<asp:DropDownList ID="DropDownList1" runat="server" Width="176px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="center" colspan="3" style=" width: 916px;
                    color: #ff9966; height: 5px">
                    商品清单</td>
            </tr>
            <tr>
                <td align="left" colspan="3" style="width: 916px;
                    color: #ff9966; height: 49px">
                    <span style="font-size: 12pt; color: #808080">
                        <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CellPadding="4" Font-Size="12pt" ForeColor="#333333" GridLines="None" PageSize="8"
                            Width="760px">
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <Columns>
                                <asp:TemplateField HeaderText="名称">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("GoodsName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="类别">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("GoodsTypeName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="价格">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("GoodsPrice") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="数量">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("shuliang") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("shuliang") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#999999" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        </asp:GridView>
                        <asp:Label ID="Label5" runat="server" Text="合计金额："></asp:Label><asp:Label ID="labMoney"
                            runat="server"></asp:Label>
                    </span>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="font-weight: bold; width: 916px;" align="center">
                  
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认订单" />
                 
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
