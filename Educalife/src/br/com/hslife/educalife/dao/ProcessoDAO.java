package br.com.hslife.educalife.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.TipoProcesso;

@Component
public class ProcessoDAO {
    
    public BigInteger countTipoProcesso() {
        Object quantidadeRegistros = XPersistence.getManager()
            .createQuery("SELECT COUNT(tp) FROM TipoProcesso tp")
            .getSingleResult();
        

        if (quantidadeRegistros != null) {
            if (quantidadeRegistros instanceof Integer) {
                return BigInteger.valueOf((Integer)quantidadeRegistros);
            } else if (quantidadeRegistros instanceof BigInteger) {
                return (BigInteger)quantidadeRegistros;
            } else if (quantidadeRegistros instanceof Long) {
                return BigInteger.valueOf((Long)quantidadeRegistros);
            }
        }

        return BigInteger.ZERO;
    }

    public TipoProcesso obterTipoProcessoPorIndice(int indice) {

        // Busca os IDs
        List<String> ids = XPersistence.getManager()
            .createQuery("SELECT tp.id FROM TipoProcesso tp", String.class)
            .getResultList();

        // Recupera o id de acordo com o índice da lista
        String id = ids.get(indice - 1);

        // Recupera a entidade a partir do ID
        return XPersistence.getManager().find(TipoProcesso.class, id);
    }
}