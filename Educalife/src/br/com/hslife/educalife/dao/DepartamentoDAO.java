package br.com.hslife.educalife.dao;

import java.math.BigInteger;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.Departamento;

@Component
public class DepartamentoDAO {
    
    public BigInteger countDepartamento() {
        BigInteger quantidadeRegistros = (BigInteger)XPersistence.getManager()
            .createNativeQuery("select count(id) from departamento")
            .getSingleResult();

        if (quantidadeRegistros == null)
            return BigInteger.ZERO;

        return quantidadeRegistros;
    }

    public Departamento obterDepartamentoPorIndice(int indice) {

        // Busca o ID do departamento
        String idDepartamento = (String)XPersistence.getManager()
            .createNativeQuery("select id from ( "
                + "select id, row_number() over (order by id) as indice from departamento "
                + ") as temp_table "
                + "where indice = :indice")
            .setParameter("indice", indice)
            .getSingleResult();

        // Busca a pessoa física a partir do ID
        return XPersistence.getManager().find(Departamento.class, idDepartamento);
    }
}
