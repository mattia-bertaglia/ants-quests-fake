package com.gol.javahome.hibernate.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "ord_prod")
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class OrdProd extends GenericEntity {

    
    
    @Column(name="ordine_id")
    private Integer ordineId;
    @Column(name="prodotto_id")
    private Integer oprodottoId;
     
    

}

