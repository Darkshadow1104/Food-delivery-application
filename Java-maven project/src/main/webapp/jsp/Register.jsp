<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=us-ascii">
<style>
<!--
li
	{float:left}
ul
	{margin:0;
	padding:0;
	list-style-type:none;
	overflow:hidden;
	background-color:#444}
.active
	{background-color:#04AA6D}
li a
	{color:white;
	text-align:center;
	display:block;
	padding:14px 16px;
	text-decoration:none}
-->
</style>
</head>
<body>
<center>
<h2 style="background-color:red">Nasta Food Ordering App
<h2></center>
<ul>
<li><a href="main.html">Home</a></li><li><a href="news.asp">News</a></li><li><a href="contact.asp">Contact</a></li><li><a href="about.asp">About</a></li><li style="float:right"><a href="http://localhost:8080/Javafooddelivery/jsp/Singin.jsp">Sign In</a></li><li style="float:right"><a href="http://localhost:8080/Javafooddelivery/jsp/Register.jsp">Register</a></li></ul>
<form method = "post" action="http://localhost:8080/Javafooddelivery/Register" style="width:400px; margin-left:423px; margin-top:10px">
<div style="padding:40px 70px 70px 70px; background-color:#e8adff; border-radius:7px">
<h2 style="margin-left:60px">New Account</h2>
<div style="padding:7px"><label>Name:</label> <input type="text" name ="name" placeholder = "Enter your name." style="display:inline-block; border:none; background:#f1f1f1; width:100%; height:7%">
</div>
<div style="padding:7px"><label>Email Id:</label> <input type="email" name ="email" placeholder = "Enter your email."  style="display:inline-block; border:none; background:#f1f1f1; width:100%; height:7%">
</div>
<div style="padding:7px"><label>Mobile No:</label> <input type="tel" name  ="mobile" placeholder = "Enter your mobile number."  style="display:inline-block; border:none; background:#f1f1f1; width:100%; height:7%">
</div>
<div style="padding:7px"><label>Password:</label> <input type="password" name ="password" placeholder = "Enter your password."  style="display:inline-block; border:none; background:#f1f1f1; width:100%; height:7%">
</div>
<div style="padding:7px"><label>Conform password:</label> <input type="text" name ="confirmpassword" placeholder = "Confirm password."  style="display:inline-block; border:none; background:#f1f1f1; width:100%; height:7%">
</div>
<div style="padding:7px"><label>Address:</label> <input type="text" name ="Address" placeholder = "Enter the address."  style="display:inline-block; border:none; background:#f1f1f1; width:100%; height:7%">
</div>
<form method = "post" action="http://localhost:8080/Javafooddelivery/Menu" style="width:400px; margin-left:423px; margin-top:10px">
<div style="padding:7px"><label>Pincode</label> <input type="text" name ="Pincode" placeholder = "Enter the pincode."  style="display:inline-block; border:none; background:#f1f1f1; width:100%; height:7%">
</div>
</form>
<button style="margin-left:72px; margin-top:11px; padding:5px 5px 5px 5px; width:50%; background-color:#e974ae; border-radius:5px; border:none">
Create Account</button> </div>
</form>
</h2>
</h2>
</body>
</html>
