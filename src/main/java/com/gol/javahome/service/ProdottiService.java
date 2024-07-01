package com.gol.javahome.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.gol.javahome.hibernate.services.ProdottiHibService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProdottiService {

    private final ProdottiHibService prodHibSrv;

    public void tuttiProdotti(Model model) {
        model.addAttribute("listaProdotti", prodHibSrv.findAll());
    }

    public void findProdSpecial(Model model) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'findProdSpecial'");
    }

}
