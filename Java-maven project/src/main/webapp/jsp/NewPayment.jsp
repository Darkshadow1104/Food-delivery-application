<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<style>
  li {
    float: left;
  }

  ul {
    margin: 0;
    padding: 0;
    list-style-type: none;
    overflow: hidden;
    background-color: #444;
  }

  .active {
    background-color: #04AA6D;
  }

  li a:hover:not(.active) {
    background-color: #111;
  }

  li a {
    color: white;
    text-align: center;
    display: block;
    padding: 14px 16px;
    text-decoration: none;
  }

.container{
width:500px;
height: 290px;
border:1px solid;
display:flex;
flex-direction:column;
padding:32px;
justify-content:center;
align:center;
margin-left: 340px;
margin-top: 44px;
}

.cards img{
 width:100px;
}

.container h1{
text-align:center;
}





.selection{
display:flex;
justify-content:space-between;
}

.selection select{
padding:10px 20px;
}

.pay{
background-color:red;
color:white;
text-align:center;
text-transform:uppercase;
text-decoration:none;
height:15px;
height:15px;
padding:10px;
}

.wrapper ul{
list-style:none;
margin-top:2%;
background:white;
margin-left: 144px;
}

.wrapper ul li{
background:#262626;

}




</style>
</head>
<body>
<center>
<h2 style="background-color:red">Food Ordering App<h2>
</center>
<ul>
  <li><a href="main.html">Home</a></li>
  <li><a href="news.asp">News</a></li>
  <li><a href="contact.asp">Contact</a></li>
  <li><a href="about.asp">About</a></li>
  <li style="float:right"><a href="signIn.html">Sign In</a></li>
  <li style="float:right"><a href="registration.html">Register</a></li>
</ul>

<div class="container">
<h1>Choose Your Payment Option</h1>

<div class="owner">
	 <div class="selection">
	 <div class="date">
	 <div class="wrapper">
	    <ul>
          <li ><a href="http://localhost:8080/Javafooddelivery/jsp/Payment.jsp">Debit Card</a>
		  </li>
		  <li ><a href="http://localhost:8080/Javafooddelivery/jsp/CreditCardPayment.jsp">Credit Card</a></li> 
		</ul>
		</div>
	 </div>
	 </div>
</div>
 <div class="cards" style="margin-top: 12px;margin-left: 96px;">
	     <img src="img/master.png" alt="">
		 <img src="img/visa.png" style="margin-bottom: -18px;" alt="">
		 <img src="img/pay.png" alt="">
		
</div>
</div>
</div>
</body>
</html>