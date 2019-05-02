<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Left.ascx.cs" Inherits="WebUserControl_Left" %>


 <table width=100% border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="leftmenutop">商品类别</td>
      </tr>
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
        <tr>
        <td class="leftmenuli"><a href='SheYingTypeList.aspx?id=<%#Eval("id")%>'><span class="red">&nbsp;<%#Eval("Name")%></span></a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
      <tr>
      <td></td>
      </tr>
      
    </table>
    <table width="300px" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="leftmenutop">文章分类</td>
      </tr>
        <asp:Repeater ID="Repeater2" runat="server">
        <ItemTemplate>
        <tr>
        <td class="leftmenuli"><a href='NewsTypeList.aspx?id=<%#Eval("id")%>'><span class="red">&nbsp;<%#Eval("Name")%></span></a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
      <tr>
      <td></td>
      </tr>
      
    </table>
    <table width="300px" border="0" cellspacing="0" cellpadding="0">    
       <tr>
      <td style="height: 15px"  >
          <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
              style="margin-top: 8px" width="98%">
              <tr bgcolor="#e7e7e7">
                  <td align="left" colspan="10" height="24">
                      商品名称：<asp:TextBox ID="txtName" runat="server" Style="border-right: #fff 1px solid;
                          border-top: #ffcc00 1px solid; border-left: #fff 1px solid; border-bottom: #fff 1px solid"
                          Width="100px"></asp:TextBox></td>
              </tr>
              <tr bgcolor="#e7e7e7">
                  <td align="left" colspan="10" height="24">
                      商品类别：<asp:DropDownList ID="DropDownList1" runat="server" Width="98px">
                      </asp:DropDownList></td>
              </tr>
              <tr bgcolor="#e7e7e7">
                  <td align="left" colspan="10" style="height: 24px">
                      下单单价：从<asp:TextBox ID="GoodsMoney1" runat="server" Width="90px"></asp:TextBox><br />
                      下单单价到：<asp:TextBox ID="GoodsMoney2" runat="server" Width="87px"></asp:TextBox><br />
                      输入价格范围</td>
              </tr>
              <tr bgcolor="#e7e7e7">
                  <td align="left" colspan="10" height="24">
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜索" /></td>
              </tr>
          </table>
      </td>
      </tr>
    </table>
        