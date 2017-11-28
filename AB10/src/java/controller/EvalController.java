package controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/eval.htm")
public class EvalController {

    @RequestMapping(method = RequestMethod.GET)
    public String getPage(Model model, @ModelAttribute("myModel") final HashMap myModel) {
        // Con esta variable pasa informacion llamandome de controlador a controlador.
        if (!myModel.isEmpty()) {
            String s = (String) myModel.get("user");
            //ACE ss = (ACE) myModel.get("data");
        }

        // Proceso los datos del negocio, necesario.
        Date date = new Date();
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        String time = "Hora: " + hourFormat.format(date);

        // Cargo la informacion relevante que se va a dibujar en la jsp.
        model.addAttribute("time", time);

        return "view/eval";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String postPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        // Al menos la misma
        String nextPage = "view/eval";
        String action = request.getParameter("action");
        switch (action) {
            case "1":
                // Tomo los datos del request.
                String cro2 = request.getParameter("cro1");
                String cro2ob = request.getParameter("cro1ob");
                cro2ob = request.getParameter("cro1ob");

                // Get the values of all request parameters
                Enumeration en = request.getParameterNames();
                for (; en.hasMoreElements();) {
                    // Get the name of the request parameter
                    String name = (String) en.nextElement();
                    System.out.println("Parameter name: " + name);

                    // Get the value of the request parameter
                    String value = request.getParameter(name);
                    System.out.println("Parameter value: " + value);

                    // If the request parameter can appear more than once in the query string, get all values
                    String[] values = request.getParameterValues(name);

                    for (int i = 0; i < values.length; i++) {
                        System.out.println("    " + values[i]);
                    }
                }

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
