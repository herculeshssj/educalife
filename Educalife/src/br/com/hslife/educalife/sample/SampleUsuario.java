package br.com.hslife.educalife.sample;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;

import org.openxava.jpa.XPersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.dao.PessoaFisicaDAO;
import br.com.hslife.educalife.dao.UsuarioDAO;
import br.com.hslife.educalife.model.PapelUsuario;
import br.com.hslife.educalife.model.PessoaFisica;
import br.com.hslife.educalife.model.Usuario;
import br.com.hslife.educalife.patterns.Builder;
import br.com.hslife.educalife.util.Util;

@Component
public class SampleUsuario implements ISample {

    @Autowired
    PessoaFisicaDAO daoPessoaFisica;

    @Autowired
    UsuarioDAO daoUsuario;
    
    @Override
    public void populaBase() {
        try {

            // Busca uma pessoa física
            BigInteger quantidadePessoas = daoPessoaFisica.countPessoaFisica();
            int indexPessoa = Util.getRandomInt(quantidadePessoas.intValue());
            PessoaFisica pessoaFisica = daoPessoaFisica.obterPessoaFisicaPorIndice(indexPessoa);

            // Busca o papel CONSULTA para definir ao usuário
            PapelUsuario papel = daoUsuario.obterPapelPorNome("CONSULTA");
            Collection<PapelUsuario> papeis = new ArrayList<>();
            papeis.add(papel);

            // Popula o usuário com os dados vindos da pessoa física
            String login = pessoaFisica.getNome().replace(" ", "").toLowerCase();
            Builder<Usuario> usuarioBuilder = new Builder<Usuario>(new Usuario());
            Usuario usuario = usuarioBuilder
                .set("login", login)
                .set("senha", login)
                .set("ativo", Boolean.TRUE)
                .set("pessoaFisica", pessoaFisica)
                .set("permissao", papeis)
                .build();

            // Salva o usuário
            XPersistence.getManager().persist(usuario);
			XPersistence.commit();

		} catch (Exception e) {
			XPersistence.rollback();
			e.printStackTrace();
		}
    }
}
