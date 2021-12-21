package com.Javafooddelivery.Beans;
/*
 * This class we use to set the getter and the setter for the signin page jsp and the registration page jsp.
 */
public class MyJspLinksBeans {
private String SignInJsp;
private String RestaurantJsp;
//Default constructor
public MyJspLinksBeans() {
	super();
}
public String getSignInJsp() {
	return SignInJsp;
}
public void setSignInJsp(String signInJsp) {
	this.SignInJsp = signInJsp;
}
public String getRestaurantJsp() {
	return RestaurantJsp;
}
public void setRestaurantJsp(String restaurantJsp) {
	this.RestaurantJsp = restaurantJsp;
}


}
