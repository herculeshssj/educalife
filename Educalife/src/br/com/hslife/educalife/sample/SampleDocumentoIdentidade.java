package br.com.hslife.educalife.sample;

import java.math.BigInteger;
import java.time.LocalDate;

import org.openxava.jpa.XPersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.dao.PessoaFisicaDAO;
import br.com.hslife.educalife.enumeration.TipoIdentidade;
import br.com.hslife.educalife.model.DocumentoIdentidade;
import br.com.hslife.educalife.model.PessoaFisica;
import br.com.hslife.educalife.patterns.Builder;
import br.com.hslife.educalife.util.Util;

@Component
public class SampleDocumentoIdentidade implements ISample {

    @Autowired
    PessoaFisicaDAO daoPessoaFisica;
    
    public void populaBase() {

        try {

            // Busca uma pessoa física
            BigInteger quantidadePessoas = daoPessoaFisica.countPessoaFisica();
            int indexPessoa = Util.getRandomInt(quantidadePessoas.intValue());
            PessoaFisica pessoaFisica = daoPessoaFisica.obterPessoaFisicaPorIndice(indexPessoa);

            // TipoIdentidade
            TipoIdentidade[] tiposIdentidade = TipoIdentidade.values();
            int indexTipo = Util.getRandomInt(tiposIdentidade.length);

			// Popula a tabela de documentos de identidade das pessoas físicas
            Builder<DocumentoIdentidade> documentoBuilder = new Builder<>(new DocumentoIdentidade());
            DocumentoIdentidade documentoIdentidade = documentoBuilder
                .set("tipoIdentidade", tiposIdentidade[indexTipo])
                .set("numero", String.valueOf(Util.getRandomInt(999999) + "-" + Util.getRandomInt(9)))
                .set("orgaoExpedidor", Util.getRandomString().substring(0,8))
                .set("dataExpedicao", LocalDate.now())
                .set("pessoaFisica", pessoaFisica)
                .build();

            // Salva a conta bancária
            XPersistence.getManager().persist(documentoIdentidade);
			XPersistence.commit();

		} catch (Exception e) {
			XPersistence.rollback();
			e.printStackTrace();
		}
    }
}
