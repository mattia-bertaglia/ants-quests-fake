package com.gol.javahome.hibernate.services;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.gol.javahome.hibernate.entities.Utente;
import com.gol.javahome.hibernate.repositories.UtentiRepository;
@Service
public class UtentiHibService extends GenericHibService<Utente, Integer, UtentiRepository>{

    public UtentiHibService(UtentiRepository repository) {
        super(repository);
        
    }

    public List<Utente> findByNomeAndCognome(String nome, String cognome) {
        return getRepository().findByNomeAndCognome(nome, cognome);
    }

    List<Utente> findByMail(String mail) {
        return getRepository().findByMail(mail);
    }

    Utente findByNomeAndCognomeAndDataNascita(String nome, String cognome, Date dataNascita) {
        return getRepository().findByNomeAndCognomeAndDataNascita(nome, cognome, dataNascita);
    }
    
}
