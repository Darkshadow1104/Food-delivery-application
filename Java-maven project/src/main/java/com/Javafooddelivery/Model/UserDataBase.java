package com.Javafooddelivery.Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
/*
 * In this class we are define the function name as INSERTU8SERDATA.
 * In this method we are passing the user name, emailid, password, confirmpassword, mobile number.
 * After that this class stored the all the data of the user in the table form in the Mysql database 
 */
//It will stored the users data base
public class UserDataBase {
	String state = null;
 public String INSERTUSERDATA(String name, String email, String password, String confirmpassword, String mobileNo) {
	 // we will make the object of MyDataBase.
	 MyDataBase database = new MyDataBase();
	 Connection connection = database.getcon();
	 try {
		Statement statement = connection.createStatement();
		statement.executeUpdate("insert into registerdata(name, emailid, mobileNo,password,confirmpassword) values('"+name+"', '"+email+"', '"+mobileNo+"','"+password+"', '"+confirmpassword+"')");
		state = "Data inserted successfully";
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	 return state;
 }
}
