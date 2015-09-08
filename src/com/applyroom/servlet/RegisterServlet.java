package com.applyroom.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	 private static final long serialVersionUID = 5280356329609002908L;
   public void doPost(HttpServletRequest request,HttpServletResponse response)
      throws ServletException, IOException{
	   String username=request.getParameter("user");
	  
   }
}
