/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.User;
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
public class UserDao extends BaseDao {

    private SessionFactory sf = null;
    private Session session = null;
    private Transaction tx = null;

    public List<User> getUserList() {
        List<User> userList = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            userList = session.createQuery("from User").list();
            tx.commit();
        } catch (Exception ex) {
            tx.rollback();
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return userList;
    }

    public User getUserByEmail(String email) {
        User result = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();

            String hql = "from User where email='" + email + "'";
            Query query = session.createQuery(hql);
            query.setMaxResults(1);
            result = (User) query.uniqueResult();

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

    public User getUserById(int id) {
        User result = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();

            String hql = "from User where id=" + id;
            Query query = session.createQuery(hql);
            query.setMaxResults(1);
            result = (User) query.uniqueResult();

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
