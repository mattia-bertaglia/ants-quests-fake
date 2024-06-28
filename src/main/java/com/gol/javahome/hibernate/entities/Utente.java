package com.gol.javahome.hibernate.entities;

import java.sql.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "utenti")
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Utente extends GenericEntity {

    
    @Id    
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_utente")
    private Integer idUtente;
    private String nome;
    private String cognome;    
    private String username;
    private String password;
    private String ruolo;
    private String mail;
    private String indirizzo;  
    private Date dataNascita; 
    
   @OneToMany(fetch = FetchType.EAGER)
   @JoinColumn(name= "ordini")
   private List<Ordine> ordini;


}
