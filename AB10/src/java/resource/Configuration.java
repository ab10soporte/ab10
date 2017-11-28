/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

/**
 *
 * @author Seba
 */
public class Configuration {
    // URL de Deploy.
    public static String urlDeploy = "http://142.4.213.217:8080/";
    //public static String urlDeploy = "http://localhost:8084/";
    
    // URL apend to registration.
    public static String urlRegistration = urlDeploy + "AB10/register.htm";
    
    // GMail configuration.
    public static boolean proxyEnabled = false;
    public static String proxyHost = "";
    public static int proxyPort = 0;
    public static String mailSmtp = "smtp.gmail.com";
    public static int mailPort = 465;
    public static boolean sendHTMLtext = true;
    
    // GMail account Gestion (MercadoPago).
    public static String mailGestionUser = "ab10gestion@gmail.com";
    private static String mailGestionKey= "ab10gestion123456789";
    
    // GMail account Cuentas (Fatima o a quien valide los nuevos usuarios).
    public static String mailCuentasUser = "ab10cuentas@gmail.com";
    private static String mailCuentastKey= "ab10cuentas123456789";
    
    // GMail account Soporte (La usa el sistema para enviar).
    public static String mailSoporteUser = "ab10soporte@gmail.com";
    public static String mailSoporteKey = "sistemaab10";
    
    

}
