<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
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
</style>
<center><h2 style="background-color:red">Food Ordering App<h2></center>
<ul>
  <li><a href="main.html">Home</a></li>
  <li><a href="news.asp">News</a></li>
  <li><a href="contact.asp">Contact</a></li>
  <li><a href="about.asp">About</a></li>
  <li style="float:right"><a href="signIn.html">Sign In</a></li>
  <li style="float:right"><a href="registration.html">Register</a></li>
</ul>
<form style="width:400px;margin-left:423px;margin-top:10px">
<div style="padding:40px 70px 70px 70px;background-color:#e8adff;;border-radius:7px">
<h2 style="margin-left:92px">Address</h2>
<div style="padding:7px"><label style="margin-left: 5px;">Name:</label>
<input type="text" placeholder="Enter Name.." style="display:inline-block;border:none;background: #f1f1f1;width:97%;height:7%;margin-left: 6px;"/>

<div style="padding:7px"><label>Address:</label>
<input type="text" placeholder="Enter Address.." style="display:inline-block;border:none;background: #f1f1f1;width:100%;height:7%"/>
</div>

<div style="padding:7px"><label>Pin Code:</label>
    <input type = "hidden" name  = "pin_code" value = "0">
    <input type="text" placeholder="Enter Pin Code.." style="display:inline-block;border:none;background: #f1f1f1;width:100%;height:7%"/>
</div>

<div style="padding:7px"><label>Area:</label> 
    <input type="text" placeholder="Enter Area.." style="display:inline-block;border:none;background: #f1f1f1;width:100%;height:7%"/>
</div>
<input type="submit" value = "Proceed to pay" style="background: red; text-decoration: none;align-items: center;padding: 10px 20px;color:white;    margin-left: 535px;">
<button style="margin-left:91px;margin-top: 11px;padding: 5px 5px 5px 5px;width:30%;background-color:#e974ae;border-radius:5px;border:none">Save</button>
</div>
</form>
</html>