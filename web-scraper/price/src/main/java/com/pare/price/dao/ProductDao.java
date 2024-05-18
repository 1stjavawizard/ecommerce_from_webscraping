package com.pare.price.dao;

import com.pare.price.model.Price;
import com.pare.price.model.Product;
import com.pare.price.model.Site;
import com.pare.price.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ProductDao {
    public void saveScrapedData(Product product, Site site, Price price) {
        Transaction transaction = null;

        if (product.getImage() != null && product.getImage().length() > 10) {
            try(Session session = HibernateUtil.getSessionFactory().openSession()) {
                // start a transaction
                transaction = session.beginTransaction();
                // save scraped product
                session.persist(product);
                // set product id in Price
                price.setProduct(product);
                // save scraped site
                session.persist(site);
                // set site id in price
                price.setSite(site);
                // save scraped price
                session.persist(price);
                // commit the transaction
                transaction.commit();
            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            }
        }
    }
    public List<Product> getProducts() {
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("from Product", Product.class).list();
        }
    }
}
