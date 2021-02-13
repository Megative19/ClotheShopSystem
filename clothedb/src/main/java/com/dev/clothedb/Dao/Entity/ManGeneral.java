package com.dev.clothedb.Dao.Entity;

import javax.persistence.*;

@Entity
@Table(name = "man_general")
public class ManGeneral {

    @Column(name = "tshirt")
    private Integer tshirt;

    @Column(name = "trousers")
    private Integer trousers;

    @Column(name = "shoes")
    private Integer shoes;

    @Column(name = "sweatshirt")
    private Integer sweatshirt;

    @Column(name = "coat")
    private Integer coat;

    @Column(name = "accessories")
    private Integer accessories;
    @Id
    private String id;


    public Integer getTshirt() {
        return this.tshirt;
    }

    public void setTshirt(Integer tshirt) {
        this.tshirt = tshirt;
    }

    public Integer getTrousers() {
        return this.trousers;
    }

    public void setTrousers(Integer trousers) {
        this.trousers = trousers;
    }

    public Integer getShoes() {
        return this.shoes;
    }

    public void setShoes(Integer shoes) {
        this.shoes = shoes;
    }

    public Integer getSweatshirt() {
        return this.sweatshirt;
    }

    public void setSweatshirt(Integer sweatshirt) {
        this.sweatshirt = sweatshirt;
    }

    public Integer getCoat() {
        return this.coat;
    }

    public void setCoat(Integer coat) {
        this.coat = coat;
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


    public ManGeneral() {
    }

    public ManGeneral(Integer tshirt, Integer trousers, Integer shoes, Integer sweatshirt, Integer coat, Integer accessories) {
        this.tshirt = tshirt;
        this.trousers = trousers;
        this.shoes = shoes;
        this.sweatshirt = sweatshirt;
        this.coat = coat;
        this.accessories = accessories;
    }
}
