package br.com.hslife.educalife.dao;

import java.util.Optional;

import javax.persistence.NoResultException;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.PapelUsuario;
import br.com.hslife.educalife.model.Usuario;

@Component
public class UsuarioDAO {
    
    public PapelUsuario obterPapelPorNome(String nomePapel) {
        return XPersistence.getManager()
            .createQuery("SELECT p FROM PapelUsuario p where p.nome = :nomePapel", PapelUsuario.class)
            .setParameter("nomePapel", nomePapel)
            .getSingleResult();
    }

    public Optional<Usuario> buscarPorLogin(String login) {
        Optional<Usuario> usuario = Optional.empty();

        try {
            usuario = Optional.ofNullable(
                XPersistence.getManager()
                .createQuery("SELECT u FROM Usuario u where u.login = :login", Usuario.class)
                .setParameter("login", login)
                .getSingleResult()
            );
        } catch (NoResultException e) {
            // Usuário não foi encontrado
        }

        return usuario;
    }
}
