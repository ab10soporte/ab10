package controller;

import dao.UserDao;
import email.MailManager;
import entity.User;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import resource.Configuration;

@Controller
@RequestMapping("/register.htm")
public class RegisterController {

    @RequestMapping(method = RequestMethod.GET)
    public String getPage(Model model, HttpServletRequest request, @ModelAttribute("myModel") final HashMap myModel) {

        // Para validar o denegar la solicitud (Fatima), ..register.htm?validate=623133789
        String validate = request.getParameter("validate");
        if (validate != null) {
            return validateUser(validate);
        }

        // Con esta variable pasa informacion llamandome de controlador a controlador.
        if (!myModel.isEmpty()) {
            String user = (String) myModel.get("user");
            // ACE ss = (ACE) myModel.get("data");
        }

        Date date = new Date();
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        String time = "Hora: " + hourFormat.format(date);

        model.addAttribute("time", time);

        return "user/register";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String nextPage = "user/register";
        String action = request.getParameter("action");
        switch (action) {
            case "1":
                String nombre = request.getParameter("nombre");
                String email = request.getParameter("email");
                String clave = request.getParameter("clave");
                String clave1 = request.getParameter("clave1");
                String termino = request.getParameter("termino");

                if (termino != null) {
                    if (!clave.isEmpty()) {
                        if (clave.equals(clave1)) {
                            // Guardo el registro en la DB.
                            UserDao ud = new UserDao();
                            User us = ud.getUserByEmail(email);
                            if (us == null) {
                                us = new User();
                                us.setNombre(nombre);
                                us.setEmail(email);
                                us.setClave(clave);
                                us.setFecha(new Timestamp(new Date().getTime()));
                                us.setActivo(false);
                                us.setEliminado(false);
                                ud.save(us);

                                // Genero el mail con la informacion detallada (a Fatima).
                                String message = "<html><body><h3>Solicitud de Registracion</h3><p>&emsp;<strong>Nombre completo: </strong>"
                                        + us.getNombre() + "</p><p>&emsp;<strong>Email: </strong>"
                                        + us.getEmail() + "</p><p>Para <i>validar</i> el pedido de solitud ir a este link</p>&emsp;&emsp;<a href='"
                                        + generateLinkUser(us.getId(), true) + "'>Aprobado</a><p>Para <i>denegar</i> el pedido de ir a este link</p>&emsp;&emsp;<a href='"
                                        + generateLinkUser(us.getId(), false) + "'>Denegado</a></body></html>";
                                new MailManager(Configuration.mailCuentasUser, "Solicitud de aporbacion de Usuario", message).send();

                                // Genero el mail para el usuario confirmando el pedido y explicandole que a la brevedad se le dara acceso.
                                message = "<html><body><h3>Solicitud de Registracion AB10</h3><p>" + us.getNombre() + ":</p><p>&emsp;Le damos la bienvenida al equipo de profecionales asociasdos, estamos procesando su solicitud, a la brevedad nos comunicaremos con usted.</p><p>&emsp;Saludos cordiales</p></body></html>";
                                new MailManager(us.getEmail(), "Registracion AB10", message).send();

                                model.addAttribute("messageOK", "Favor de corroborar su casilla de e-mail");
                                nextPage = "user/register";
                            } else {
                                model.addAttribute("message", "Esta cuenta de email ya fue registrada");
                                nextPage = "user/register";
                            }
                        } else {
                            model.addAttribute("message", "La claves son distintas");
                            model.addAttribute("nombre", nombre);
                            model.addAttribute("email", email);
                            nextPage = "user/register";
                        }
                    } else {
                        model.addAttribute("message", "La clave es requerida");
                        model.addAttribute("nombre", nombre);
                        model.addAttribute("email", email);
                        nextPage = "user/register";
                    }
                } else {
                    model.addAttribute("message", "Debe aceptar los terminos");
                    model.addAttribute("nombre", nombre);
                    model.addAttribute("email", email);
                    nextPage = "user/register";
                }
            case "2":
                break;
            default:
                System.out.println("Test");
                break;
        }
        return nextPage;
    }

    private String validateUser(String parameter) {
        String result = "user/registerfail";

        // Si cumple 62DJ28GF3 creo la base de datos
        // http://142.4.213.217:8080/AB10/register.htm?validate=62DJ28GF3
        if (parameter.equals("62DJ28GF3")) {
            String res = createSchema();
            if (res.isEmpty()) {
                result = "user/createschemaok.jsp?state=OK&exc=null";
            } else {
                result = "user/createschemaok.jsp?state=FAIL&exc=" + res;
            }
        } else { // Procedo de aprobacion o desaprobacion
            // Obtengo los datos utiles del parametro.
            String status = parameter.substring(3, 4);
            int userId = Integer.parseInt(parameter.substring(4, parameter.length() - 3));
            try {
                UserDao ud = new UserDao();
                User us = ud.getUserById(userId);
                if (status.equals("1")) {
                    if (us != null) {
                        us.setActivo(true);
                        ud.update(us);

                        // Aviso de aprobacion (a Fatima).
                        String message = "<html><body><h3>Solicitud de registracion Aprobada</h3><p>&emsp;<strong>Nombre completo: </strong>"
                                + us.getNombre() + "</p><p>&emsp;<strong>Email: </strong>"
                                + us.getEmail() + "</p></body></html>";
                        new MailManager(Configuration.mailCuentasUser, "Solicitud de registracion Aprobada", message).send();

                        // Aviso de aprobacion (a Usuario).
                        message = "<html><body><h3>Solicitud de Registracion AB10</h3><p>" + us.getNombre() + ":</p><p>&emsp;Por medio de la pecente le damos le infromamos que su solicituda a sido aprobada.</p><p>&emsp;Saludos cordiales</p></body></html>";
                        new MailManager(us.getEmail(), "Registracion AB10", message).send();
                    }
                    result = "user/registerok";
                } else {
                    // Solicitud rechazada (a Fatima).  
                    String message = "<html><body><h3>Solicitud de registracion Rechazada</h3><p>&emsp;<strong>Nombre completo: </strong>"
                            + us.getNombre() + "</p><p>&emsp;<strong>Email: </strong>"
                            + us.getEmail() + "</p></body></html>";
                    new MailManager(Configuration.mailCuentasUser, "Solicitud de registracion Rechazada", message).send();

                    // Solicitud rechazada (a Usuario).          
                    message = "<html><body><h3>Solicitud de Registracion AB10</h3><p>" + us.getNombre() + ":</p><p>&emsp;Por medio de la pecente le infromamos que para avanzar con la registracion necesitamos ...</p><p>&emsp;Puede ponerse en contacto con nosotros por medio de estos canales . . .</p><p>&emsp;Saludos cordiales</p></body></html>";
                    new MailManager(us.getEmail(), "Registracion AB10", message).send();
                }
            } catch (Exception e) {
                result = "user/registerfail";
            }
        }
        return result;
    }

    /*
        Genera una url ..register.htm?validate=623133789 donde
        - 623: Tres digitos generados, donde el primero siempre es 6 para evitar un 0
        - 1v0: 1 si se valida la registracion, 0 si no se valida.
        - 33: Id de usuario a validar
        - 789: Tres digitos generados
     */
    private String generateLinkUser(int userId, boolean registrationOk) {
        String result = "";
        try {
            String milli = String.valueOf(System.currentTimeMillis());
            milli = milli.substring(milli.length() - 2);
            result = Configuration.urlRegistration + "?validate=6" + milli;
            if (registrationOk) {
                result += "1";
            } else {
                result += "0";
            }
            result += userId;
            milli = String.valueOf(System.currentTimeMillis());
            milli = milli.substring(milli.length() - 3);
            result += milli;
        } catch (Exception e) {
        }
        return result;
    }

    private String createSchema() {
        String result = "";
        try {
            EntityManagerFactory emf = null;
            EntityManager em = null;

            emf = Persistence.createEntityManagerFactory("MySqlJPACreatorPU_PRO");
            em = emf.createEntityManager();
            emf.getProperties();

        } catch (Exception e) {
            //result = e.getMessage();
            Writer writer = new StringWriter();
            e.printStackTrace(new PrintWriter(writer));
            result = writer.toString();
        }
        return result;
    }
}
