<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    out.println(text-decoration: none;);
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
out.println("width:40px;");
out.println("height:30px;");
out.println("padding:5px;");
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
out.println("text-align:right;"); 
out.println("}"); 
 
 out.println("th:last-child{");
 out.println("text-align:right;");
 out.println("}"); 
out.println("</style>");
out.println("</head>");
out.println("<body>");
out.println("<center>");
  out.println("<h2 style="background-color:red">Food Ordering App<h2>
  ");
  out.println("</center>");
out.println("<ul>");
  out.println("<li><a href="main.html">Home</a></li>");
  out.println("<li><a href="news.asp">News</a></li>");
  out.println("<li><a href="contact.asp">Contact</a></li>");
  out.println("<li><a href="about.asp">About</a></li>");
  out.println("<li style="float:right"><a href="signIn.html">Sign In</a></li>");
  out.println("<li style="float:right"><a href="registration.html">Register</a></li>");
out.println("</ul>");





out.println("</body>");
out.println("<div class="container">");
out.println("<div class="small-container cart-page">");  
out.println("<table>");
out.println("<tr>");
out.println("<th>Product</th>");
out.println("<th>Quantity</th>");
out.pritnln("<th>Subtotal</th>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>");
    
out.println("<div class="cart-info">");
out.println("<img src="C:\Users\nidhi.santosh.gour\Practice\img\dosa.jpg">"); 
out.println("<div>");	
	out.println("<p>pizza</p>");
	out.println("<small>Price: 90Rs.</small><br>");
	out.println("<a href="">Remove</a>");
	out.println("</div>");
out.println("</div>");
out.println("</td>");
out.println("<td><input type="number" value="quantity.getQuantity_1()"></td>");
out.println("<td>90Rs.</td>");	
out.prihntln("</tr>");

out.println("</table>");

out.println("<div class="total-price">");
out.println("<table>");
 out.println("<tr>");
 out.println("<td>Subtotal</td>");
 out.println("<td>90Rs.</td>");
 out.println("</tr>");
 
 out.println("<tr>");
 out.println("<td>Tax</td>");
 out.println("<td>20Rs.</td>");
 out.println("</tr>");
 
 out.println("<tr>");
 out.println("<td>Total</td>");
 out.println("<td>110Rs.</td>");
 out.println("</tr>");

out.println("</table>");
out.println("</div>");
out.println("</div>");

out.println("</div>");
out.println("</body>");
out.println("</html>");