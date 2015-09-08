package com.applyroom.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.applyroom.util.DB;

public class TeacherDao {
	//����ѡ���ѧԺ�����ظ�ѧԺ��������ʦ
   public List selectByCampus(String cam){
	   String sql="select campus,name from teacher where campus=cam";
       Connection conn=null;
       Statement stmt=null;
       ResultSet rs=null;
       List teacherList=new ArrayList();
       try{
    	   conn=DB.getConn();
    	   stmt=conn.createStatement();
    	   rs=stmt.executeQuery(sql);
    	   while(rs.next()){
    		   String name=rs.getString("name"); 
    		   teacherList.add(name);
    	   }
       }catch(SQLException e){
    	   e.printStackTrace();
       }finally{
    	   DB.closeRs(rs);
    	   DB.closeStmt(stmt);
    	   DB.closeConn(conn);
       }
       return teacherList;      //����ѡ��ѧԺ�����н�ʦ����list
   }
}
