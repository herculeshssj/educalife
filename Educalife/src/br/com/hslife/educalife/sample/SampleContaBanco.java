package br.com.hslife.educalife.sample;

import java.math.BigInteger;
import java.util.List;

import org.openxava.jpa.XPersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.dao.BancoDAO;
import br.com.hslife.educalife.dao.PessoaFisicaDAO;
import br.com.hslife.educalife.model.Banco;
import br.com.hslife.educalife.model.ContaBanco;
import br.com.hslife.educalife.model.PessoaFisica;
import br.com.hslife.educalife.patterns.Builder;
import br.com.hslife.educalife.util.Util;

@Component
public class SampleContaBanco implements ISample {

    @Autowired
    PessoaFisicaDAO daoPessoaFisica;

    @Autowired
    BancoDAO daoBanco;
    
    public void populaBase() {

        try {

            // Busca uma pessoa física
            BigInteger quantidadePessoas = daoPessoaFisica.countPessoaFisica();
            int indexPessoa = Util.getRandomInt(quantidadePessoas.intValue());
            PessoaFisica pessoaFisica = daoPessoaFisica.obterPessoaFisicaPorIndice(indexPessoa);

            // Banco
            List<Banco> bancos = daoBanco.buscarTodos();
            int indexBanco = Util.getRandomInt(bancos.size());
            Banco banco = bancos.get(indexBanco);

			// Popula a tabela de dados bancários das pessoas físicas
            Builder<ContaBanco> contaBuilder = new Builder<>(new ContaBanco());
            ContaBanco contaBanco = contaBuilder
                .set("agencia", String.valueOf(Util.getRandomInt(9999) + "-" + Util.getRandomInt(9)))
                .set("numeroConta", String.valueOf(Util.getRandomInt(999999) + "-" + Util.getRandomInt(9)))
                .set("pessoaFisica", pessoaFisica)
                .set("banco", banco)
                .build();

            // Salva a conta bancária
            XPersistence.getManager().persist(contaBanco);
			XPersistence.commit();

		} catch (Exception e) {
			XPersistence.rollback();
			e.printStackTrace();
		}
    }
}
