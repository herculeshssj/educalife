package br.com.hslife.educalife.dao;

import java.math.BigInteger;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.PessoaFisica;

@Component
public class PessoaFisicaDAO {
    
    public BigInteger countPessoaFisica() {
        Object quantidadeRegistros = XPersistence.getManager()
            .createNativeQuery("select count(id) from pessoa_fisica")
            .getSingleResult();

        if (quantidadeRegistros != null) {
            if (quantidadeRegistros instanceof Integer) {
                return BigInteger.valueOf((Integer)quantidadeRegistros);
            } else if (quantidadeRegistros instanceof BigInteger) {
                return (BigInteger)quantidadeRegistros;
            }
        }

        return BigInteger.ZERO;
    }

    public PessoaFisica obterPessoaFisicaPorIndice(int indice) {

        // Busca o ID da pessoa física
        String idPessoaFisica = (String)XPersistence.getManager()
            .createNativeQuery("select id from ( "
                + "select id, row_number() over (order by id) as indice from pessoa_fisica "
                + ") as temp_table "
                + "where indice = :indice")
            .setParameter("indice", indice)
            .getSingleResult();

        // Busca a pessoa física a partir do ID
        return XPersistence.getManager().find(PessoaFisica.class, idPessoaFisica);
    }
}
