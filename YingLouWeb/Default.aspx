<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>
<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>影楼管理系统</title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        /*table{
            width:80%;
            text-align: center;
            position: relative;
            left:10%;
            top: 453px;
            
        }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--这里是top栏--%>
        <cc1:top ID="top" runat="server" />
        <table border="0" cellpadding="0" cellspacing="0" bgcolor="#fff" style="width: 80%; text-align: center; position: relative; left: 10%; top: 453px;">
            <tr>
                <td width="3" valign="top">&nbsp;</td>
                <td valign="top" class="picbk" style="padding-top: 4px;">
                    <script type="text/javascript">
                        var focus_width = 300;
                        var focus_height = 210;
                        var focus_height = 210;
                        var text_height = 100;
                        var swf_height = focus_height + text_height;
                        var swf_height = focus_height;
                        var pics = "flash/4.jpg|flash/1.jpg|flash/2.jpg|flash/3.jpg";
                        var texts = "|||";
                        var links = "Default.aspx|Default.aspx|Default.aspx|Default.aspx";
                        var keyword = "||||";
                        document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="' + focus_width + '" height="' + swf_height + '">');
                        document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="flash/pix.swf"><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
                        document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
                        document.write('<param name="FlashVars" value="pics=' + pics + '&links=' + links + '&texts=&keyword=' + keyword + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '">');
                        document.write('<embed src="flash/pix.swf" wmode="opaque" FlashVars="pics=' + pics + '&links=' + links + '&texts=&keyword=' + keyword + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '" menu="false" bgcolor="#eeeeee" quality="high" width="' + focus_width + '" height="' + swf_height + '" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
                        document.write('</object>');


                    </script>
                </td>
                <td valign="top" style="width: 80%">
                    <table border="0" cellspacing="0" cellpadding="0" style="width: 100%;">
                        <tr>
                            <td style="height: 189px"></td>
                            <td align="center" class="cpzs" style="height: 3px">
                                <table border="0" cellspacing="0" cellpadding="0" style="width: 100%">

                                    <tr>
                                        <td align="center">
                                            <asp:DataList ID="DataList1" runat="server"
                                                RepeatColumns="3" Width="99%">
                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <a class="highlightit" href='ShowSheYing.aspx?id=<%#Eval("GoodsID") %>'>
                                                                <img alt="" border="0" src='<%#Eval("GoodsPhoto")%>' style="width: 300px; height: 210px" /></a></td>
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
                                </table>
                            </td>
                            <td align="center" style="width: 3px; height: 3px;"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="5" colspan="3" valign="top"></td>
            </tr>
        </table>
        <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="position: relative; top: 456px;">
            <tr>
                <td valign="top" style="width: 300px">
                    <table border="0" cellpadding="0"
                        cellspacing="0" style="width: 226px">
                        <tr>
                            <td class="lefttt1" style="width: 80%; font-size: 18px; background-color: #333; color: #000; background-repeat: repeat-x; height: 28px;">频道导航</td>
                        </tr>

                        <tr>
                            <td align="left" valign="top" style="width: 299px; height: 107px;">&nbsp;<uc1:Left ID="Left1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 299px; height: 15px;"></td>
                        </tr>
                    </table>
                </td>
                <td valign="top" align="center" style="width: 80%; height: 550px;">
                    <table border="0" cellspacing="0" cellpadding="0" style="width: 80%; /* border-right: #009933 0.1mm solid; *//* border-top: #009933 0.1mm solid; *//* border-bottom: #009933 0.1mm solid; */">
                        <tr>
                            <td style="font-size: 24px; height: 28px; text-align: center; font-weight: bold;">最新商品</td>
                        </tr>

                        <tr>
                            <td valign="top" align="center" style="height: 108px;">
                                <asp:DataList ID="DataList2" runat="server"
                                    RepeatColumns="3" Width="99%" RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td>
                                                    <a class="highlightit" href='ShowSheYing.aspx?id=<%#Eval("GoodsID") %>'>
                                                        <img alt="" border="0" src='<%#Eval("GoodsPhoto")%>' style="width: 300px; height: 210px" /></a></td>
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
                    </table>
                </td>
            </tr>
            <tr>
                <td height="10" colspan="2" valign="top"></td>
            </tr>
        </table>
        <div style="width: 80%; left: 10%; position: relative; top: 458px; background-color: #fff;">
            <cc2:foot ID="foot1" runat="server" />
        </div>
    </form>
</body>
</html>
