package com.dev.clothedb.Dao.Entity;

import javax.persistence.*;

@Entity
@Table(name = "woman_general")
public class WomanGeneral {
    @Column(name = "trousers")
    private Integer trousers;

    @Column(name = "coat")
    private Integer coat;

    @Column(name = "shoes")
    private Integer shoes;

    @Column(name = "accessories")
    private Integer accessories;
    @Id
    private String id;

    public Integer getTrousers() {
        return this.trousers;
    }

    public void setTrousers(Integer trousers) {
        this.trousers = trousers;
    }

    public Integer getCoat() {
        return this.coat;
    }

    public void setCoat(Integer coat) {
        this.coat = coat;
    }

    public Integer getShoes() {
        return this.shoes;
    }

    public void setShoes(Integer shoes) {
        this.shoes = shoes;
    }

    public Integer getAccessories() {
        return this.accessories;
    }

    public void setAccessories(Integer accessories) {
        this.accessories = accessories;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public WomanGeneral(Integer trousers, Integer coat, Integer shoes, Integer accessories) {
        this.trousers = trousers;
        this.coat = coat;
        this.shoes = shoes;
        this.accessories = accessories;
    }

    public WomanGeneral() {
    }

}
