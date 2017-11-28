/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package email;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import resource.Configuration;

/**
 *
 * @author Seba
 */
public class MailManager {

    private boolean proxyEnabled;
    private String proxyHost;
    private int proxyPort;

    private String mailSmtp;
    private int mailPort;
    private String mailUser;
    private String mailKey;
    private String to;
    private String subject;
    private String message;

    public MailManager(String to,
            String subject, String message) {
        this.to = to;
        this.subject = subject;
        this.message = message;

        loadConfiguration();
    }

    private void loadConfiguration() {
        try {
            proxyEnabled = Configuration.proxyEnabled;
            proxyHost = Configuration.proxyHost;
            proxyPort = Configuration.proxyPort;
            mailSmtp = Configuration.mailSmtp;
            mailPort = Configuration.mailPort;
            mailUser = Configuration.mailSoporteUser;
            mailKey = Configuration.mailSoporteKey;
        } catch (Exception ex) {

        }
    }

    private class autentificadorSMTP extends javax.mail.Authenticator {

        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(mailUser, mailKey);
        }
    }

    public void send() {
        new Thread() {
            public void run() {
                sendMail();
            }
        }.start();
    }

    protected void sendMail() {
        // Tuve que permitir que la cuenta de gmail permita aplicaciones menos seguras (Allow less secure apps: ON.)
        try {
            Properties props = new Properties();
            props.put("mail.smtp.user", mailUser);
            props.put("mail.smtp.host", mailSmtp);
            props.put("mail.smtp.port", mailPort);
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.socketFactory.port", mailPort);
            // Comente esta prop. put para evitar esta exepcion: javax.net.ssl.SSLException: Unrecognized SSL message, plaintext connection?
            // props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.socketFactory.fallback", "false");
            props.put("mail.smtp.ssl.enable", true);
            props.put("mail.transport.protocol", "smtp");

            if (proxyEnabled) {
                props.put("mail.smtp.socks.host", proxyHost);
                props.put("mail.smtp.socks.port", proxyPort);
            }

            @SuppressWarnings("unused")
            SecurityManager security = System.getSecurityManager();

            Authenticator auth = new autentificadorSMTP();
            Session session = Session.getInstance(props, auth);

            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(mailUser));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            msg.setSentDate(new Date());
            msg.setSubject(subject);
            // Text HTML inside to body: '<html><body><t1>OK</t1><div style='color:red;'>Testing ! ! !</div></body></html>'.
            if (Configuration.sendHTMLtext) {
                msg.setText(message, "utf-8", "html");
            } else {
                msg.setText(message);
            }

            Transport.send(msg);

            System.out.println("Send to " + to + " with subject " + subject
                    + " and message " + message);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
