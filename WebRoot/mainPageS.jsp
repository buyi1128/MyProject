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
<table width="385" border="0" height="268">
  <tr>
    <td width="264" height="200"><table width="264" border="1">
      <caption>
        账户信息
        </caption>
      <tr>
        <td width="254" height="200"><p>姓名：</p>
          <p>学号：</p>
          <p>联系电话：</p>
          <p>邮箱：</p>
          <p align="right"><a href="#"> 修改</a></p></td>
      </tr>
    </table></td>
    <td width="111"><div align="center"><img src="file:///E|/jsp/MyProject/WebRoot/images/pig.gif" width="100" height="100" alt="请设置头像" />
    </div>
      <form id="form1" name="form1" method="post" action=""> 
        <div align="center">
          <input type="submit" name="change" id="change" value="更换头像" />
        </div>
    </form></td>
  </tr>
  <tr>
    <td height="40" colspan="2"><form id="form2" name="form2" method="post" action="">
      <input type="submit" name="clapply" id="clapply" value="教室申请" />&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
      <input type="submit" name="teaconnect" id="teaconnect" value="教师关联" /> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="search" id="search" value="教室查询" />
    </form></td>
  </tr>
</table>
</body>		
</html>
