package com.Javafooddelivery.Model;
/*
 * Here we are getting the price of the product and the quantity of the product
 * And after that we are calculating the product of both and returing through the variable name as subtotal.
 */
public class SubTotal {

	public int subtotal_of_product(int price_of_product, int quantity_of_product) {
		int sub_total = price_of_product * quantity_of_product;
		return sub_total;
	}
}
