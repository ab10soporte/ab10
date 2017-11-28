package controller;

import dao.UserDao;
import entity.User;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/login.htm")
public class LoginController {

    @RequestMapping(method = RequestMethod.GET)
    public String getPage(Model model, @ModelAttribute("myModel") final HashMap myModel) {
        // Con esta variable pasa informacion llamandome de controlador a controlador.
        if (!myModel.isEmpty()) {
            // String user = (String) myModel.get("user");            
        }

        // Proceso los datos del negocio, necesario.
        Date date = new Date();
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        String time = "Hora: " + hourFormat.format(date);

        // Cargo la informacion relevante que se va a dibujar en la jsp.
        model.addAttribute("time", time);

        return "user/login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String nextPage = "user/login";
        String action = request.getParameter("action");
        switch (action) {
            case "1":
                String email = request.getParameter("email");
                String password = request.getParameter("password");

                // Recupero el usuario.
                UserDao ud = new UserDao();
                User us = ud.getUserByEmail(email);
                if (us != null) {
                    if (us.isActivo()) {
                        if (password.equals(us.getClave())) {
                            // ModelMap mav = new ModelMap();
                            // mav.addAttribute("user", us);
                            // return new HomeController().getPage( mav, request);

                            HashMap hm = new HashMap();
                            hm.put("user", us);
                            redirectAttributes.addFlashAttribute("myModel", hm);
                            nextPage = "redirect:/home.htm";
                        } else {
                            model.addAttribute("message", "Clave incorrecta");
                            nextPage = "user/login";
                        }
                    } else {
                        model.addAttribute("message", "Usuario deshabilitado");
                        nextPage = "user/login";
                    }
                } else {
                    model.addAttribute("message", "Usuario incorrecto");
                    nextPage = "user/login";
                }                
            case "2":
                break;
            default:
                System.out.println("Test");
                break;
        }

        return nextPage;

    }

    /*
    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String nextPage = "user/login";
        String action = request.getParameter("action");
        switch (action) {
            case "1":
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                
                if (email.equals("seba-toledo@hotmail.com")) {
                    if (password.equals("12345")) {
                        //nextPage =  "redirect:/home.htm?d1=1&d2=2";

                        // ModelMap mav = new ModelMap();
                        // mav.addAttribute("d1", "1111");
                        // return new HomeController().getPage( mav, request);
                        // Para esto el controller del home
                        // public String getPage(ModelMap m, HttpServletRequest request) {
//                        ACE ace = new ACE();
//                        ace.setId((long) 12345);
//                        HashMap hm = new HashMap();
//                        hm.put("user", "seba");
//                        hm.put("data", ace);
//                        redirectAttributes.addFlashAttribute("myModel", hm);
//                        nextPage = "redirect:/home.htm";
                    } else {
                        model.addAttribute("message", "Clave incorrecta");
                        nextPage = "user/login";
                    }
                } else {
                    model.addAttribute("message", "Usuario incorrecto");
                    nextPage = "user/login";
                }
            case "2":
                break;
            default:
                System.out.println("Test");
                break;
        }

        return nextPage;

    }
     */
}
