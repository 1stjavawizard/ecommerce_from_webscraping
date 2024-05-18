package com.pare.price.dao;

import com.pare.price.model.Difference;
import com.pare.price.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class DifferenceDao {
    public void saveDifference(Difference difference) {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            session.persist(difference);
            // commit the transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
    public List<Difference> getDifferences() {
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("from Difference", Difference.class).list();
        }
    }
}
