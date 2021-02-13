package br.com.hslife.consultacep.repository;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.hslife.consultacep.entity.Cep;


public class CustomCepRepositoryImpl implements CustomCepRepository {

    @Autowired
    private EntityManager entityManager;

    @Override
    public Cep findRandomCep(int indice) {
        Cep resultado = (Cep)entityManager.createNativeQuery("select * from cep where id = :indice", Cep.class)
            .setParameter("indice", indice)
            .getSingleResult();

        return resultado;
    }
}
