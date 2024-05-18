package com.pare.price.util;

import com.pare.price.model.ScrapedData;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.net.*;
import java.util.ArrayList;
import java.util.List;

import static java.lang.Math.min;

public class WebScraper {
    public List<ScrapedData> scrape(String url) throws IOException {
        URL obj = new URL(url);
        String domain = obj.getHost();
        // download target website
        System.out.println("working");
        Document doc = Jsoup.connect(url).userAgent("Mozilla/5.0").timeout(10000).get();
        List<ScrapedData> scrapedList = new ArrayList<>();
        if (domain.contains("aliexpress")){
        // Selecting product elements
        Elements productElements = doc.select(".search-item-card-wrapper-gallery");
        for (Element element : productElements) {
            String name = element.getElementsByAttribute("title").text().replace("Original", "").replace("Genuine", "").replace(
                    "cellphone", "").trim().substring(0, 50);
            String image = "https:" + element.select(".product-img").attr("src");
            String price = element.getElementsByAttributeValueContaining("class", "multi--price-sale").text();

            // store scraped data
            ScrapedData scrapedData = new ScrapedData(name, "aliexpress", url, price, image);
            scrapedList.add(scrapedData);
            }
        }
        else if (domain.contains("argos")){
            // Selecting product elements
            Elements productElements = doc.getElementsByClass("styles__LazyHydrateCard-sc-1rzb1sn-0 gZxiHo xs-6--none sm-4");
            for (Element element : productElements) {
                // extract product elements
                String name = element.getElementsByAttributeValueContaining("class", "Title").text().replace("Original", "").replace("Genuine", "").replace(
                        "cellphone", "").trim();
                name = name.substring(0, min(99, name.length()));
                String image = "https:" + element.select("img").attr("src");
                String price = element.getElementsByAttributeValueContaining("class", "ProductCardstyles__PriceText").text();

                // store scraped data
                ScrapedData scrapedData = new ScrapedData(name, "argos", url, price, image);
                scrapedList.add(scrapedData);
            }
        }
        else if (domain.contains("ebay")){
            // Selecting product elements
            Elements productElements = doc.getElementsByClass("s-item s-item--large");
            for (Element element : productElements) {
                // extract product elements
                String name = element.select("h3.s-item__title").text().replace("Original", "").replace("Genuine", "").replace(
                        "cellphone", "").trim();
                name = name.substring(0, min(99, name.length()));
                String image = element.select("img").attr("src");
                String price = element.select(".s-item__price").text().split(" ")[0];

                // store scraped data
                ScrapedData scrapedData = new ScrapedData(name, "ebay", url, price, image);
                scrapedList.add(scrapedData);
            }
        }
        else if (domain.contains("amazon")) {
            // Selecting product elements
            Elements productElements = doc.getElementsByClass("s-main-slot s-result-list s-search-results sg-row");
            for (Element element : productElements) {
                // extract product elements
                String name = element.select("span.a-size-medium.a-color-base.a-text-normal").text().replace("Original", "").replace("Genuine", "").replace(
                        "cellphone", "").trim();
                name = name.substring(0, min(99, name.length()));
                String image = element.select("img.s-image").attr("src");
                String price = element.select("span.a-price > span.a-offscreen").text().split(" ")[0];

                // store scraped data
                ScrapedData scrapedData = new ScrapedData(name, "amazon", url, price, image);
                scrapedList.add(scrapedData);
            }
        }
        else if (domain.contains("walmart")) {
            // Selecting product elements
            Elements productElements = doc.getElementsByClass("mb0 ph1 pa0-xl bb b--near-white w-25");
            for (Element element : productElements) {
                // extract product elements
                String name = element.select("span.a-size-medium.a-color-base.a-text-normal").text().replace("Original", "").replace("Genuine", "").replace(
                        "cellphone", "").trim();
                name = name.substring(0, min(99, name.length()));
                String image = element.select("#is-0-productImage-1").attr("src");
                String price = element.select("div.flex.flex-wrap.justify-start.items-center.lh-title.mb1.mb0 > div").text().split(" ")[0];

                // store scraped data
                ScrapedData scrapedData = new ScrapedData(name, "walmart", url, price, image);
                scrapedList.add(scrapedData);
            }
        }
        return scrapedList;
    }
}
