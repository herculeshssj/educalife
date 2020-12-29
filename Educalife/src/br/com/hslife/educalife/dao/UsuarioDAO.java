package br.com.hslife.educalife.dao;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.PapelUsuario;

@Component
public class UsuarioDAO {
    
    public PapelUsuario obterPapelPorNome(String nomePapel) {
        return XPersistence.getManager()
            .createQuery("SELECT p FROM PapelUsuario p where p.nome = :nomePapel", PapelUsuario.class)
            .setParameter("nomePapel", nomePapel)
            .getSingleResult();
    }
}
