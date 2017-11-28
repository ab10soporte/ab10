/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Eval;
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
public class EvalDao extends BaseDao {

    private SessionFactory sf = null;
    private Session session = null;
    private Transaction tx = null;

    public List<Eval> getEvalList() {
        List<Eval> userList = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            userList = session.createQuery("from Eval").list();
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

    public List<Eval> getEvalListByUserId(int userId) {
        List<Eval> evalList = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            evalList = session.createQuery("from Eval where userid=" + userId + " and eliminado = 0").list();
            tx.commit();
        } catch (Exception ex) {
            tx.rollback();
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return evalList;
    }

    public Eval getEvalByLegajo(String legajo) {
        Eval result = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();

            String hql = "from Eval where legajo='" + legajo + "'";
            Query query = session.createQuery(hql);
            query.setMaxResults(1);
            result = (Eval) query.uniqueResult();

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

    public Eval getEvalById(int id) {
        Eval result = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();

            String hql = "from Eval where id=" + id;
            Query query = session.createQuery(hql);
            query.setMaxResults(1);
            result = (Eval) query.uniqueResult();

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
