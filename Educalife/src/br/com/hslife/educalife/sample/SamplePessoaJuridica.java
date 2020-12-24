package br.com.hslife.educalife.sample;

import java.util.List;

import org.openxava.jpa.XPersistence;

import br.com.hslife.educalife.enumeration.Uf;
import br.com.hslife.educalife.model.Endereco;
import br.com.hslife.educalife.model.PessoaJuridica;
import br.com.hslife.educalife.model.TipoLogradouro;
import br.com.hslife.educalife.patterns.Builder;
import br.com.hslife.educalife.util.CNPJGenerator;
import br.com.hslife.educalife.util.Util;

public class SamplePessoaJuridica {

    public static void populaPessoaJuridica() {
		try {

            /***  Popula a entidade Endereço para atribuir a PessoaJuridica ***/

            // Estado
            Uf[] estados = Uf.values();
            int indexEstado = Util.getRandomInt(27);

            // TipoLogradouro
            List<TipoLogradouro> tiposLogradouros = XPersistence.getManager()
                .createQuery("SELECT t FROM TipoLogradouro t", TipoLogradouro.class)
                .getResultList();

            int indexLogradouro = Util.getRandomInt(tiposLogradouros.size());
            TipoLogradouro tipoLogradouro = tiposLogradouros.get(indexLogradouro);

            // Endereço
            Builder<Endereco> enderecoBuilder = new Builder<>(new Endereco());
            Endereco endereco = enderecoBuilder
                .set("logradouro", Util.getRandomString())
                .set("bairro", Util.getRandomString().substring(0,8))
                .set("cidade", Util.getRandomString().substring(0,8))
                .set("cep", String.valueOf(Util.getRandomInt(99999999)))
                .set("numero", String.valueOf(Util.getRandomInt(9999)))
                .set("uf", estados[indexEstado])
                .set("tipoLogradouro", tipoLogradouro)
                .build();

            /***  Popula a tabela de pessoa jurídica ***/
            String nomeEmpresa = Util.getRandomString();
            Builder<PessoaJuridica> pessoaBuilder = new Builder<>(new PessoaJuridica());
            PessoaJuridica pessoa = pessoaBuilder
                .set("cnpj", CNPJGenerator.generateRandomFormatted())
                .set("razaoSocial", nomeEmpresa)
                .set("nomeFantasia", "Empresa " + nomeEmpresa.substring(0, 8))
                .set("endereco", endereco)
                .build();

            XPersistence.getManager().persist(pessoa);
            XPersistence.commit();

		} catch (Exception e) {
			XPersistence.rollback();
			e.printStackTrace();
		}
	}
}
