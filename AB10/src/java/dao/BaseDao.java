/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author toledos
 */


public class BaseDao {

    private SessionFactory sf = null;
    private Session session = null;
    private Transaction tx = null;
//    private Event event = null;

    public void save(Object obj) {
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            session.save(obj);
            session.flush();
            tx.commit();

//            saveEvent("Guardar", obj);
        } catch (Exception ex) {
            ex.printStackTrace();
            tx.rollback();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    public void update(Object obj) {
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            session.update(obj);
            session.flush();
            tx.commit();

//            saveEvent("Modificar", obj);
        } catch (Exception ex) {
            ex.printStackTrace();
            tx.rollback();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    public void delete(Object obj) {
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            session.delete(obj);
            session.flush();
            tx.commit();

//            saveEvent("Borrar", obj);
        } catch (Exception ex) {
            ex.printStackTrace();
            tx.rollback();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

//    // Guarda todas las actualizaciones.
//    private void saveEvent(String method, Object object) {
//        // Option of sincronyzation
//        if (object instanceof Vehicle || object instanceof Company || object instanceof Emisor
//                || object instanceof CompanyPrice || object instanceof Cistern || object instanceof Fuel
//                || object instanceof InputFuel || object instanceof Peak) {
//            //Util.app.setEnabledSincroniza(true);
//        }
//
//        // Save all events.
//        boolean saveCurrentEvent = true;
//        if (object instanceof Event) {
//            saveCurrentEvent = false;
//        } else if (object instanceof DeviceSyncDao) {
//            saveCurrentEvent = false;
//        } else if (object instanceof Event) {
//            saveCurrentEvent = false;
//        }
//
//        if (saveCurrentEvent) {
//            String jsonObj = new Gson().toJson(object);
//            if (jsonObj.contains("\"del\":true")) {
//                method = "Borrar";
//            }
//            new EventDao().save(new Event(Application.userActual.getId(), new Date(),
//                    method, object.getClass().getSimpleName(), jsonObj, false));
//        }
//    }
}
