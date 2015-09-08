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
    	Connection conn=DB.getConn();  //获取数据库连接Connection对象
    	//System.out.println("已经进入UserDao");  
    	String sql = "insert into user_login(user,password,apply_teacher1,applyteacher2,apply_teacher3) values(?,?,?,?,?)";
    	//String sql="insert into user_login(user,password,apply_teacher1,applyteacher2,apply_teacher3," +
    	//		"type,tel,mail,picture)values(?,?,?,?,?,?,?,?,?)";
    	try{
    		//获取PrepareStatement对象
    		PreparedStatement ps=conn.prepareStatement(sql);
    		//对SQL语句的占位符参数进行动态赋值
    		ps.setString(1,user.getUserName());
    		ps.setString(2,user.getPassWd());
    	    ps.setInt(3, user.getApplyTeacher1());
    	    ps.setInt(4, user.getApplyTeacher2());
    	    ps.setInt(5, user.getApplyTeacher3());
    	    /////////未完待续   
    	    ps.executeUpdate();
    	    ps.close();
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DB.closeConn(conn);   //close the database conncetion
    	}
    	
    }
    /**
     * 根据username和password在登陆数据表user_login里查询，当查询到时，则写入User中
     * @param username 用户名  @param password 密码
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
    		ResultSet rs=ps.executeQuery();  //执行查询获取查询结果集
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
    			////////图片待定
    		}
    		rs.close();  //释放此ResultSet对象的数据库和JDBC资源
    		ps.close();  //释放此PreparedStatement对象的数据库和JDBC资源
    	} catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		//关闭数据库连接
    		DB.closeConn(conn);
    	}
    	return user;
    }
    
    /**
     * 判断用户名在数据库中是否存在
     * @param username 用户名
     * @return 布尔值
     */
    public boolean userIsExist(String username){
    	Connection conn=DB.getConn();
    	String sql="select * from user_login where user = ?";
    	try{
    		PreparedStatement ps=conn.prepareStatement(sql);
    		ps.setString(1,username);
    		ResultSet rs=ps.executeQuery();
    		if(!rs.next()){
    			return true;   //如果无效则证明此用户名可用.  当用户不存在时返回true
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
