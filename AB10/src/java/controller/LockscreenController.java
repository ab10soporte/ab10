package controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/lockscreen.htm")
public class LockscreenController {

    @RequestMapping(method = RequestMethod.GET)
    public String mostrarAlumno(Model m) {
        Date date = new Date();
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        String time = "Hora: " + hourFormat.format(date);

        m.addAttribute("time", time);

        return "user/lockscreen";
    }
}
