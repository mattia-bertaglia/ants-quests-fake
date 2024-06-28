package com.gol.javahome.hibernate.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.gol.javahome.hibernate.entities.Prodotto;
import java.util.List;


@Repository
public interface ProdottiRepository extends JpaRepository<Prodotto, Integer>{

    List<Prodotto> findByIdProdotto(Integer idProdotto);
    List<Prodotto> findByNome(String nome);
    List<Prodotto> findByCategoria(String categoria);
    List<Prodotto> findByColore(String colore);

}
