package com.pizzaorder.web.user.dao;

public class UserDTO {
	  private String customer_id, customer_name, customer_phonenum, customer_pw, customer_addr;
	    private int order_num;

	    public String getCustomer_id() {
	        return customer_id;
	    }

	    public void setCustomer_id(String customer_id) {
	        this.customer_id = customer_id;
	    }

	    public String getCustomer_name() {
	        return customer_name;
	        
	        
	    }

	    public void setCustomer_name(String customer_name) {
	        this.customer_name = customer_name;
	    }

	    public String getCustomer_phonenum() {
	        return customer_phonenum;
	    }

	    public void setCustomer_phonenum(String customer_phonenum) {
	        this.customer_phonenum = customer_phonenum;
	    }

	    public String getCustomer_pw() {
	        return customer_pw;
	    }

	    public void setCustomer_pw(String customer_pw) {
	        this.customer_pw = customer_pw;
	    }

	    public String getCustomer_addr() {
	        return customer_addr;
	    }

	    public void setCustomer_addr(String customer_addr) {
	        this.customer_addr = customer_addr;
	    }

	    public int getOrder_num() {
	        return order_num;
	    }

	    public void setOrder_num(int order_num) {
	        this.order_num = order_num;
	    }
}
