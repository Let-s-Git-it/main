package com.pizzaorder.web.menu.dao;

public class CategoryDTO {
    private String category_id;


    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }


    @Override
    public String toString() {
        return "CategoryDTO{" +
                "category_id='" + category_id + '\'' + '}';
    }
}