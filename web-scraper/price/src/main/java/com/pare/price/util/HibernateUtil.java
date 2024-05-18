package com.pare.price.util;
import com.pare.price.model.Price;
import com.pare.price.model.Product;
import com.pare.price.model.Site;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.SessionFactory;

import java.util.Properties;

public class HibernateUtil {
    private static SessionFactory sessionFactory;

    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration();

                // Hibernate settings equivalent to hibernate.cfg.xml's properties
                Properties settings = new Properties();
                settings.put("hibernate.connection.DRIVER", "com.mysql.cj.jdbc.Driver");
                settings.put("hibernate.connection.url", "jdbc:mysql://localhost:3306/compare_db?useSSL=false");
                settings.put("hibernate.connection.USER", "root");
                settings.put("hibernate.connection.PASS", "");
                settings.put("hibernate.connection.SHOW_SQL", "true");
                settings.put("hibernate.connection.CURRENT_SESSION_CONTEXT_CLASS", "thread");
                settings.put("hibernate.connection.HBM2DDL_AUTO", "create-drop");

                configuration.setProperties(settings);
                configuration.addAnnotatedClass(Product.class);
                configuration.addAnnotatedClass(Site.class);
                configuration.addAnnotatedClass(Price.class);
                // Add other entity classes

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                        .applySettings(configuration.getProperties()).build();

                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return sessionFactory;
    }
}

