package br.com.hslife.educalife.dao;

import java.util.List;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.Banco;

@Component
public class BancoDAO {
    
    public List<Banco> buscarTodos() {
        return XPersistence.getManager()
            .createQuery("SELECT b FROM Banco b", Banco.class)
            .getResultList();
    }
}
