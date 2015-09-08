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
	  if(userDao.userIsExist(username)){   //���û�������ʱ
		  response.sendRedirect("error.jsp?error=nouser");
	  }
	  else if(null!=user){   //�ж�user�Ƿ�Ϊ��
		  request.getSession().setAttribute("user", user);  //���û��������session��
		  request.getRequestDispatcher("mainPageS.jsp").forward(request, response);   //ת������һ��jspҳ��
	  }
	  else{  // ��½ʧ��
		  if(!userDao.userIsExist(username)){   //���û�����ʱ,�������ʱ
			  response.sendRedirect("error.jsp?error=wrongpwd");
		  }          
	 }
  }
}

