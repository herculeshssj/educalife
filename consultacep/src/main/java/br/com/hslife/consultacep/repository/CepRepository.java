package br.com.hslife.consultacep.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.hslife.consultacep.entity.Cep;

@Repository
public interface CepRepository extends JpaRepository<Cep, Long>, CustomCepRepository {
    
    public List<Cep> findByCep(int cep);
}
