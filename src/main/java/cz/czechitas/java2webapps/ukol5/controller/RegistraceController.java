package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  @GetMapping("/")
  public String formular() {
    return "formular";
  }

  @PostMapping("") // cesta v prohližeči
  public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {

    if (bindingResult.hasErrors()) {
      return "/formular";
    }

    return new ModelAndView("/objednano")
            .addObject("name", form.getJmeno())
            .addObject("surname", form.getPrijmeni())
            .addObject("birthday",form.getDatumNarozeni())
            .addObject("gender", form.getPohlavi())
            .addObject("turnus",form.getTurnusKod())
            .addObject("parentEmail", form.getEmailRodice())
            .addObject("parentPhone", form.getTelefonRodice());
  }

}
