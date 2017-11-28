package controller;

import dao.UserDao;
import entity.User;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/home.htm")
public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public String getPage(Model model, @ModelAttribute("myModel") final HashMap myModel) {
        // Usuario logeado.
        User us = null;

        // Con esta variable pasa informacion llamandome de controlador a controlador.
        if (!myModel.isEmpty()) {
            us = (User) myModel.get("user");
        }

        if (us != null) {
            DateFormat dayFormat = new SimpleDateFormat("yyyy/MM/dd");

            // Cargo la informacion relevante que se va a dibujar en la jsp.
            model.addAttribute("userid", us.getId()); // Para mantenerlo en la pagina y pasarlo del get al post.
            model.addAttribute("headerUserName", us.getNombre());
            model.addAttribute("headerUserDate", dayFormat.format(us.getFecha()));

            return "view/home";
        } else {
            return "redirect:/login.htm";
        }
    }

    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String nextPage = "user/home";

        UserDao ud = new UserDao();
        User us = ud.getUserById(Integer.parseInt(request.getParameter("userid")));
        HashMap hm = new HashMap();

        String action = request.getParameter("action");
        switch (action) {
            case "1": // call_evalst
                hm.put("user", us);
                redirectAttributes.addFlashAttribute("myModel", hm);
                nextPage = "redirect:/evalst.htm";                
                break;
            case "2":
                // Todos los ejercicios
                hm.put("user", us);
                redirectAttributes.addFlashAttribute("myModel", hm);
                nextPage = request.getParameter("nextpage");
                break;
            default:

                break;
        }

        return nextPage;

    }

    /*
    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        // Al menos la misma
        String nextPage = "user/home";
        String action = request.getParameter("action");
        switch (action) {
            case "1":
                // Tomo los datos del request.
                // String data = request.getParameter("data");

                // Si tengo que llamar a otra vista pasandole parametros.
                // HashMap myModel = new HashMap();
                // myModel.put("data", data);                        
                // redirectAttributes.addFlashAttribute("myModel", myModel);
                // nextPage =  "redirect:/patient.htm";                             
            case "2":
                // Si tengo que regresar validaciones a la pag que llamo.
                // model.addAttribute("message", "Usuario incorrecto");
                //    nextPage = "user/home";
                break;
            default:

                break;
        }

        return nextPage;

    }
     */
//    String getPage(ModelMap mav, HttpServletRequest request) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
}
