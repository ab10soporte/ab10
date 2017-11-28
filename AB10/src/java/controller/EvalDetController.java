package controller;

import dao.EvalDao;
import dao.TavecDao;
import dao.UserDao;
import entity.Eval;
import entity.User;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import util.Util;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/evaldet.htm")
public class EvalDetController {

    @RequestMapping(method = RequestMethod.GET)
    public String getPage(Model model, @ModelAttribute("myModel") final HashMap myModel) {
        // Usuario logeado.
        User us = null;
        String mode = "";
        String legajo = "";
        EvalDao ed = null;
        Eval ev = null;
        ArrayList listEvalHechas = null;

        // Con esta variable pasa informacion llamandome de controlador a controlador.
        if (!myModel.isEmpty()) {
            us = (User) myModel.get("user");   
        }

        if (us != null) {
            // Si edito recupero todos los datos
            mode = (String) myModel.get("mode");
            if (mode.equals("edit")) {
                legajo = (String) myModel.get("legajo");
                ed = new EvalDao();
                ev = ed.getEvalByLegajo(legajo);

                // http://www.java2s.com/Tutorial/Java/0380__JSTL/UseForEachtoLoopThroughArrayList.htm
                listEvalHechas = findEvalHechas(legajo);
            }
            
            DateFormat dayFormat = new SimpleDateFormat("yyyy/MM/dd");

            // Cargo la informacion relevante que se va a dibujar en la jsp.
            model.addAttribute("userid", us.getId()); // Para mantenerlo en la pagina y pasarlo del get al post.
            model.addAttribute("headerUserName", us.getNombre());
            model.addAttribute("headerUserDate", dayFormat.format(us.getFecha()));
            model.addAttribute("mode", mode);
            model.addAttribute("eval", ev);
            model.addAttribute("legajo", legajo);
            model.addAttribute("listEvalHechas", listEvalHechas); // Para el segundo acordeon

            // Me falta cargar en el model los estudios que ya tengo para el usuario
            return "view/evaldet";
        } else {
            return "redirect:/login.htm";
        }
    }

    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String nextPage = "view/evaldet";

        // Ejemplos de validacion
        // http://html5facil.com/tutoriales/validacion-formularios-nativos-html5/
        UserDao ud = new UserDao();
        User us = ud.getUserById(Integer.parseInt(request.getParameter("userid")));
        HashMap hm = new HashMap();
        String action = request.getParameter("action");
        switch (action) {
            case "1": // Guardo los datos.
                String der = request.getParameter("der");
                String eva = request.getParameter("eva");
                String pac = request.getParameter("pac");
                String fecnacpac = request.getParameter("fecnacpac");
                String dni = request.getParameter("dni");
                String ocu = request.getParameter("ocu");
                String pro = request.getParameter("pro");
                String mano = request.getParameter("mano");
                String tel = request.getParameter("tel");
                String mai = request.getParameter("mai");
                String educ = request.getParameter("educ");
                String ealc = request.getParameter("ealc");
                // Antecentes patologicos.                
                String antpats = "";
                if (request.getParameter("antpat0") != null) {
                    antpats += "antpat0,";
                }
                if (request.getParameter("antpat1") != null) {
                    antpats += "antpat1,";
                }
                if (request.getParameter("antpat2") != null) {
                    antpats += "antpat2,";
                }
                if (request.getParameter("antpat3") != null) {
                    antpats += "antpat3,";
                }
                if (request.getParameter("antpat4") != null) {
                    antpats += "antpat4,";
                }
                if (request.getParameter("antpat5") != null) {
                    antpats += "antpat5,";
                }
                if (request.getParameter("antpat6") != null) {
                    antpats += "antpat6,";
                }
                if (request.getParameter("antpat7") != null) {
                    antpats += "antpat7,";
                }
                if (request.getParameter("antpat8") != null) {
                    antpats += "antpat8,";
                }
                if (request.getParameter("antpat9") != null) {
                    antpats += "antpat9,";
                }
                if (request.getParameter("antpat10") != null) {
                    antpats += "antpat10,";
                }
                if (request.getParameter("antpat11") != null) {
                    antpats += "antpat11,";
                }
                if (request.getParameter("antpat12") != null) {
                    antpats += "antpat12,";
                }
                if (request.getParameter("antpat13") != null) {
                    antpats += "antpat13,";
                }
                if (request.getParameter("antpat14") != null) {
                    antpats += "antpat14,";
                }
                if (request.getParameter("antpat15") != null) {
                    antpats += "antpat15,";
                }
                if (request.getParameter("antpat16") != null) {
                    antpats += "antpat16,";
                }
                if (request.getParameter("antpat17") != null) {
                    antpats += "antpat17,";
                }
                if (request.getParameter("antpat18") != null) {
                    antpats += "antpat18,";
                }
                if (request.getParameter("antpat19") != null) {
                    antpats += "antpat19,";
                }
                if (request.getParameter("antpat20") != null) {
                    antpats += "antpat20,";
                }
                if (request.getParameter("antpat21") != null) {
                    antpats += "antpat21,";
                }
                String fam = request.getParameter("fam");
                String habtoxs = "";
                if (request.getParameter("habtox0") != null) {
                    habtoxs += "habtox0,";
                }
                if (request.getParameter("habtox1") != null) {
                    habtoxs += "habtox1,";
                }
                if (request.getParameter("habtox2") != null) {
                    habtoxs += "habtox2,";
                }
                if (request.getParameter("habtox3") != null) {
                    habtoxs += "habtox3,";
                }
                if (request.getParameter("habtox4") != null) {
                    habtoxs += "habtox4,";
                }
                if (request.getParameter("habtox5") != null) {
                    habtoxs += "habtox5,";
                }
                if (request.getParameter("habtox6") != null) {
                    habtoxs += "habtox6,";
                }
                if (request.getParameter("habtox7") != null) {
                    habtoxs += "habtox7,";
                }
                if (request.getParameter("habtox8") != null) {
                    habtoxs += "habtox8,";
                }
                String enf = request.getParameter("enf");
                String his = request.getParameter("his");
                String sit = request.getParameter("sit");
                // Medicamentos
                String meds = "";
                if (request.getParameter("med0") != null) {
                    meds += "med0,";
                }
                if (request.getParameter("med1") != null) {
                    meds += "med1,";
                }
                if (request.getParameter("med2") != null) {
                    meds += "med2,";
                }
                if (request.getParameter("med3") != null) {
                    meds += "med3,";
                }
                if (request.getParameter("med4") != null) {
                    meds += "med4,";
                }
                if (request.getParameter("med5") != null) {
                    meds += "med5,";
                }
                if (request.getParameter("med6") != null) {
                    meds += "med6,";
                }
                if (request.getParameter("med7") != null) {
                    meds += "med7,";
                }
                if (request.getParameter("med8") != null) {
                    meds += "med8,";
                }
                String con = request.getParameter("con");

                DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                Date date = null;
                try {
                    date = formatter.parse(fecnacpac);
                } catch (Exception e) {
                }

                EvalDao ed = new EvalDao();
                Eval ev = null;
                String mode = request.getParameter("mode");
                String legajo = request.getParameter("legajo");
                if (mode.equals("new")){
                    ev = new Eval();                   
                    ev.setLegajo(Util.getRandomString(3));
                }else if (mode.equals("edit")){
                    ev = ed.getEvalByLegajo(legajo);
                }                                
                ev.setUserid(us.getId()); // Agrego el usuario a la prueba.
                ev.setFecha(new Timestamp(new Date().getTime()));
                ev.setDerivado(der);
                ev.setEvaluador(eva);
                ev.setPacnombre(pac);
                ev.setPacfecnac(new Timestamp(date.getTime()));
                ev.setPacdni(dni);
                ev.setOcupacion(ocu);
                ev.setProcedencia(pro);
                ev.setMano(Integer.parseInt(mano));
                ev.setPactel(tel);
                ev.setEmail(mai);
                ev.setEducacion(Integer.parseInt(educ));
                ev.setApatologicos(antpats);
                ev.setAfamiliares(fam);
                ev.setHtoxicos(habtoxs);
                ev.setAactual(enf);
                ev.setHclinica(his);
                ev.setSactual(sit);
                ev.setMedicacion(meds);
                ev.setConducta(con);
                ev.setEdualc(Integer.parseInt(ealc));
                ev.setEstado(1); // Pendiente                
                
                if (mode.equals("new")){
                    ed.save(ev);
                }else if (mode.equals("edit")){
                    ed.update(ev);
                }

                hm.put("user", us);
                redirectAttributes.addFlashAttribute("myModel", hm);
                nextPage = "redirect:/evalst.htm";
                
                 break;
            case "2":
                // Algun ejercicio
                break;
            default:

                break;
        }

        return nextPage;
    }

    private ArrayList findEvalHechas(String legajo) {
        // Me fijo en cada ejercicio si se hizo para este legajo.
        ArrayList result = new ArrayList();
        try {
            // Tavec.            
            if (new TavecDao().getTavecByLegajo(legajo) != null) {
                result.add(new HashMap().put("ej", "tavec"));
            }
            // El resto de los ejercicios
            
        } catch (Exception e) {
        }
        return result;
    }
}
