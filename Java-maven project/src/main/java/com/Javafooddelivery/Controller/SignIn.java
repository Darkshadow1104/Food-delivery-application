package com.Javafooddelivery.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Javafooddelivery.Beans.MyJspLinksBeans;
import com.Javafooddelivery.Beans.SignInBeans;
import com.Javafooddelivery.Model.SignInDataBase;

/**
 * Servlet implementation class SignIn
 */
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn() {
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
		 * Here we are connecting with the jsp file name as Signin.jsp
		 * Here we are gettign the two signin parameter name as username and password from the signin.jsp file
		 * 
		 */
		String SignInusername = request.getParameter("username");
		String SignInpassword = request.getParameter("password");
		/*
		 * Now we are object of the file name as SignInBeans.java
		 * Here we have written all the getter and setter code for the username and the password.
		 * After that we set the value of the username and the password. 
		 */
		SignInBeans signin = new SignInBeans();
		signin.setPassword_sigin(SignInpassword);
		signin.setUsername_signin(SignInusername);
		/*
		 * Now we are making the object name as SignInDataBase.
		 * Here we are making the connection with our data base and confirming that whether the username and pasword are present in the data base of not.
		 * 
		 */
		SignInDataBase signindata = new SignInDataBase();
		/*
		 * As we will get the ans in true or false in boolean data type name as user.
		 * ConfirmDataPresent() this function will return the value in true or false in user variable.
		 * ConfirmDataPresent() in this function we are again calling the MyDataBase object and making the connection.
		 * The working of the MyDataBase I have explain in that fail only.
		 * And the working of the ConfirmDataPresent() I have comment in SignInDataBase.     
		 */
		boolean user = signindata.ConfirmDataPresent(signin.getUsername_signin(), signin.getPassword_sigin());
		/*
		 * Here In this MyJspLinkBeans we have set the setter and getter for the jsp links we wanted to redirect.
		 * Hence we have made on objcet of the MyjspLink here only.
		 */
		MyJspLinksBeans JspLink = new MyJspLinksBeans();
		/*
		 * Here JspLink.setRestaurantJsp() in this function we are passing the Restauranrt.jsp.
		 * And  JspLink.setSignInJsp() in this function we are setting the Singin.jsp. 
		 */
		JspLink.setRestaurantJsp("http://localhost:8080/Javafooddelivery/jsp/Restaurant.jsp");
		JspLink.setSignInJsp("http://localhost:8080/Javafooddelivery/jsp/Singin.jsp");
		/*
		 * Now here in below code I am comparing my boolean operator 'user' with true.
		 * If 'user == true' means if the login credientials are true then the page redirected to the Restaurant activity.
		 * Else the page will again redirect to the SignIn page only. 
		 */
		if(user==true) {
			request.getSession().setAttribute("user", user);
			response.sendRedirect(JspLink.getRestaurantJsp());
		}
		else {
			//request.setAttribute("error", "User not found, please try again");
			//request.getRequestDispatcher("http://localhost:8080/Javafooddelivery/jsp/Singin.jsp").forward(request, response);
			response.sendRedirect(JspLink.getSignInJsp());
		}
		/*
		 * After this the page will redirect either on the signin page or to the register page.
		 * Its totally depend on the condition is true or false.
		 */
	}

}
