package com.pizzaorder.web.menu.dao;

public class MenuDTO {


    private String menu_name, menu_size;
    private int idx, menu_count, menu_price;

    public MenuDTO(String menu_name, String menu_size, int idx, int menu_count, int menu_price) {
        this.menu_name = menu_name;
        this.menu_size = menu_size;
        this.idx = idx;
        this.menu_count = menu_count;
        this.menu_price = menu_price;
    }


    public String getMenu_name() {
        return menu_name;
    }

    public void setMenu_name(String menu_name) {
        this.menu_name = menu_name;
    }

    public String getMenu_size() {
        return menu_size;
    }

    public void setMenu_size(String menu_size) {
        this.menu_size = menu_size;
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public int getMenu_count() {
        return menu_count;
    }

    public void setMenu_count(int menu_count) {
        this.menu_count = menu_count;
    }

    public int getMenu_price() {
        return menu_price;
    }

    public void setMenu_price(int menu_price) {
        this.menu_price = menu_price;
    }
}