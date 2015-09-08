<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>学生账号申请</title>
		<style type="text/css">
.color {
	color: #960;
	text-align: center;
}

#form_style {
	background-color: #ffcccc;
}

#form_style table {
	font-size: 12px;
	color: #003333;
	width: 530px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
</style>
    <script type="text/javascript" src="javascript/regStudent.js" charset="utf-8"></script> 
	</head>
	<body ncontextmenu="return false" ndragstart="return false" nselectstart ="return false" nselect="document.selection.empty()" ncopy="document.selection.empty()" nbeforecopy="return false"onmouseup="document.selection.empty()">
	
		<h3 class="color">
			学生账号申请
		</h3>
		</br>
		</br>
		<div id="form_style">
			<form name="student_apply" 
				onsubmit="return check_reg(this)">
				<table align="center" cellspacing="4">
					<tr>
						<td align="right">
							用户名：
						</td>
						<td>
							<input name="applyuser" type="text" size="20">
						</td>
						<td class="td_style">
							建议使用学号
						</td>
					</tr>
					<tr>
						<td align="right">
							密 码：
						</td>
						<td>
							<input name="pwd" type="password" size="20">
						</td>
					</tr>
					<tr>
						<td align="right">
							确认密码：
						</td>
						<td>
							<input name="repwd" type="password" size="20">
						</td>
					</tr>
					<tr>
						<td align="right">
							选择审核学院：
						</td>
						<td>
							<input id="campus" type="text" value="点击选择按钮"
								onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
								onBlur="if(!value){value=defaultValue;this.style.color='#999'}"
								style="color: #999999" size="20">
						</td>
						<td>
							<input name="select" type="button" value="选择"
								onclick="return getCampus()">
						</td>


						<td align="right">
							选择审核老师：
						</td>
						<td>
							<input id="teacher" type="text" value="点击选择按钮"
								onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
								onBlur="if(!value){value=defaultValue;this.style.color='#999'}"
								style="color: #999999" size="20">
						</td>
						<td id="selectT">
							<input name="select_teacher" type="button" value="选择"
								onclick="getTeacher()">
						</td>
					</tr>
					</br>
					<tr>
						<td align="right">
							真实姓名：
						</td>
						<td>
							<input name="name" type="text" size="20" />
						</td>
						<td align="right">
							学 号：
						</td>
						<td>
							<input name="number" type="text" size="20" />
						</td>
					</tr>
					<tr>
						<td align="right">
							学 院：
						</td>
						<td>
							<input name="major" type="text" size="20">
						</td>
						<td align="right">
							年 级：
						</td>
						<td>
							<input name="grade" type="text" size="20">
						</td>
					</tr>
					<tr>
						<td align="right">
							常用邮箱：
						</td>
						<td>
							<input id="mail" type="text" size="20" onchange="check_mail(this)">
						</td>
						
					</tr>
					<tr>
						<td align="right">
							联系电话：
						</td>
						<td>
							<input name="tel" type="text" size="20" onchange="check_tel(this)">
						</td>
						<td>
							便于及时通知您申请教室结果
						</td>
					</tr>
					<tr>
						<td colspan="6" align="center">
							<input type="submit" name="apply" value="提交">
							<input type="reset" value="重置">
						</td>
					</tr>
				</table>

			</form>
		</div>

	</body>
</html>