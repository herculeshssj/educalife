package br.com.hslife.educalife.dao;

import java.util.List;

import org.openxava.jpa.XPersistence;

import br.com.hslife.educalife.model.Banco;

public class BancoDAO {
    
    public List<Banco> buscarTodos() {
        return XPersistence.getManager()
            .createQuery("SELECT b FROM Banco b", Banco.class)
            .getResultList();
    }
}
