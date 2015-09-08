package com.applyroom.servlet;

import java.io.IOException;
import java.io.PrintStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import com.applyroom.dao.UserDao;
import com.applyroom.model.User;



public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID=-3009431503363456775L;
  public void doPost(javax.servlet.http.HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
	  String username=request.getParameter("user");
	  String password=request.getParameter("pwd");
	  UserDao userDao=new UserDao();
	  User user=userDao.login(username,password);
	  if(userDao.userIsExist(username)){   //当用户不存在时
		  response.sendRedirect("error.jsp?error=nouser");
	  }
	  else if(null!=user){   //判断user是否为空
		  request.getSession().setAttribute("user", user);  //将用户对象放入session中
		  request.getRequestDispatcher("mainPageS.jsp").forward(request, response);   //转发到另一个jsp页面
	  }
	  else{  // 登陆失败
		  if(!userDao.userIsExist(username)){   //当用户存在时,密码错误时
			  response.sendRedirect("error.jsp?error=wrongpwd");
		  }          
	 }
  }
}

