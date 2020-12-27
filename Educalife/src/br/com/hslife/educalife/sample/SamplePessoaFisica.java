package br.com.hslife.educalife.sample;

import java.time.LocalDate;
import java.util.List;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.enumeration.TipoSanguineo;
import br.com.hslife.educalife.enumeration.Uf;
import br.com.hslife.educalife.model.Deficiencia;
import br.com.hslife.educalife.model.Endereco;
import br.com.hslife.educalife.model.Escolaridade;
import br.com.hslife.educalife.model.EstadoCivil;
import br.com.hslife.educalife.model.Etnia;
import br.com.hslife.educalife.model.Genero;
import br.com.hslife.educalife.model.Pais;
import br.com.hslife.educalife.model.PessoaFisica;
import br.com.hslife.educalife.model.TipoLogradouro;
import br.com.hslife.educalife.patterns.Builder;
import br.com.hslife.educalife.util.CPFGenerator;
import br.com.hslife.educalife.util.Util;

@Component
public class SamplePessoaFisica implements ISample {
    
    public void populaBase() {
		try {

            /***  Popula a entidade Endereço para atribuir a PessoaFisica ***/

            // Estado
            Uf[] estados = Uf.values();
            int indexEstado = Util.getRandomInt(estados.length);

            // TipoSanguineo
            TipoSanguineo[] tiposSangue = TipoSanguineo.values();
            int indexSangue = Util.getRandomInt(tiposSangue.length);

            // TipoLogradouro
            List<TipoLogradouro> tiposLogradouros = XPersistence.getManager()
                .createQuery("SELECT t FROM TipoLogradouro t", TipoLogradouro.class)
                .getResultList();

            int indexLogradouro = Util.getRandomInt(tiposLogradouros.size());
            TipoLogradouro tipoLogradouro = tiposLogradouros.get(indexLogradouro);

            // EstadoCivil
            List<EstadoCivil> estadosCivis = XPersistence.getManager()
                .createQuery("SELECT e FROM EstadoCivil e", EstadoCivil.class)
                .getResultList();

            int indexEstadoCivil = Util.getRandomInt(estadosCivis.size());
            EstadoCivil estadoCivil = estadosCivis.get(indexEstadoCivil);

            // Deficiência
            List<Deficiencia> deficiencias = XPersistence.getManager()
                .createQuery("SELECT d FROM Deficiencia d", Deficiencia.class)
                .getResultList();
            
            int indexDeficiencia = Util.getRandomInt(deficiencias.size());
            Deficiencia deficiencia = deficiencias.get(indexDeficiencia);

            // Escolaridade
            List<Escolaridade> escolaridades = XPersistence.getManager()
                .createQuery("SELECT e FROM Escolaridade e", Escolaridade.class)
                .getResultList();
            
            int indexEscolaridade = Util.getRandomInt(escolaridades.size());
            Escolaridade escolaridade = escolaridades.get(indexEscolaridade);

            // Nacionalidade
            List<Pais> paises = XPersistence.getManager()
                .createQuery("SELECT p FROM Pais p", Pais.class)
                .getResultList();
            
            int indexPais = Util.getRandomInt(paises.size());
            Pais nacionalidade = paises.get(indexPais);

            // Genero
            List<Genero> generos = XPersistence.getManager()
                .createQuery("SELECT g FROM Genero g", Genero.class)
                .getResultList();
            
            int indexGenero = Util.getRandomInt(generos.size());
            Genero genero = generos.get(indexGenero);

            // Etnia
            List<Etnia> etnias = XPersistence.getManager()
                .createQuery("SELECT e FROM Etnia e", Etnia.class)
                .getResultList();
            
            int indexEtnia = Util.getRandomInt(etnias.size());
            Etnia etnia = etnias.get(indexEtnia);

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

            /***  Popula a tabela de pessoa física ***/
            Builder<PessoaFisica> pessoaBuilder = new Builder<>(new PessoaFisica());
            String nomePessoa = "Pessoa " + Util.getRandomString().substring(0,8);
            PessoaFisica pessoa = pessoaBuilder
                .set("cpf", CPFGenerator.generateRandomFormatted())
                .set("nome", nomePessoa)
                .set("nomeMae", "Mãe de " + nomePessoa)
                .set("nomePai", "Pai de " + nomePessoa)
                .set("dataNascimento", LocalDate.now())
                .set("endereco", endereco)
                .set("estadoCivil", estadoCivil)
                .set("naturalidade", Util.getRandomString().substring(0,8))
                .set("tipoSanguineo", tiposSangue[indexSangue])
                .set("deficiencia", deficiencia)
                .set("escolaridade", escolaridade)
                .set("genero", genero)
                .set("etnia", etnia)
                .set("nacionalidade", nacionalidade)
                .build();

            XPersistence.getManager().persist(pessoa);
            XPersistence.commit();

		} catch (Exception e) {
			XPersistence.rollback();
			e.printStackTrace();
		}
	}
}
