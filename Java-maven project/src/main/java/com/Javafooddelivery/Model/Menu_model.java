package com.Javafooddelivery.Model;
/*
 * This class convert the string value to the int value and return the int value.
 */
public class Menu_model {
 
public int Conversion_function_string_to_int(String str) {
	try{
        int number = Integer.parseInt(str);
        return number;
    }
    catch (NumberFormatException ex){
        ex.printStackTrace();
    }
	return 0;
}
	
}
