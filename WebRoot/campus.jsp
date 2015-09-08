<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>选择学院</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
     <script type="text/javascript">
        function go(radio){
          var selectvalue=null;
          for(var i=0;i<radio.length;i++){
           if(radio[i].checked)
              selectvalue=radio[i].value;
          }
          window.returnValue=selectvalue;
          window.close();
        }
     </script>
  <body>
  <form name="form1">
     <h4>文科类</h4>
     <table cellspacing="6">
        <tr>
          <td><input type="radio" name="meta" value="eco">经济学院</td>
          <td><input type="radio" name="meta" value="law">法学院</td>
          <td><input type="radio" name="meta" value="news">文学与新闻学院</td>
          <td><input type="radio" name="meta" value="foreign">外国语学院</td>
         
          </tr>
          <tr>
          <td><input type="radio" name="meta" value="history">历史（旅游）学院</td>
          <td><input type="radio" name="meta" value="manage">公共管理学院</td>
          <td><input type="radio" name="meta" value="business">商学院</td>
          <td><input type="radio" name="meta" value="politic">政治学院</td>
        </tr>
         <tr>
          <td><input type="radio" name="meta" value="art">艺术学院</td>
          <td><input type="radio" name="meta" value="gym">体育学院</td>
          <td><input type="radio" name="meta" value="rebuild">灾后重建与管理学院</td>
        </tr>
     </table cellspacing="8">
      <h4>理工科类</h4>    
     <table>
      <tr>
          <td><input type="radio" name="meta" value="math">数学学院</td>
          <td><input type="radio" name="meta" value="phics">物理科学与技术学院</td>
          <td><input type="radio" name="meta" value="chemistry">化学学院</td>
          <td><input type="radio" name="meta" value="life">生命科学学院</td>
      
          </tr>
          <tr>
          <td><input type="radio" name="meta" value="material">材料科学与工程学院</td>
          <td><input type="radio" name="meta" value="create">制作科学与工程学院</td>
          <td><input type="radio" name="meta" value="electric">电气信息学院</td>
          <td><input type="radio" name="meta" value="computer">计算机（软件）学院</td>
        </tr>
         <tr>
          <td><input type="radio" name="meta" value="build">建筑与环境学院</td>
          <td><input type="radio" name="meta" value="sky">空天科学与工程学院</td>
          <td><input type="radio" name="meta" value="water">水利水电学院</td>
          <td><input type="radio" name="meta" value="chemis">化学工程学院</td>
        </tr>
         <tr>
             <td><input type="radio" name="meta" value="elecinfo">电子信息学院</td>
          <td><input type="radio" name="meta" value="food">食品与轻纺学院</td>
          <td><input type="radio" name="meta" value="macro">高分子科学与工程学院</td>
        </tr>
     </table>
     
      <h4>医学类</h4>
     <table cellspacing="8">
      <tr>
          <td><input type="radio" name="meta" value="basic">华西基础医学与法医学院</td>
          <td><input type="radio" name="meta" value="bed">华西临床医学院</td>
          <td><input type="radio" name="meta" value="mouth">华西口腔医学院</td>
          </tr>
          <tr>
          <td><input type="radio" name="meta" value="commen">华西公共卫生医学院</td>
          <td><input type="radio" name="meta" value="herb">华西药学院</td>
          </tr>    
     </table>
     </form>
     <table align="center">
        <tr>
           <td colspan="6" align="center">
            <input type="button"  value="确定" onclick="go(document.form1.meta);">
             <input type="button"  value="取消" onclick="window.close()">
           </td>
       </tr>
    </table>
  </body>
</html>
