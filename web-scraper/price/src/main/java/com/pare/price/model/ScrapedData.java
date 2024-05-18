package com.pare.price.model;

public class ScrapedData {
    private String product_name;
    private String site_name;
    private String site_url;
    private String price;
    private String image_url;

    public ScrapedData(String product_name, String site_name, String site_url, String price, String image_url) {
        this.product_name = product_name;
        this.site_name = site_name;
        this.site_url = site_url;
        this.price = price;
        this.image_url = image_url;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getSite_name() {
        return site_name;
    }

    public void setSite_name(String site_name) {
        this.site_name = site_name;
    }

    public String getSite_url() {
        return site_url;
    }

    public void setSite_url(String site_url) {
        this.site_url = site_url;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
}
