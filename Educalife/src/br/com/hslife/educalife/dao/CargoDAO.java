package br.com.hslife.educalife.dao;

import java.math.BigInteger;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.Cargo;

@Component
public class CargoDAO {
    
    public BigInteger countCargo() {
        Object quantidadeRegistros = XPersistence.getManager()
            .createNativeQuery("select count(id) from cargo")
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

    public Cargo obterCargoPorIndice(int indice) {

        // Busca o ID do cargo
        String idCargo = (String)XPersistence.getManager()
            .createNativeQuery("select id from ( "
                + "select id, row_number() over (order by id) as indice from cargo "
                + ") as temp_table "
                + "where indice = :indice")
            .setParameter("indice", indice)
            .getSingleResult();

        // Busca a pessoa física a partir do ID
        return XPersistence.getManager().find(Cargo.class, idCargo);
    }
}
