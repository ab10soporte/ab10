package controller;

import dao.EvalDao;
import dao.UserDao;
import entity.Eval;
import entity.User;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/evalst.htm")
public class EvalstController {

    @RequestMapping(method = RequestMethod.GET)
    public String getPage(Model model, @ModelAttribute("myModel") final HashMap myModel) {
        // Usuario logeado.
        User us = null;
        List<Eval> evalList = null;

        // Con esta variable pasa informacion llamandome de controlador a controlador.
        if (!myModel.isEmpty()) {
            us = (User) myModel.get("user");
        }

        if (us != null) {
            EvalDao ed = new EvalDao();
            evalList = ed.getEvalListByUserId(us.getId());
            
            DateFormat dayFormat = new SimpleDateFormat("yyyy/MM/dd");

            // Cargo la informacion relevante que se va a dibujar en la jsp.
            model.addAttribute("userid", us.getId()); // Para mantenerlo en la pagina y pasarlo del get al post.
            model.addAttribute("headerUserName", us.getNombre());
            model.addAttribute("headerUserDate", dayFormat.format(us.getFecha()));
            model.addAttribute("evalList", evalList);

            // Me falta cargar en el model los estudios que ya tengo para el usuario
            return "view/evalst";
        } else {
            return "redirect:/login.htm";
        }
    }

    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String nextPage = "view/evalst";

        UserDao ud = new UserDao();
        User us = ud.getUserById(Integer.parseInt(request.getParameter("userid")));
        HashMap hm = new HashMap();

        String action = request.getParameter("action");
        switch (action) {
            case "1": // call_evaldet
                hm.put("user", us);
                hm.put("mode", "new");
                redirectAttributes.addFlashAttribute("myModel", hm);
                nextPage = "redirect:/evaldet.htm";
                
                break;
            case "2": // editaction
                // Obtengo el legajo.
                String legajo = request.getParameter("legajo");
                hm.put("user", us);
                hm.put("mode", "edit");
                hm.put("legajo", legajo);
                redirectAttributes.addFlashAttribute("myModel", hm);
                nextPage = "redirect:/evaldet.htm";
                break;
            case "3":
                // Algun ejercicio
                break;
            case "4":
                // Algun ejercicio
                break;
            case "5":
                // Algun ejercicio
                break;
            default:

                break;
        }
        return nextPage;
    }
}
