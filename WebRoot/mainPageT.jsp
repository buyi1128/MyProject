<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人用户主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="登陆主页,申请教室,四川大学">
	<meta http-equiv="description" content="个人用户主页">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table　width="300" height="200"><tr>
  <td><div style="border: solid black">
账号信息：<br>
&nbsp;&nbsp;&nbsp;姓名：<br><br>&nbsp;

联系电话：<br><br>
&nbsp;&nbsp;&nbsp;邮箱：<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="null">修改</a>
</div></td>
  <td>
<img src=images/pig2.jpg width="100" height="100"" ><br><br>
<button type="button" name="change">更换头像</button>
</td>
  </tr>
 <tr>
<td>
<button type="button" name="clapply">教室申请查看</button>&nbsp;
<button type="button" name="teaconnect">账号申请查看</button>&nbsp;
</td>

<td>
<button type="button" name="search">师生关系查询</button>&nbsp;
</td>
</tr></table>

<br>
  </body>		
</html>