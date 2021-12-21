package com.Javafooddelivery.Model;
/*
 * This class is for the JDBC driver.
 * In this class we are making the connection with the data base.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDataBase {
  Connection connection = null;
  public Connection getcon() {
	  try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/javafooddelivery","root","Darkshadow@11");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return connection;  
  }
  
}
