package controller;

import dao.EvalDao;
import dao.TmtADao;
import dao.UserDao;
import entity.Eval;
import entity.TmtA;
import entity.User;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@RequestMapping("/tmta.htm")
public class TMTAController {

    @RequestMapping(method = RequestMethod.GET)
    public String getPage(Model model, @ModelAttribute("myModel") final HashMap myModel) {
        User us = null;
        List<Eval> evalList = null;

        // Con esta variable pasa informacion llamandome de controlador a controlador.
        if (!myModel.isEmpty()) {
            us = (User) myModel.get("user");
        }

        if (us != null) {
            // Cargo el como con los legajos del usuario.
            EvalDao ed = new EvalDao();
            evalList = ed.getEvalListByUserId(us.getId());

            DateFormat dayFormat = new SimpleDateFormat("yyyy/MM/dd");

            // Cargo la informacion relevante que se va a dibujar en la jsp.
            model.addAttribute("userid", us.getId()); // Para mantenerlo en la pagina y pasarlo del get al post.
            model.addAttribute("headerUserName", us.getNombre());
            model.addAttribute("headerUserDate", dayFormat.format(us.getFecha()));
            model.addAttribute("evalList", evalList);

            return "view/tmta";
        } else {
            return "redirect:/login.htm";
        }

        // return "view/tmta";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
         String nextPage = "view/tmta";

        UserDao ud = new UserDao();
        User us = ud.getUserById(Integer.parseInt(request.getParameter("userid")));
        HashMap hm = new HashMap();

        String action = request.getParameter("action");
        switch (action) {
            case "1":
                // Para test
                //RP_Tmtb rpt = new RP_Tmtb("123");
                //rpt.generateData();

                // Tomo los datos del request.
                String legajo = request.getParameter("legajo");
                if (!legajo.isEmpty()) {
                    legajo = legajo.substring(0, 3);
                }
                String ealc = request.getParameter("ealc");
                String ensa = request.getParameter("ensa");
                String prua = request.getParameter("prua");

                // Guardo el puntaje bruto en la DB.
                TmtADao td = new TmtADao();
                TmtA tmta;
                boolean edit = true;
                tmta = td.getTmtAByLegajo(legajo);
                if (tmta == null) {
                    tmta = new TmtA();
                    edit = false;
                }
                tmta.setLegajo(legajo);
                tmta.setFecha(new Timestamp(new Date().getTime()));
                tmta.setEalc(Integer.parseInt(ealc));
                tmta.setEnsayoa(Integer.parseInt(ensa));
                tmta.setPruebaa(Integer.parseInt(prua));

                if (edit) {
                    td.update(tmta);
                } else {
                    td.save(tmta);
                }

                // Vuelvo al listado de legajos
                hm.put("user", us);
                redirectAttributes.addFlashAttribute("myModel", hm);
                nextPage = "redirect:/evalst.htm";

                break;
            case "2":

                break;
            default:

                break;
        }
        
        return nextPage;
    }
}
