package controller;

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
@RequestMapping("/wais.htm")
public class WaisController {

    @RequestMapping(method = RequestMethod.GET)
    public String getPage(Model model, @ModelAttribute("myModel") final HashMap myModel) {
        // Con esta variable pasa informacion llamandome de controlador a controlador.
        if (!myModel.isEmpty()) {
            String s = (String) myModel.get("user");
//            ACE ss = (ACE) myModel.get("data");
        }

        // Proceso los datos del negocio, necesario.
        Date date = new Date();
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        String time = "Hora: " + hourFormat.format(date);

        // Cargo la informacion relevante que se va a dibujar en la jsp.
        model.addAttribute("time", time);

        return "view/wais";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        // Al menos la misma
        String nextPage = "user/wais";
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
}
