package com.pizzaorder.web.menu.dao;

import java.sql.Timestamp;

public class OrdersDTO {
    private String username, addr, addretc, addrdetail, userphone, menu_name;
    private int orderid, customerid, menuitemid, quantity, price;
    private Timestamp ordertime;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getAddretc() {
        return addretc;
    }

    public void setAddretc(String addretc) {
        this.addretc = addretc;
    }

    public String getAddrdetail() {
        return addrdetail;
    }

    public void setAddrdetail(String addrdetail) {
        this.addrdetail = addrdetail;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getMenu_name() {
        return menu_name;
    }

    public void setMenu_name(String menu_name) {
        this.menu_name = menu_name;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    public int getMenuitemid() {
        return menuitemid;
    }

    public void setMenuitemid(int menuitemid) {
        this.menuitemid = menuitemid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Timestamp getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Timestamp ordertime) {
        this.ordertime = ordertime;
    }

    @Override
    public String toString() {
        return "OrdersDTO{" +
                "username='" + username + '\'' +
                ", addr='" + addr + '\'' +
                ", addretc='" + addretc + '\'' +
                ", addrdetail='" + addrdetail + '\'' +
                ", userphone='" + userphone + '\'' +
                ", menu_name='" + menu_name + '\'' +
                ", orderid=" + orderid +
                ", customerid=" + customerid +
                ", menuitemid=" + menuitemid +
                ", quantity=" + quantity +
                ", price=" + price +
                ", ordertime=" + ordertime +
                '}';
    }
}