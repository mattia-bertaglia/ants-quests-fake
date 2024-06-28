package com.gol.javahome.hibernate.repositories;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gol.javahome.hibernate.entities.Utente;

public interface UtentiRepository extends JpaRepository<Utente,Integer> {

    List<Utente> findByNomeAndCognome(String nome, String cognome);

    List<Utente> findByEmail(String email);

    Utente findByNomeAndCognomeAndDataNascita(String nome, String cognome, Date dataNascita);
    
}
