package br.com.hslife.educalife.dao;

import java.math.BigInteger;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.PessoaJuridica;

@Component
public class PessoaJuridicaDAO {
    
    public BigInteger countPessoaJuridica() {
        Object quantidadeRegistros = XPersistence.getManager()
            .createNativeQuery("select count(id) from pessoa_juridica")
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

    public PessoaJuridica obterPessoaJuridicaPorIndice(int indice) {

        // Busca o ID da pessoa jurídica
        String idPessoaJuridica = (String)XPersistence.getManager()
            .createNativeQuery("select id from ( "
                + "select id, row_number() over (order by id) as indice from pessoa_juridica "
                + ") as temp_table "
                + "where indice = :indice")
            .setParameter("indice", indice)
            .getSingleResult();

        // Busca a pessoa juridica a partir do ID
        return XPersistence.getManager().find(PessoaJuridica.class, idPessoaJuridica);
    }
}
