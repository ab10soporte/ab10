package controller;

import dao.EvalDao;
import dao.TavecDao;
import dao.UserDao;
import entity.Eval;
import entity.Tavec;
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
import report.detail.RP_Tavec;

@Controller
@RequestMapping("/tavec.htm")
public class TavecController {
    
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
            
            return "view/tavec";
        } else {
            return "redirect:/login.htm";
        }
        
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String nextPage = "view/tavec";
        
        UserDao ud = new UserDao();
        User us = ud.getUserById(Integer.parseInt(request.getParameter("userid")));
        HashMap hm = new HashMap();
        
        String action = request.getParameter("action");
        switch (action) {
            case "1":
                // Para test
                //RP_Tavec rpt = new RP_Tavec("123");
                //rpt.generateData();

                // Tomo los datos del request.
                String legajo = request.getParameter("legajo");
                if (!legajo.isEmpty()) {
                    legajo = legajo.substring(0, 3);
                }
                String _01RIA1 = request.getParameter("01RIA1");
                String _02RIA5 = request.getParameter("02RIA5");
                String _03RIAT = request.getParameter("03RIAT");
                String _04RIB = request.getParameter("04RIB");
                String _08RLCP = request.getParameter("08RLCP");
                String _09RCICP = request.getParameter("09RCICP");
                String _10RLLP = request.getParameter("10RLLP");
                String _11RCILP = request.getParameter("11RCILP");
                String _20P = request.getParameter("20P");
                String _21IRL = request.getParameter("21IRL");
                String _22IRCI = request.getParameter("22IRCI");
                String _23RecAc = request.getParameter("23RecAc");
                String _24FP = request.getParameter("24FP");
                String _25Discrim = request.getParameter("25Discrim");

                // Guardo el puntaje bruto en la DB.
                TavecDao td = new TavecDao();
                Tavec tav;
                boolean edit = true;
                tav = td.getTavecByLegajo(legajo);
                if (tav == null) {
                    tav = new Tavec();
                    edit = false;
                }
                tav.setLegajo(legajo);
                tav.setFecha(new Timestamp(new Date().getTime()));
                tav.setD01RIA1(Integer.parseInt(_01RIA1));
                tav.setD02RIA5(Integer.parseInt(_02RIA5));
                tav.setD03RIAT(Integer.parseInt(_03RIAT));
                tav.setD04RIB(Integer.parseInt(_04RIB));
                tav.setD08RLCP(Integer.parseInt(_08RLCP));
                tav.setD09RCICP(Integer.parseInt(_09RCICP));
                tav.setD10RLLP(Integer.parseInt(_10RLLP));
                tav.setD11RCILP(Integer.parseInt(_11RCILP));
                tav.setD20P(Integer.parseInt(_20P));
                tav.setD21IRL(Integer.parseInt(_21IRL));
                tav.setD22IRCI(Integer.parseInt(_22IRCI));
                tav.setD23RecAc(Integer.parseInt(_23RecAc));
                tav.setD24FP(Integer.parseInt(_24FP));
                tav.setD25Discrim(Integer.parseInt(_25Discrim));
                if (edit) {
                    td.update(tav);
                } else {
                    td.save(tav);
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
