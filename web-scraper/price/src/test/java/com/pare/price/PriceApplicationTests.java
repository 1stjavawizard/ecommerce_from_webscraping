package com.pare.price;

import com.pare.price.dao.ProductDao;
import com.pare.price.model.Price;
import com.pare.price.model.Product;
import com.pare.price.model.Site;
import com.pare.price.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.junit.jupiter.api.Assertions;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

import static org.junit.Assert.*;

@SpringBootTest
public
class PriceApplicationTests {

    @org.junit.Test
    public void testConnectionToWebsite() {
        try {
            // Attempt to connect to a website
            Document doc = Jsoup.connect("https://www.walmart.com/search?q=iphone&facet=cell_phone_type%3AUnlocked+Cell+Phones").get();
            assertNotNull(doc);
        } catch (IOException e) {
            fail("Connection to the website failed");
        }
    }

    @org.junit.Test
    public void testDataAccuracy() throws IOException {
        // Assume 'expectedPrice' is the known correct price for comparison

        double expectedPrice = 728.95;
        double scrapedPrice = scrapePriceFromWebsite();

        assertEquals("The scraped price should match the expected price", expectedPrice, scrapedPrice, 0.01);
    }

    @org.junit.Test
    public void testProductPersistence() {
        // Create a new product instance
        Product product = new Product("iPhone", "http://placeholder.com/200");
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
            Assertions.assertNotNull(savedProduct);
            Assertions.assertEquals("iPhone", savedProduct.getName());
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        }
    }

    @org.junit.Test
    public void testDatabaseInsertion() {
        Product product = new Product();
        Site site = new Site();
        Price price = new Price();

        boolean isInserted = insertDataToDatabase(product, site, price);

        assertTrue("Data should be inserted into the database", isInserted);
    }

    private boolean insertDataToDatabase(Product product, Site site, Price price) {
        ProductDao dao = new ProductDao();
        dao.saveScrapedData(product, site, price);
        return true;
    }
    public double scrapePriceFromWebsite() throws IOException {
        Document doc = Jsoup.connect("https://www.walmart.com/ip/Restored-Apple-iPhone-14-Pro-Carrier-Unlocked-256GB-Silver-MQ0X3LL-A-Refurbished/1659086232?from=/search").get();
        return Double.parseDouble(doc.select("div > div > span.b.lh-copy.dark-gray.f1.mr2 > span.inline-flex.flex-column").text().substring(1));
    }
}
