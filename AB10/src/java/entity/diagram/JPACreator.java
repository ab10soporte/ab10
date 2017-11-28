/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.diagram;

import email.MailManager;
import java.util.Random;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import resource.Configuration;

/**
 *
 * @author Seba
 */
public class JPACreator {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Descomentar para testing.
       //testing();

        EntityManagerFactory emf = null;
        EntityManager em = null;
        try {
            /*
            Para poner la enbebida
            
            Map properties = new HashMap();

            // Configure the internal EclipseLink connection pool
            properties.put(JDBC_DRIVER, "oracle.jdbc.OracleDriver");
            properties.put(JDBC_URL, "jdbc:oracle:thin:@localhost:1521:ORCL");
            properties.put(JDBC_USER, "user-name");
            properties.put(JDBC_PASSWORD, "password");

            Persistence.createEntityManagerFactory("unit-name", properties);
             */

            emf = Persistence.createEntityManagerFactory("MySqlJPACreatorPU");
            em = emf.createEntityManager();
            emf.getProperties();

            System.out.println("EntityManager Created: " + emf);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void testing() {
        System.out.println("Start testing ...");
        
        //test01();
        test02();

        System.out.println("Finish testing ...");
        System.exit(0);
    }

    private static void test01() {
        MailManager ml = new MailManager(Configuration.mailCuentasUser, "Testing", "<html><body><t1>OK</t1><div style='color:red;'>Testing ! ! !</div></body></html>");
        ml.send();
        System.out.println("Envio el mail");
    }
    
    private static void test02(){
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
        System.out.println(getSaltString(3));
    }
    
    protected static String getSaltString(int dataLength) {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < dataLength) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }
}
