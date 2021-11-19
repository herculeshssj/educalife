package br.com.hslife.educalife.sample;

import java.math.BigInteger;

import org.openxava.jpa.XPersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.dao.ProcessoDAO;
import br.com.hslife.educalife.model.Processo;
import br.com.hslife.educalife.model.TipoProcesso;
import br.com.hslife.educalife.util.Util;

@Component
public class SampleProcesso implements ISample {

    @Autowired
    ProcessoDAO daoProcesso;

    @Override
    public void populaBase() {
        try {
            
            // Busca um tipo de processo
            BigInteger quantidadeTipoProcesso = daoProcesso.countTipoProcesso();
            System.out.println(quantidadeTipoProcesso);
            int indexTipo = Util.getRandomInt(quantidadeTipoProcesso.intValue());
            TipoProcesso tipoProcesso = daoProcesso.obterTipoProcessoPorIndice(indexTipo);
            System.out.println(tipoProcesso.getDescricao());

        } catch (Exception e) {
            XPersistence.rollback();
            e.printStackTrace();
        }
    }
}
