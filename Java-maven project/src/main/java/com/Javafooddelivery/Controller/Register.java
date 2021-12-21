package com.Javafooddelivery.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Javafooddelivery.Beans.RegisterBeans;
import com.Javafooddelivery.Model.UserDataBase;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out = response.getWriter();
		/*
		 * Here we are getting all the parameters from the,
		 * jsp file name as "Register.jsp"
		 * At the registration page the parameters required are,
		 * "name", "email", "mobile", "password", "confirmpassword"
		 *    
		 */
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		/*
		 * Here we make the object of the file name as RegisterBeans
		 * In this file we have save the getter and the setter for the register.java
		 * 
		 */
		RegisterBeans register = new RegisterBeans();
		/*
		 * Now here we setting the value for confirmpassword, email, mobile number, and the password.
		 * 
		 */
		register.setConformpassword(confirmpassword);
		register.setEmailid(email);
		register.setMobile(mobile);
		register.setName(name);
		register.setPassword(password);
		//Now creat the object of the UserDataBase class.
		/*
		 * Here now we are creating the object of the class UserDataBase.
		 * By calling this class we are calling the method INSERTUSERDATA()
		 * And we are passing the parameter name as Name, emailId, password, confirmpassword, mobile number. 
		 */
		UserDataBase userdatabase = new UserDataBase();
		String s1 = userdatabase.INSERTUSERDATA(register.getName(), register.getEmailid(), register.getPassword(), register.getConformpassword(), register.getMobile());
		/*
		 * Now after that in s1 we are getting the string which will print on the console as "User data added successfully"
		 */
		System.out.println(s1);
		/*
		 * Here we are rediderecting to the login page now.
		 */
		response.sendRedirect("http://localhost:8080/Javafooddelivery/jsp/Singin.jsp");
		
	}

}
