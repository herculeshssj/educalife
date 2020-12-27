package br.com.hslife.educalife.dao;

import java.math.BigInteger;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

@Component
public class ContratoDAO {
    
    public BigInteger countContratoPorAno(int ano) {
        BigInteger quantidadeRegistros = (BigInteger)XPersistence.getManager()
            .createNativeQuery("select count(id) from contrato where numero_contrato like '" + ano + ".%'")
            .getSingleResult();

        if (quantidadeRegistros == null)
            return BigInteger.ZERO;

        return quantidadeRegistros;
    }
}
