package com.applyroom.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.applyroom.model.User;
import com.applyroom.util.DB;

public class UserDao {
    public void saveUser(User user)
    {
    	Connection conn=DB.getConn();  //��ȡ���ݿ�����Connection����
    	//System.out.println("�Ѿ�����UserDao");  
    	String sql = "insert into user_login(user,password,apply_teacher1,applyteacher2,apply_teacher3) values(?,?,?,?,?)";
    	//String sql="insert into user_login(user,password,apply_teacher1,applyteacher2,apply_teacher3," +
    	//		"type,tel,mail,picture)values(?,?,?,?,?,?,?,?,?)";
    	try{
    		//��ȡPrepareStatement����
    		PreparedStatement ps=conn.prepareStatement(sql);
    		//��SQL����ռλ���������ж�̬��ֵ
    		ps.setString(1,user.getUserName());
    		ps.setString(2,user.getPassWd());
    	    ps.setInt(3, user.getApplyTeacher1());
    	    ps.setInt(4, user.getApplyTeacher2());
    	    ps.setInt(5, user.getApplyTeacher3());
    	    /////////δ�����   
    	    ps.executeUpdate();
    	    ps.close();
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DB.closeConn(conn);   //close the database conncetion
    	}
    	
    }
    /**
     * ����username��password�ڵ�½���ݱ�user_login���ѯ������ѯ��ʱ����д��User��
     * @param username �û���  @param password ����
     * @return User
     */
    public User login(String username,String password){
    	User user=null;
    	Connection conn=DB.getConn();
    	String sql="select * from user_login where user = ? and password = ?";
    	try{
    		PreparedStatement ps=conn.prepareStatement(sql);
    		ps.setString(1,username);
    		ps.setString(2,password);
    		ResultSet rs=ps.executeQuery();  //ִ�в�ѯ��ȡ��ѯ�����
    		if(rs.next()){
    			user=new User();
    			user.setUserId(rs.getInt("id"));
    			user.setUserName(rs.getString("user"));
    			user.setPassWd(rs.getString("password"));
    			user.setApplyTeacher1(rs.getInt("apply_teacher1"));
    			user.setApplyTeacher2(rs.getInt("apply_teacher2"));
    			user.setApplyTeacher3(rs.getInt("apply_teacher3"));
    			user.setType(rs.getString("type"));
    			user.setTel(rs.getString("tel"));
    			user.setMail(rs.getString("mail"));
    			////////ͼƬ����
    		}
    		rs.close();  //�ͷŴ�ResultSet��������ݿ��JDBC��Դ
    		ps.close();  //�ͷŴ�PreparedStatement��������ݿ��JDBC��Դ
    	} catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		//�ر����ݿ�����
    		DB.closeConn(conn);
    	}
    	return user;
    }
    
    /**
     * �ж��û��������ݿ����Ƿ����
     * @param username �û���
     * @return ����ֵ
     */
    public boolean userIsExist(String username){
    	Connection conn=DB.getConn();
    	String sql="select * from user_login where user = ?";
    	try{
    		PreparedStatement ps=conn.prepareStatement(sql);
    		ps.setString(1,username);
    		ResultSet rs=ps.executeQuery();
    		if(!rs.next()){
    			return true;   //�����Ч��֤�����û�������.  ���û�������ʱ����true
    		}
    		rs.close();
    		ps.close();
    	}catch(SQLException e){
    		e.printStackTrace();
    	}finally{
    		DB.closeConn(conn);
    	}
    	return false;
    }
}
