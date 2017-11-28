/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Tfv;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author Seba
 */
public class TfvDao extends BaseDao {

    private SessionFactory sf = null;
    private Session session = null;
    private Transaction tx = null;

    public List<Tfv> getTfvList() {
        List<Tfv> tavecList = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            tavecList = session.createQuery("from Tfv").list();
            tx.commit();
        } catch (Exception ex) {
            tx.rollback();
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return tavecList;
    }

    // http://howtodoinjava.com/hibernate/complete-hibernate-query-language-hql-tutorial/
    
    public Tfv getTfvByLegajo(String legajo) {
        Tfv result = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();

            String hql = "from Tfv where legajo='" + legajo + "'";
            Query query = session.createQuery(hql);
            query.setMaxResults(1);
            result = (Tfv) query.uniqueResult();

            tx.commit();
        } catch (Exception ex) {
            tx.rollback();
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return result;
    }
}
