package com.gol.javahome.hibernate.entities;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "prodotti")
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Prodotto extends GenericEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idProdotto;
    private String nome; 
    private String categoria;
    private double prezzo; 
    private int quantita;
    private String colore;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "ord_prod",joinColumns = @JoinColumn(name="ordine_id"),inverseJoinColumns = @JoinColumn(name="prodotto_id"))
    private List<Ordine> ordini;

}