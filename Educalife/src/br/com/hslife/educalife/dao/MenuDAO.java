package br.com.hslife.educalife.dao;

import java.util.ArrayList;
import java.util.List;

import org.openxava.jpa.XPersistence;

public class MenuDAO {
    
    @SuppressWarnings("unchecked")
    public static List<String> buscarMenus() {
        List<String> lista = new ArrayList<>();
        
        lista = XPersistence.getManager()
            .createNativeQuery("select distinct menu from modulo_sistema ms order by menu asc")
            .getResultList();

        if (lista == null)
            return new ArrayList<>();

        return lista;
    }

    @SuppressWarnings("unchecked")
    public static List<String> buscarModulos(String menu) {
        List<String> lista = new ArrayList<>();

        lista = XPersistence.getManager()
            .createNativeQuery("select nome from modulo_sistema ms where menu = :menu order by nome asc")
            .setParameter("menu", menu)
            .getResultList();

        if (lista == null)
            lista = new ArrayList<>();

        return lista;
    }
}
