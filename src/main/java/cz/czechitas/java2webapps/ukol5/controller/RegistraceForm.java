package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.text.DateFormat;
import java.time.LocalDate;
import java.time.Period;

public class RegistraceForm {
    @NotBlank
    private String jmeno;
    @NotBlank
    private String prijmeni;
    @NotNull
    private LocalDate datumNarozeni;

    @NotBlank
    private String pohlavi;
    @NotBlank
    private String turnusKod;
    @Email
    private String emailRodice;
    private String telefonRodice;

    private int age;

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni = datumNarozeni;
    }

    public String getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(String pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnusKod() {
        return turnusKod;
    }

    public void setTurnusKod(String turnusKod) {
        this.turnusKod = turnusKod;
    }

    public String getEmailRodice() {
        return emailRodice;
    }

    public void setEmailRodice(String emailRodice) {
        this.emailRodice = emailRodice;
    }

    public String getTelefonRodice() {
        return telefonRodice;
    }

    public void setTelefonRodice(String telefonRodice) {
        this.telefonRodice = telefonRodice;
    }

    public int getAge() {
        LocalDate birthDate = getDatumNarozeni();
        if (birthDate != null) {
            Period period = birthDate.until(LocalDate.now());
            return period.getYears();
        } else {
            return 0;
        }
    }
}
