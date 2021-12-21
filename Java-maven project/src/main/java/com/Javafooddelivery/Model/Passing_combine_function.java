package com.Javafooddelivery.Model;
/*
 * In this class we are combining the bane in the array
 * Quantity in the quantity array
 * Price in the price array.
 */
import com.Javafooddelivery.Beans.ProductNameBeans;
import com.Javafooddelivery.Beans.ProductPriceBeans;
import com.Javafooddelivery.Beans.ProductQuantityBeans;

public class Passing_combine_function {
	ProductNameBeans name_1 = new ProductNameBeans();
	ProductQuantityBeans quantity_1 = new ProductQuantityBeans();
	ProductPriceBeans price_1 = new ProductPriceBeans();
	passinggetval passing = new passinggetval();
	public int Price_1;	
/*public void Combine_function(int index_of_quantity, int quantity, int price, String name ) {
   	if(index_of_quantity == 0) {
   		name_1.setName_pro_1(name);
   		//Name_1 = name_1.getName_pro_1();
   		quantity_1.setQuantity_1(quantity);
   		//Quantity_1 = quantity_1.getQuantity_1();
   		price_1.setPrice_1(price);
   		//Price_1 = price_1.getPrice_1();
   		
   	}
   	else if(index_of_quantity==1) {
   		name_1.setName_pro_2(name);
   		//Name_2 = name_1.getName_pro_2();
   		quantity_1.setQuantity_2(quantity);
   		//Quantity_2 = quantity_1.getQuantity_2();
   		price_1.setPrice_2(price);
   		//Price_2 = price_1.getPrice_2();
   	}
   	else if(index_of_quantity==2) {
   		name_1.setName_pro_3(name);
   		//Name_3 = name_1.getName_pro_3();
   		quantity_1.setQuantity_3(quantity);
   		//Quantity_3 = quantity_1.getQuantity_3();
   		price_1.setPrice_3(price);
   		//Price_3 = price_1.getPrice_3();
   	}
   	else if(index_of_quantity==3) {
   		name_1.setName_pro_4(name);
   		quantity_1.setQuantity_4(quantity);
   		price_1.setPrice_4(price);
   	}
   	else if(index_of_quantity==4) {
   		name_1.setName_pro_5(name);
   		quantity_1.setQuantity_5(quantity);
   		price_1.setPrice_5(price);
   	}
   	else if(index_of_quantity==5) {
   		name_1.setName_pro_6(name);	
   		quantity_1.setQuantity_6(quantity);
   		price_1.setPrice_6(price);
   	}
   	else if(index_of_quantity==6) {
   		name_1.setName_pro_7(name);
   		quantity_1.setQuantity_7(quantity);
   		price_1.setPrice_7(price);
   	}
   	else if(index_of_quantity==7) {
   		name_1.setName_pro_8(name);
   		quantity_1.setQuantity_8(quantity);
   		price_1.setPrice_8(price);
   	}
   	else if(index_of_quantity==8) {
   		name_1.setName_pro_9(name);
   		quantity_1.setQuantity_9(quantity);
   		price_1.setPrice_9(price);
   	}
   	
}*/
public int combine_function_quantity(int index_of_quantity, int quantity) {
	 
		quantity_1.setQuantity_1(quantity);
		return quantity_1.getQuantity_1();
}
public String combine_function_name(int index_of_quantity, String name_of_product) {
	name_1.setName_pro_1(name_of_product);
	return name_1.getName_pro_1();
}
public int combine_function_price(int index_of_quantity, int price_of_product) {
	price_1.setPrice_1(price_of_product);
	return price_1.getPrice_1();
}
}
