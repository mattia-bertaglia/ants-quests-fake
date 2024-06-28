package com.gol.javahome.hibernate.services;

import java.util.List;
import org.springframework.stereotype.Service;
import com.gol.javahome.hibernate.entities.Prodotto;
import com.gol.javahome.hibernate.repositories.ProdottiRepository;

@Service
public class ProdottiHibService extends GenericHibService<Prodotto, Integer, ProdottiRepository> {

    public ProdottiHibService(ProdottiRepository repository) {
        super(repository);
    }

    List<Prodotto> findByNome(String nome){
        return getRepository().findByNome(nome);
    }

    List<Prodotto> findByCategoria(String categoria){
        return getRepository().findByCategoria(categoria);
    }

    List<Prodotto> findByColore(String colore){
        return getRepository().findByColore(colore);
    }

    List<Prodotto> findByQuantita(int quantita){
        return getRepository().findByQuantita(quantita);
    }

}
