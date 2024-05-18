package com.pare.price.controller;

import com.pare.price.dao.ProductDao;
import com.pare.price.model.*;
import com.pare.price.util.WebScraper;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Date;
import java.util.List;

@RestController
public class ProductController {


    @GetMapping("/")
    public String hello() {
        return "Hello World";
    }

    @GetMapping("/products")
    public Iterable<Product> get() {
        ProductDao productDao = new ProductDao();
        return productDao.getProducts();
    }


    @PostMapping("/products")
    public String create(@RequestBody Link link) throws IOException {
        WebScraper webScraper = new WebScraper();
        List<ScrapedData> scraped = webScraper.scrape(link.getUrl());
        ProductDao productDao = new ProductDao();
        for(ScrapedData scrapedData : scraped) {
            Product product = new Product(scrapedData.getProduct_name(), scrapedData.getImage_url());
            Site site = new Site(scrapedData.getSite_name(), scrapedData.getSite_url());
            Price price = new Price(scrapedData.getPrice(), new Date());
            productDao.saveScrapedData(product, site, price);
        }
        return "Link scrape successful";
    }
}
