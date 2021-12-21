package com.Javafooddelivery.Beans;
/*
 * This is the getter and the setter for the registartion parameters
 * Like for name, emailId, mobile, password, and the confirmpassword
 *  
 */
public class RegisterBeans {
  private String name;
  private String emailid;
  private String mobile;
  private String password;
  private String conformpassword;
  
//Here we Generate the Constructer for each variable
public RegisterBeans(String name, String emailid, String mobile, String password, String conformpassword) {
	super();
	this.name = name;
	this.emailid = emailid;
	this.mobile = mobile;
	this.password = password;
	this.conformpassword = conformpassword;
}
public RegisterBeans() {
	super();
}
//Here we generate the Getter and setter method for each variable
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getConformpassword() {
	return conformpassword;
}
public void setConformpassword(String conformpassword) {
	this.conformpassword = conformpassword;
}
  
}
