package com.comp.clotheweb.Models;

public class SebetModel {

    public String category;
    public String name;
    public String color;
    public String size;

    public int price;

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public SebetModel() {
    }

    public SebetModel(String category, String name, String color, String size, int price) {
        this.category = category;
        this.name = name;
        this.color = color;
        this.size = size;
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }


}
