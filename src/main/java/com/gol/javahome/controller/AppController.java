package com.gol.javahome.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gol.javahome.hibernate.entities.Utente;
import com.gol.javahome.hibernate.services.UtentiHibService;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class AppController {

   private final UtentiHibService utHibSrv;

    @GetMapping("/")
    public String getMethodName(Model model) {
        List <Utente> uts = utHibSrv.findAll();
        model.addAttribute("utente", uts.get(0));
        return "index";
    }
    

    

}