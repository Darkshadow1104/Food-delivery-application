package com.Javafooddelivery.Model;
/*
 * Here we are making the connection with the database.
 * After that We are making the function ConfirmDataPresent(), which will see whether the emailid and the password are present in the database or not. 
 */
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SignInDataBase {
     
	public boolean ConfirmDataPresent(String username_signin, String password_sigin) {
		/*
		 * Here I am creating the object of the JDBC server.
		 */
		MyDataBase database = new MyDataBase();
		/*
		 * Here I am making the connection.
		 */
		Connection connection = database.getcon();
		/*
		 * Here in the below code we are doing like if username and the password present in the data base then it will return user found in the data base
		 * Otherwise it will return User not found in the dsata base
		 */
		try {
			Statement statement = connection.createStatement();
			//String SQL_1 = "SELECT * FROM registerdata WHERE emailid = '"+username_signin+"'";
			//String SQL_2 = "SELECT *FROM registerdata WHERE password = '"+password_sigin+"'";
			String SQL_1 = "SELECT * FROM registerdata WHERE (emailid, password) = ('"+username_signin+"', '"+password_sigin+"')";
			ResultSet resultset_1 = statement.executeQuery(SQL_1);
			//ResultSet resultset_2 = statement.executeQuery(SQL_2);
			if(resultset_1.next()) {
				System.out.println("User found In Data Base.");
				return true;
			}
			else {
				System.out.println("User Not found In Data Base.");
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
