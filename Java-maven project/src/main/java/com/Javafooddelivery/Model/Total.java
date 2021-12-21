package com.Javafooddelivery.Model;
/*
 * In this function we are getting the subtotal value of the each product.
 * And the total value to till (i  - 1)th index.
 * after that the total will calculate till ith index and return that total value.
 */
public class Total {

public int Total_sum(int subtotal, int total) {
			total = total + subtotal;
	return total;	
	}
}
