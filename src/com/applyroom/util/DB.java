package com.applyroom.util;
import java.sql.*;
public class DB {
   public static Connection getConn(){
	   Connection conn=null;
	   try{
		   Class.forName("com.mysql.jdbc.Driver");
		  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/myprojectdb?user=root&password=920423");
	   }catch(ClassNotFoundException e){
		   e.printStackTrace();
	   }catch(SQLException e){
		   e.printStackTrace();
	   }
	   return conn;
   }
   public static void closeConn(Connection conn){
	   try{
		   if(conn !=null){
			   conn.close();
			   conn=null;
		   }
	   }catch(SQLException e){
		   e.printStackTrace();
	   }
   }
   public static void closeStmt(Statement stmt){
	   try{
		   if(stmt !=null){
			   stmt.close();
			   stmt=null;
		   }
	   }catch(SQLException e){
		   e.printStackTrace();
	   }
   }
   public static void closeRs(ResultSet rs){
	   try{
		   if(rs !=null){
			   rs.close();
			   rs=null;
		   }
	   }catch(SQLException e){
		   e.printStackTrace();
	   }
	  
   }
}


