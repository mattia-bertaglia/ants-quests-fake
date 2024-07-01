package com.gol.javahome.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AppController {

    // prodotti divisi per ambiente casa
    @GetMapping("/prodotti")
    public String prodotti() {
        return "prodotti.html";
    }

    // redirect Utente per aggiungere prodotti/clienti+ lista clienti
    @GetMapping("/nuovo")
    public String nuovo() {
        return "nuovo.html";
    }
}
