package com.gol.javahome.hibernate.entities;
import jakarta.persistence.Entity;
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


    private int id_ordine; 
    private int data_ordine;
    private int quantita;
    private int totale;
    private int utente_id;
}
