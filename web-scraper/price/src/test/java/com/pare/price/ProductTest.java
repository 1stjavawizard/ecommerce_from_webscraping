package com.pare.price;

import com.pare.price.model.Product;
import com.pare.price.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;

import static org.junit.Assert.*;

public class ProductTest {
    @Test
    public void testConnectionToWebsite() {
        try {
            // Attempt to connect to a website
            Document doc = Jsoup.connect("https://www.walmart.com/search?q=iphone&facet=cell_phone_type%3AUnlocked+Cell+Phones").get();
            assertNotNull(doc);
        } catch (IOException e) {
            fail("Connection to the website failed");
        }
    }

    public double scrapePriceFromWebsite() throws IOException {
        Document doc = Jsoup.connect("https://www.walmart.com/ip/Restored-Apple-iPhone-14-Pro-Carrier-Unlocked-256GB-Silver-MQ0X3LL-A-Refurbished/1659086232?from=/search").get();
        return Double.parseDouble(doc.select("div > div > span.b.lh-copy.dark-gray.f1.mr2 > span.inline-flex.flex-column").text().substring(1));
    }
    @Test
    public void testDataAccuracy() throws IOException {
        // Assume 'expectedPrice' is the known correct price for comparison

        double expectedPrice = 729.95;
        double scrapedPrice = scrapePriceFromWebsite(); // Implement this method

        assertEquals("The scraped price should match the expected price", expectedPrice, scrapedPrice, 0.01);
    }
    @Test
    public void testProductPersistence() {
        // Create a new product instance
        Product product = new Product("iPhone", "image_url");
//        product.setProductId(1L);

        // Obtain a session and start a transaction
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            // Save the product to the database
            session.persist(product);
            transaction.commit();

            // Retrieve the product from the database
            Product savedProduct = session.get(Product.class, product.getProductId());
            Assert.assertNotNull(savedProduct);
            Assert.assertEquals("iPhone", savedProduct.getName());
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        }
    }
}
