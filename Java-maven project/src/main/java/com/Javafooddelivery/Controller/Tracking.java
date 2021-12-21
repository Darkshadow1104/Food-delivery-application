package com.Javafooddelivery.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Javafooddelivery.Model.Timmer;

/**
 * Servlet implementation class Tracking
 */
public class Tracking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tracking() {
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
		 * Here I have use the HTML and the css code directly.
		 * This page is belongs to the tracking page.
		 * Here we are from the pincode diffrence calculating the time to delivered.
		 *  
		 */
		response.setContentType("text/html");
		out.println("<html>");
		out.println("<head>");    
		out.println("<style>");
		out.println("p {\r\n" + 
				"  text-align: center;\r\n" + 
				"  font-size: 30px;\r\n" + 
				"  margin-top: 0px;\r\n" + 
				"}");
		out.println("li {");
		out.println("float: left;");  
		out.println("}");

		out.println("ul {");
		out.println("margin: 0;");  
		out.println("padding: 0;");  
		  out.println("list-style-type: none;");
		  out.println("overflow: hidden;");
		  out.println("background-color: #444;");
		out.println("}");
		out.println(".active {");
		  out.println("background-color: #04AA6D;");
		out.println("}");
		out.println("li a:hover:not(.active)"); 
		out.println("{");
		out.println("background-color: #111;");  
		out.println("}");
		out.println("li a");
		out.println("{");
		out.println("color: white;");  
		out.println("text-align: center;");  
		out.println("display: block;");  
		out.println("padding: 14px 16px;");  
		out.println("text-decoration: none;");  
		out.println("}");
		out.println(".container{");
		out.println("width: 100%;");  

		out.println("}");
		out.println(".step-pog-bar{");
		out.println("margin-top: 20%;");    
		out.println("counter-reset: step;");    

		out.println("}");
		out.println(".step-pog-bar li{");
		out.println("list-style:none ;");    
		out.println("float: left;");    
		out.println("width: 20%;");    
		out.println("position: relative;");    
		out.println("text-align: center;");    
		out.println("}");
		out.println(".step-pog-bar li::before{");
		    out.println("content: counter(step);");
		    out.println("counter-increment: step;");
		    out.println("width: 30px;");
		    out.println("height: 30px;");
		    out.println("line-height: 30px;");
		    out.println("border:2px solid #ddd;");
		    out.println("display: block;");
		    out.println("text-align: center;");
		    out.println("margin:0 auto 10px auto;");
		    out.println("border-radius: 50%;");
		    out.println("background-color:#fff ;");
		out.println("}");

		out.println(".step-pog-bar li::after{");
		out.println("content: '';");    
		out.println("position: absolute;");    
		out.println("top:15px;");    
		out.println("left: -50%;");    
		out.println("border: 2px solid #ddd;");    
		out.println("width: 100%;");    
		out.println("z-index: -1;");
		out.println("}");

		out.println(".step-pog-bar li:first-child::after{");
		out.println("content:none;");    

		out.println("}");
		out.println(".step-pog-bar li.actives{");
		out.println("color: chartreuse;");    
		out.println("}");

		out.println(".step-pog-bar li.actives::before{");
		out.println("border-color: chartreuse;");    
		out.println("}");
		out.println(".step-pog-bar li.actives + li::after{");
		out.println("border-color: chartreuse;");    
		out.println("}");

		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<center><h2 style=\"background-color:red\">Food Ordering App<h2></center>");
		out.println("<ul>");
		  out.println("<li><a href=\"main.html\">Home</a></li>");
		  out.println("<li><a href=\"news.asp\">News</a></li>");
		  out.println("<li><a href=\"contact.asp\">Contact</a></li>");
		  out.println("<li><a href=\"about.asp\">About</a></li>");
		  out.println("<li style=\"float:right\"><a href=\"signIn.html\">Sign In</a></li>");
		  out.println("<li style=\"float:right\"><a href=\"registration.html\">Register</a></li>");
		out.println("</ul>");
		//Timmer s = new Timmer();
		out.println("<p>");
		out.println("Time Remains To Delivered");
		out.println("</p>");
		out.println("<p id=\"demo\"></p>");
		out.println("<div class=\"container\">");
		    out.println("<div class=\"step-pog-bar\">");
		        out.println("<li class=\"actives\">Order Placed</li>");
		        out.println("<li  id=\"ord\"    class=\"actives\"></li>"); //Order Confirmed
		        out.println("<li  id=\"pro\"    class=\"actives\"></li>"); //Order Prosessing
		        out.println("<li id=\"red\"    class=\"actives\"></li>"); //Order Ready
		        out.println("<li id=\"del\"    class=\"actives\"></li>"); //Order Deliverd
		    out.println("</div>");
		    out.println("</div>");
		    /*
		     * This is the java script logic for the delivery time.
		     */
            out.println("<script>\r\n" +  
            	"// var month document.getElementById(\"varible_from_java\");\r\n" +	
        		"var finalDate = new Date(\"Dec 10, 2021 17:42:00\").getTime();\r\n" + 
        		"\r\n" +  
        		"var x = setInterval(function() {\r\n" + 
        		"\r\n" +  
        		"  var todays_date = new Date().getTime();\r\n" + 
        		"    \r\n" +  
        		"  var time_diff = finalDate - todays_date;\r\n" + 
        		"    \r\n" +  
        		"  var today = Math.floor(time_diff / (1000 * 60 * 60 * 24));\r\n" + 
        		"  var hr = Math.floor((time_diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));\r\n" + 
        		"  var min = Math.floor((time_diff % (1000 * 60 * 60)) / (1000 * 60));\r\n" + 
        		"  var sec = Math.floor((time_diff % (1000 * 60)) / 1000);\r\n" + 
        		"    \r\n" +  
        		"  document.getElementById(\"demo\").innerHTML =  min + \"m \" + sec + \"s \";\r\n" + 
        		"    \r\n" + 
        		"  // If the count down is over, write some text \r\n" + 
        		"  if (time_diff < 0) {\r\n" + 
        		"    clearInterval(x);\r\n" + 
        		"    document.getElementById(\"demo\").innerHTML = \"Order Delivered Successfully.\";\r\n" + 
        		"  }\r\n" +
        		"  if (time_diff < 6) {\r\n" +  
            	"    document.getElementById(\"ord\").innerHTML = \"Order confirmed\";\r\n" + 
            	"  }\r\n" +
            	"  if (time_diff < 3) {\r\n" +  
            	"    document.getElementById(\"pro\").innerHTML = \"Order Prosessing\";\r\n" +
            	"  }\r\n" +
            	"  if (time_diff < 3) {\r\n" +  
            	"    document.getElementById(\"red\").innerHTML = \"Order ready\";\r\n" +
            	"  }\r\n" + 
            	"  if (time_diff < 3) {\r\n" +  
            	"    document.getElementById(\"del\").innerHTML = \"Order Delivered\";\r\n" +
            	"  }\r\n" + 
        		"}, 1000);\r\n" +
        		"</script>\r\n" + 
        		""); 
		out.println("</body>");
		out.println("</html>");
	}

}
