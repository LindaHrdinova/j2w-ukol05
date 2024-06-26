package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
@RequestMapping("/")
public class RegistraceController {

    @GetMapping("/")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("/formular"); // cesta k /formular.ftlh
        modelAndView.addObject("form", new RegistraceForm());
        return modelAndView;
    }

    @PostMapping("/") // cesta v prohližeči
    public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {

        final int age = form.getAge();
        if(age < 9 || age > 16) {
            bindingResult.rejectValue("datumNarozeni", null, "Věk účastníka musí být mezi 9 a 15 lety.");
        }

        if (bindingResult.hasErrors()) {
            return "/formular";
        }

        return new ModelAndView("/objednano") // cesta k /objednano.ftlh
                .addObject("jmeno", form.getJmeno())
                .addObject("prijmeni", form.getPrijmeni())
                .addObject("datumNarozeni", form.getDatumNarozeni())
                .addObject("pohlavi", form.getPohlavi())
                .addObject("turnusKod", form.getTurnusKod())
                .addObject("emailRodice", form.getEmailRodice())
                .addObject("telefonRodice", form.getTelefonRodice());
    }
}
