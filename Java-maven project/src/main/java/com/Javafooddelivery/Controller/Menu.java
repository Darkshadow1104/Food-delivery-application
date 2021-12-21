package com.Javafooddelivery.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Javafooddelivery.Beans.MenuBeans;
import com.Javafooddelivery.Beans.ProductNameBeans;
import com.Javafooddelivery.Model.Menu_model;
import com.Javafooddelivery.Model.Passing_combine_function;
import com.Javafooddelivery.Model.SubTotal;
import com.Javafooddelivery.Model.Total;
import javax.script.*;
import java.io.*;  

/**
 * Servlet implementation class Menu
 */
public class Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Menu() {
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
		 * Here we are getting the pincode from the menu jsp file
		 */
		String pincode = request.getParameter("Pincode");
		//System.out.println(pincode);
		/*
		 * Here we rae making the objcet of the MenuBeans in which getter and setter is set for the items in the menu.
		 * 
		 */
		MenuBeans menubeans = new MenuBeans();
		/*
		 * Here we are calling the class name as the menu_model.
		 * In this class I have written the logic for converting the string to integer.
		 * 
		 */
		Menu_model menu_model = new Menu_model();
		/*
		 * Here we are calling the object name as the SubTotal.
		 * Here I am getting the product of the price_of_product and the quantity_of_product.
		 * Likewise this class calculating the  
		 */
		SubTotal subtotal = new SubTotal();
		/*
		 * Here I am calling the class name as Total.
		 * This class calculating the total of all the subtotal.
		 *  For better understaing suppose there are two items I have added in the cart then above class subtotal will calculate the total of each item and this belio class total will claculate the total of all items.  
		 */
		Total total_1 = new Total();
		/*
		 * Here we have set the array name as quantity_array.
		 * In this array we will stored the quantity of the each item.
		 * 
		 */
		int[] quantity_array = new int[9];
		//This for loop for the Quantity of each product.
		/*
		 * Here 1st I have ally the for loop which will iterating from 0 to 9.
		 * 
		 */
		for(int i = 0; i<quantity_array.length; i++) {
			/*
			 * Here we increases the index value i by 1.
			 */
			int j = i + 1;
			/*
			 * Here we get the quantity form the menu jsp file.
			 * This we dose by .getParamter.
			 * 
			 */
			String Quantity = request.getParameter("qty_"+ j);
			/*
			 * After that we set the quantity of the product to the set function in the setQuantity.
			 * This method setQuantity is the part of the MenuBeans class.  
			 */
			menubeans.setQuantity_1(Quantity);
			/*
			 * After that we are converting this quantity cvalue from string to int and stored it in variable name as quantity.
			 */
			int quantity = menu_model.Conversion_function_string_to_int(menubeans.getQuantity_1());
			/*
			 * Now the quantity of the product we have stored in the ith index of the array.
			 */
			quantity_array[i] = quantity;
		}
		/*
		 * Here we are making one string array which will store the name of each item.
		 * 
		 */
		String[] product_name_array = new String[9];
		/*
		 * Here we are applying the for loop in the product_name_array.
		 */
		for(int i = 0; i<product_name_array.length; i++) {
			/*
			 * Here we increase the index by 1.
			 */
			int j = i + 1;
			/*
			 * Here we are getting the name of the item from the menu jsp file
			 */
			String pro_name = request.getParameter("name_" + j);
			/*
			 * Now we have set the name of the item in the menubeans class
			 */
			menubeans.setName_1(pro_name);
			/*
			 * Here we are just print the name of the item in the file.
			 *  
			 */
			System.out.println(pro_name);
			/*
			 * Here we are saving the name of the product in the array.
			 */
			product_name_array[i] = menubeans.getName_1(); 
		}
		/*
		 * Here we 1st Creating the array which will stored the cost of each product.
		 * After that we are applying the For loop to stored every product cost.
		 * (Inside the For loop) After that we are storing the cost of each product in varible name product.
		 * (Inside the For loop) After that we are calling the set function for the product from the MenuBeans class and passing valkue to it.
		 * (Inside the For loop) After that the cost of the product is passing to the function call "Conversion_function_string_to_int" by calling the Class "menu_model" and cost of the product save in "pro" variable.
		 * (Inside the For loop) "Conversion_function_string_to_int()" this function convert the string value in to the integer type.
		 * (Inside the For loop) And after the the cost of product save in to the array.	
		 */
		/*
		 * Similarly below array we have declared to stored the cost of the each item.
		 * And we are storing the cost of each item in this array
		 */
		int[] product_array = new int[9];
		/*
		 * Here we apply the for lopp in the array
		 */
		for(int i = 0; i<product_array.length; i++) {
			/*
			 * Here we increases the index of the array by 1.
			 */
			int j = i + 1;
			/*
			 * Here we getting the cost of the product in "pro_" + j variable from the menu jsp file.
			 * And we are storing cost of item in the product variable.
			 */
			String product = request.getParameter("pro_" + j);
			/*
			 * Here we again set that value in the set methods of the menubeans class
			 */
			menubeans.setProduct_1(product);
			/*
			 * Here we are converting the string type of the cost value in the int type. 
			 */
			int pro = menu_model.Conversion_function_string_to_int(menubeans.getProduct_1());
			/*
			 * After that we stored the that value in the array.
			 */
			product_array[i] = pro;
		}
		//Here we are finding the Total sum of the products.
		/*
		 * Here we are making the objcet of the class name as passing_combine_function.
		 * 
		 */
		Passing_combine_function combine_function = new Passing_combine_function();
		response.setContentType("text/html");
		/*
		 * Here I have call the jsp page here in servelt only.
		 * Here I have made the Css and Html.
		 * This page redirect directly to the menu part of the restaurant.
		 *  
		 */
		out.println("<html>");
		out.println("<head>");
		out.println("<style>");
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

		  out.println("li a:hover:not(.active) {");
		    out.println("background-color: #111;");
		  out.println("}");

		  out.println("li a {");
		    out.println("color: white;");
		    out.println("text-align: center;");
		    out.println("display: block;");
		    out.println("padding: 14px 16px;");
		    out.println("text-decoration: none;");
		  out.print("}");
		  
		  out.println(".container {");
		    out.println("max-width: 1000px;");
		    out.println("margin: 0 auto;");
		    out.println("padding: 1.5em;");
		  out.println("}");

		 /*------------cart items ---------------*/
		 
		 out.println(".cart-page{");
		 out.println("margin:80px auto;");
		 out.println("}");
		 out.println("table{");
		 out.println("width:100%;");
		 out.println("border-collapse:collapse;");
		 out.println("}");
		 out.println(".cart-info{");
		 out.println("display:flex;");
		 out.println("flex-wrap:wrap;");
		 out.println("}");
		 
		 out.println("th{");
		 out.println("text-align:left;");
		 out.println("padding:5px;");
		 out.println("color:#fff;");
		 out.println("background:#ff523b;");
		 out.println("font-weight:normal;");
		 out.println("}");

		out.println("td{");
		out.println("padding:10px 5px;");
		out.println("}");

		out.println("td input{");
		out.println("width:20px;");
		out.println("height:20px;");
		out.println("padding:4px;");
		out.println("}");

		out.println("td a{");
		out.println("color:#ff523b;");
		out.println("font-size:12px;");

		out.println("}");
		out.println("td img{");
		out.println("width:80px;");
		out.println("height:80px;");
		out.println("margin-right:10px;");
		out.println("}");

		out.println(".total-price{");
		out.println("display:flex;");
		out.print("justify-content:flex-end;");
		out.println("}");

		out.println(".total-price table{");
		out.println("border-top:3px solid #ff523b;");
		out.println("width:100%;");
		out.println("max-width:400px;");
		out.println("}");

		out.println("td:last-child{"); 
		out.println("text-align:right;"); //right 
		out.println("}"); 
		 
		 out.println("th:last-child{");
		 out.println("text-align:right;");
		 out.println("}"); 
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<center>");
		//out.println("<h2 style="background-color:red">Food Ordering App<h2>");
		out.print("<h2 style=");
		out.print("background-color:red");
		out.print(">");
		out.print("Nasta Food Ordering App");
		out.print("<h2>");
		  out.println("</center>");
		out.println("<ul>");
		  out.println("<li><a href=\"main.html\">Home</a></li>");
		  out.println("<li><a href=\"news.asp\">News</a></li>");
		  out.println("<li><a href=\"contact.asp\">Contact</a></li>");
		  out.println("<li><a href=\"about.asp\">About</a></li>");
		  //out.println("<li style="float:right"><a href=\"signIn.html\">Sign In</a></li>");
		  
		  out.print("<li style=");
		  out.print("float:right>");
		  out.print("<a href=\"signIn.html\">Sign In</a>");
		  out.print("</li>");
		  //out.println("<li style="float:right"><a href=\"registration.html\">Register</a></li>");
		  out.println("<li style=");
		  out.print("float:right>");
		  out.print("<a href=\"registration.html\">Register</a>");
		  out.print("</li>");
		out.println("</ul>");





		out.println("</body>");
		//out.println("<div class="container">");
		out.println("<div class=");
		out.print("container");
		out.print(">");
		out.println("<div class=");
		out.print("small-container cart-page");
		out.print(">");
		out.println("<table>");
		out.println("<tr>");
		out.println("<th>Product</th>");
		out.println("<th>Quantity</th>");
		out.println("<th>Subtotal</th>");
		out.println("</tr>");
		/*
		 * Here we have initialize the pretoal of the product bty 0.
		 * After that in the for loop we are seeing that is in case the quantity at the ith position not equal to 0 then it will inside the if statment.
		 * Here we are getting the name of the item in the NAME vriable
		 * After that we are getting the item cost in PRICE variable.
		 * After that we are calculating the product of the quantity and the price of each iteam and store the product in SUBTOTAL.
		 * After that we are calculating the sum of the total of all the subtotal in PRETOTAL.
		 */
        int PRETOTAL = 0; 
		for(int i = 0; i<quantity_array.length ; i++) {
			if(quantity_array[i]!=0) {
				int index_of_the_valid_quantity = i;
				int price_of_the_product = product_array[i];
				String name_of_the_product =  product_name_array[i];
				int quantity = combine_function.combine_function_quantity(index_of_the_valid_quantity, quantity_array[i]);
				String NAME = combine_function.combine_function_name(index_of_the_valid_quantity, product_name_array[i]);
				int PRICE = combine_function.combine_function_price(index_of_the_valid_quantity,product_array[i]);
				int SUBTOTAL = subtotal.subtotal_of_product(PRICE,quantity);
				PRETOTAL = total_1.Total_sum(SUBTOTAL, PRETOTAL);
				System.out.println(quantity);
				response.setContentType("text/html");
				out.println("<table>");
				out.println("<tr>");
				out.println("<td>");
				out.println("<div class=");
				out.print("cart-info");
				out.print(">");
				out.println("<img src=");
				out.print("C:\\Users\\nidhi.santosh.gour\\Practice\\img\\dosa.jpg");
				out.print(">"); 
				out.println("<div>");		
					out.println("<p>");
					out.print(NAME);
					out.print("</p>");
					out.println("<small>Price:");
					out.print(PRICE);
					out.print("Rs.");
					out.print("</small>");
					out.print("<br>");
					out.println("<a href=");
					out.print("");
					out.print(">");
					out.print("Remove");
					out.print("</a>");
					out.println("</div>");
				out.println("</div>");
				out.println("</td>");
				out.println("<td>" + quantity + "</td>");
				out.println("<td>");
				out.print(SUBTOTAL);
				out.print("Rs.");
				out.print("</td>");
				out.println("</tr>");
				out.println("</table>");
				 				
			}
		}
		out.println("<div class=");
		out.print("total-price");
		out.print(">");
		
		out.println("<table>");
		 out.println("<tr>");
		 out.println("<td>Pretotal</td>");
		 out.println("<td>");
		 out.print(PRETOTAL);
		 out.print("Rs.");
		 out.print("</td>");
		 out.println("</tr>");
		 out.println("<tr>");
		 out.println("<td>Coupon1:</td>");
		 out.println("<td>Save50");
		 out.println("<input type =");
		 out.println("checkbox");
		 out.println("id=Check_my_statment_2");
		 out.println("onclick=");
		 out.println("myFun_for_coupon_50()");
		 //out.println("myFun_for_coupon_50()");
		 out.println(">");
		 out.println("<p id=\"text_my_statment_2\" style=\"display:none\">Save50 coupon applied successfully.</p>");
		 //int coupon_50 = 50;
         //out.println("<input type=\"hidden\" name = \"pro_1\" value =");
         //out.println("coupon_50");
         //out.println(">");
		 out.println("</tr>");
		 out.println("<tr>");
		 out.println("<td>Coupon2:</td>");
		 out.println("<td>Save20");
		 out.println("<input type =");
		 out.println("checkbox");
		 out.println("value = ");
		 out.println("20");
		 out.println("id = Check_my_statment_1");
		 out.println("onclick=");
		 int update_pretotal;
		 out.println("myFun_for_coupon_20()");
		 out.println(">");
		 out.println("<p id=\"text_my_statment_1\" style=\"display:none\">Save20 coupon applied successfully.</p>");
		 //out.println("></td>");
		 //out.println("<br>");
		 out.println("</tr>");
		 out.println("<tr>");
		 out.println("<td>Tax</td>");
		 out.println("<td>30Rs.</td>");
		 out.println("</tr>");
		 int Final_Total = PRETOTAL + 30; 
		 out.println("<tr>");
		 out.println("<td>Total</td>");
		 out.println("<td>");
		 out.print(Final_Total);
		 out.print("Rs.");
		 out.print("</td>");
		 out.println("</tr>");
		 // Function for the coupon save50.
		 /*
		  * Here we have creat the java script in which we are making the function after clicking the check box the the save 50 and save 20 coupan will added.
		  * 
		  */
		 out.println("<script>\r\n" + 
		 		"function myFun_for_coupon_50() {\r\n" + 
		 		"  var click_the_box_2 = document.getElementById(\"Check_my_statment_2\");\r\n" + 
		 		"  var click_the_text_2 = document.getElementById(\"text_my_statment_2\");\r\n" + 
		 		"  if (click_the_box_2.checked == true){\r\n" + 
		 		"    click_the_text_2.style.display = \"block\";\r\n" +
		 		"  } else {\r\n" + 
		 		"     click_the_text_2.style.display = \"none\";\r\n" + 
		 		"  }\r\n" + 
		 		"}\r\n" + 
		 		"</script>");
		 //Function for the coupon save20.
		 out.println("<script>\r\n" + 
			 		"function myFun_for_coupon_20() {\r\n" + 
			 		"  var click_the_box_1 = document.getElementById(\"Check_my_statment_1\");\r\n" + 
			 		"  var click_the_text_1 = document.getElementById(\"text_my_statment_1\");\r\n" + 
			 		"  if (click_the_box_1.checked == true){\r\n" + 
			 		"    click_the_text_1.style.display = \"block\";\r\n" +
			 		"  } else {\r\n" + 
			 		"     click_the_text_1.style.display = \"none\";\r\n" + 
			 		"  }\r\n" + 
			 		"}\r\n" + 
			 		"</script>");
		out.println("</table>");
		out.println("</div>");
		out.println("</div>");

		out.println("</div>");
		//out.println("<input type=\"submit\" value = \"Proceed to pay\" style=\"background: red; text-decoration: none;align-items: center;padding: 10px 20px;color:white;    margin-left: 535px;\">");
		//out.println("</form>");
        out.println("<a href=\"http://localhost:8080/Javafooddelivery/jsp/NewPayment.jsp\" style=\"background: red; text-decoration: none;align-items: center;padding: 10px 20px;color:white;    margin-left: 535px;\">Proceed to pay</a>\r\n" + 
        		"");
        out.println("<a href=\"http://localhost:8080/Javafooddelivery/jsp/Restaurant.jsp\" style=\"background: red; text-decoration: none;align-items: center;padding: 10px 20px;color:white;    margin-left: 200px;\">Discard order</a>\r\n" + 
        		"");
		out.println("</body>");
		out.println("</html>");

		//response.sendRedirect("");
		
	}

}
