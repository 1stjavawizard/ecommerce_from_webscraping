package com.pare.price.model;

import jakarta.persistence.*;

@Entity
@Table(name = "differences")
public class Difference {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "supplier")
    private String supplier;

    @Column(name = "price")
    private String price;

    @Column(name = "link")
    private String link;

    @ManyToOne
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    private Product product;

    public Difference(String supplier, String price, String link, Product product) {
        this.supplier = supplier;
        this.price = price;
        this.link = link;
        this.product = product;
    }

    public Difference() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String toString() {
        return "Difference{" +
                "id=" + id +
                ", supplier='" + supplier + '\'' +
                ", price='" + price + '\'' +
                ", link='" + link + '\'' +
                ", product=" + product +
                '}';
    }
}
