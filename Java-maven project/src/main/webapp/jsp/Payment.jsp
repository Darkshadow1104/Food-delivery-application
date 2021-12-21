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
height:500px;
border:1px solid;
display:flex;
flex-direction:column;
padding:40px;
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

.first-row{
display:flex;
}
.owner{
width:100%;
margin-right:40px;
}

.input-field{
border:1px solid #999;
}

.input-field input{
width:100%;
border:none;
outline:none;
padding:10px;
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
<form method = "post" action="http://localhost:8080/Javafooddelivery/Tracking">
<div class="container">
<h1>Confirm Your Payment</h1>
<div class="first-row">
<div class="owner">
	 <h3>Owner</h3>
	 <div class="input-field">
	      <input type="text">
	 </div>
	 <div class="cvv">
	 <h3>CVV</h3>
	 <div class="input-field">
	      <input type="password">
	 </div>
	 </div>
</div>
</div>


<div class="second-row">
     <div class="card-number">
	 <h3>Debit Card Number</h3>
	 <div class="input-field">
	      <input type="text">
	 </div>
</div>
</div>


<div class="third-row">
     <div class="card-number">
	 <h3>Expiration Date</h3>
	 <div class="selection">
	 <div class="date">
	    <select name="months" id="months">
		<option value="Jan">Jan</option>
		<option value="Feb">Feb</option>
		<option value="Jan">Mar</option>
		<option value="Feb">Apr</option>
		<option value="Jan">May</option>
		<option value="Feb">Jun</option>
		<option value="Jan">Jul</option>
		<option value="Feb">Aug</option>
		<option value="Jan">Sep</option>
		<option value="Feb">Oct</option>
		<option value="Jan">Nov</option>
		<option value="Feb">Dec</option>
		</select>
		
		<select name="years" id="years">
		<option value="2020">2021</option>
		<option value="2019">2022</option>
		<option value="2020">2023</option>
		<option value="2019">2034</option>
		<option value="2020">2025</option>
		<option value="2019">2026</option>
		<option value="2020">2027</option>
		<option value="2019">2028</option>
		<option value="2020">2029</option>
		<option value="2019">2030</option>
		</select>
	 </div>
	 </div>
	 <div class="cards" style="margin-left: 192px;margin-top: -59px;">
	     <img src="img/master.png" alt="">
		 <img src="img/visa.png" style="margin-bottom: -18px;" alt="">
		 <img src="img/pay.png" alt="">
		
	 </div>
	 <input type="submit" value = "Proceed to pay" style="background: red;">
</div>
</div>
</div>
</form>
</body>
</html>