package com.gol.javahome.hibernate.repositories;


import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.gol.javahome.hibernate.entities.Ordine;



@Repository
public interface OrdineRepository extends JpaRepository<Ordine, Integer> {



    List<Ordine> findByNome (String nome);
  



}
