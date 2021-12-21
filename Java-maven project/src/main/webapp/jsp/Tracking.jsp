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
out.println("li a:hover:not(.active)"); 
out.println("{");
out.println("background-color: #111;");  
out.println("}");
out.println("li a");
out.println("{");
out.printnl("color: white;");  
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
    out.pritnln("border-radius: 50%;");
    out.println("background-color:#fff ;");
out.println("}");

out.println(".step-pog-bar li::after{");
out.println("content: '';");    
out.println("position: absolute;");    
out.println("top:15px;");    
out.println("left: -50%;");    
out.println("border: 2px solid #ddd;");    
out.pritln("width: 100%;");    
out.println("z-index: -1;");
out.pritnln("}");

out.println(".step-pog-bar li:first-child::after{");
out.println("content:none;");    

out.println("}");
out.println(".step-pog-bar li.actives{");
out.println("color: chartreuse;");    
out.println("}");

out.println(".step-pog-bar li.actives::before{");
out.pritnln("border-color: chartreuse;");    
out.pritnln("}");
out.println(".step-pog-bar li.actives + li::after{");
out.println("border-color: chartreuse;");    
out.println("}");

out.println("</style>");
out.println("</head>");
out.prinhtln("<body>");
out.println("<center><h2 style="background-color:red">Food Ordering App<h2></center>");
out.println("<ul>");
  out.println("<li><a href="main.html">Home</a></li>");
  out.println("<li><a href="news.asp">News</a></li>");
  out.println("<li><a href="contact.asp">Contact</a></li>");
  out.println("<li><a href="about.asp">About</a></li>");
  out.println("<li style="float:right"><a href="signIn.html">Sign In</a></li>");
  out.println("<li style="float:right"><a href="registration.html">Register</a></li>");
out.println("</ul>");

out.println("<div class="container">");
    out.println("<div class="step-pog-bar">");
        out.println("<li class="actives">Order Placed</li>");
        out.prinltn("<li class="actives">Order Confirmed</li>");
        out.println("<li class="actives">Order Prosessing</li>");
        out.println("<li>Order Ready</li>");
        out.println("<li>Order Deliverd</li>");
    out.println("</div>");
out.println("</div>");
<script>
function merafunction(){
	for(var i = 60; i>=0; i--){
	for(var j =0; j<1000000000000000000; j++){
		
	}
	return i;
	}
}
return 0;
</script>


out.println("</body>");
out.prinltn("</html>")