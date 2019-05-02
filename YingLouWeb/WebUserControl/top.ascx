<%@ Control Language="C#" AutoEventWireup="true" CodeFile="top.ascx.cs" Inherits="WebUserControl_top" %>
<link type="text/css" rel="stylesheet" href="common/common.css" />
<div class="top">
	
    <div class="topsr">
     
        <SPAN  runat=server id="Login1" class="text"><a href="MyOrder.aspx">我的订单</a>|<a href="Login.aspx">退出登陆</a>|</SPAN> <SPAN class="text" runat=server id="Login2"><a href="reg.aspx">用户注册</a>|<a href="Login.aspx">用户登录</a></SPAN>
       
    </div>
 
</div>
<!-- head -->
<div class="head">
    <img alt ="" src="images/top.jpg" style="width:80%; height:453px; position:absolute;top:0;left:10%; margin: 0 auto" /></div>
<!-- nav -->
<div class="nav">
	<span class="icon"></span>
	<span class="navl"></span>
    <span class="navr"></span>
	<ul>
    	<li><a href="Default.aspx">首页</a></li>
      
     <li><a href="NewsList.aspx">文章中心</a></li>
        <li><a href="NewSheYingList.aspx">最新商品</a></li>
        <li><a href="TeJiaLIst.aspx">特价商品</a></li>
        <li><a href="HotSheYingList.aspx">热门商品</a></li>
        <li><a href="AllSheYingList.aspx">所有商品</a></li>
               <li><a href="liuyan.aspx">留言板</a>
  
      <li><a href="EmployeeList.aspx">摄影师</a></li>
       
    </li>
    </ul>
</div>
