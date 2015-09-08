package com.applyroom.model;
import java.awt.Image;
import java.util.Date;
import javax.swing.ImageIcon;

public class User {
   private int userId;  
   private String userName;
   private String passWd;   //user's password
   private String type;    //student or teacher or manager
   private int applyTeacher1=0;
   private int applyTeacher2=0;
   private int applyTeacher3=0; //if the user is a student, that stands out the applied teacher's id
   private String tel;
   private String mail;
  private ImageIcon picture=null;   //the userself's picture
  public void setImageIcon(Image image){
	  picture=new ImageIcon(image);
  }
  public ImageIcon getImageIcon()
  {
	  if(null==picture)
	  {
		  /////如果为空，返回系统自定义的默认头像
	  }
	  return picture;
  }
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPassWd() {
	return passWd;
}
public void setPassWd(String passWd) {
	this.passWd = passWd;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public int getApplyTeacher1() {
	return applyTeacher1;
}
public void setApplyTeacher1(int applyTeacher1) {
	this.applyTeacher1 = applyTeacher1;
}
public int getApplyTeacher2() {
	return applyTeacher2;
}
public void setApplyTeacher2(int applyTeacher2) {
	this.applyTeacher2 = applyTeacher2;
}
public int getApplyTeacher3() {
	return applyTeacher3;
}
public void setApplyTeacher3(int applyTeacher3) {
	this.applyTeacher3 = applyTeacher3;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getMail() {
	return mail;
}
public void setMail(String mail) {
	this.mail = mail;
}
   
}
