/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author Seba
 */
public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {

//            String hibernatePropsFilePath = "util/hibernate.cfg.xml";
//            File hibernatePropsFile = new File(hibernatePropsFilePath);
//
//            Configuration configuration = new Configuration();
//            configuration.configure(hibernatePropsFile);
//
//            StandardServiceRegistryBuilder serviceRegistryBuilder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
//
//            ServiceRegistry serviceRegistry = serviceRegistryBuilder.build();
//
//            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.                                   
//            sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
            sessionFactory = new AnnotationConfiguration().configure(
                    "/util/hibernateMySql.cfg.xml")
                    .buildSessionFactory();
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
