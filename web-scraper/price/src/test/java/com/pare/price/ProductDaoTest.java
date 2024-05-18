package com.pare.price;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.junit.Test;

import java.io.IOException;

import static org.junit.Assert.*;

public class ProductDaoTest {
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

        double expectedPrice = 729.90;
        double scrapedPrice = scrapePriceFromWebsite(); // Implement this method

        assertEquals("The scraped price should match the expected price", expectedPrice, scrapedPrice, 0.01);
    }
}
