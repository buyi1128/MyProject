<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>四川大学教室申请系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="四川大学,教室申请系统,社团租用教室">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <style type="text/css">
a:link,a:visited{
 text-decoration:none;  /*超链接无下划线*/
}
a:hover{
 text-decoration:underline;  /*鼠标放上去有下划线*/
}
</style>

 <script type="text/javascript">
           function check_login(form){
                      if(form.user.value == ""){
                   alert("用户不能为空！");
                  return false;
               }
               if(form.pwd.value == ""){
                   alert("密码不能为空！");
                   return false;
               }
              return true;

           }
       </script>
  </head>
  
  <body>
    <center><h1>四川大学教室申请系统</h1>
    <br></br>
   
    <br></br>
    <form name="form" action="LoginServlet" method="post" onsubmit="return check_login(this)">
       <table align="center" width=40% height=30% border="3" bordercolor="#333333" cellspacing="40" cellpadding="5">
       <tr>
            <td align="right">用户名：</td>
            <td><input type="text" name="user"></td>
       </tr>
       <tr>
            <td align="right">密  码：</td>
            <td><input type="password" name="pwd"></td>
       </tr>
       <tr>
           <td colspan="2" align="center">
            <input type="submit" name="login" value="登 陆" >
             <input type="reset"  value="重置">
           </td>
       </tr>
       </table>
  </form>
    <a href="<%=path%>/help.html"><font color="#0000ff">帮助说明 </font></a>
    <a href="<%=path%>/register_s.jsp"><font color="#0000ff">学生注册</font></a>
   <a href="<%=path%>/register_t.jsp"><font color="#0000ff">教师注册</font></a>
 </center>
</body>
</html>

