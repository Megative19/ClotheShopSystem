package com.dev.clothedb.Dao.Entity;

import javax.persistence.*;

@Entity
@Table(name = "soft_touch_sweatshirt")
public class SoftTouchSweatshirt {
    @Column(name = "XS")
    private Integer xs;

    @Column(name = "S")
    private Integer s;

    @Column(name = "M")
    private Integer m;

    @Column(name = "L")
    private Integer l;

    @Column(name = "XL")
    private Integer xl;

    @Column(name = "category")
    private String category;

    @Column(name = "name")
    private String name;
    @Id
    private String id;

    public Integer getXs() {
        return this.xs;
    }

    public void setXs(Integer xs) {
        this.xs = xs;
    }

    public Integer getS() {
        return this.s;
    }

    public void setS(Integer s) {
        this.s = s;
    }

    public Integer getM() {
        return this.m;
    }

    public void setM(Integer m) {
        this.m = m;
    }

    public Integer getL() {
        return this.l;
    }

    public void setL(Integer l) {
        this.l = l;
    }

    public Integer getXl() {
        return this.xl;
    }

    public void setXl(Integer xl) {
        this.xl = xl;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public SoftTouchSweatshirt(Integer xs, Integer s, Integer m, Integer l, Integer xl, String category, String name) {
        this.xs = xs;
        this.s = s;
        this.m = m;
        this.l = l;
        this.xl = xl;
        this.category = category;
        this.name = name;
    }

    public SoftTouchSweatshirt() {
    }
}
