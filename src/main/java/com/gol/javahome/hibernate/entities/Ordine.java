package com.gol.javahome.hibernate.entities;
import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "ordini")
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Ordine extends GenericEntity{


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_ordine; 
    private  Date ordine;
    private int quantita;
    private int totale;
    private Integer utente_id;
}
