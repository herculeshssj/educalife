package br.com.hslife.educalife.helper;

import java.util.ArrayList;
import java.util.List;

import org.openxava.jpa.XPersistence;

public class MenuHelper {

    @SuppressWarnings("unchecked")
    public static List<String> obterMenus() {
        List<String> listaMenu = new ArrayList<>();

        listaMenu = XPersistence.getManager()
            .createNativeQuery("select distinct menu from modulo_sistema ms order by menu asc")
            .getResultList();

        if (listaMenu == null)
            listaMenu = new ArrayList<>();

        return listaMenu;
    }

    @SuppressWarnings("unchecked")
    public static List<String> obterSubmenus(String menu) {
        List<String> listaMenu = new ArrayList<>();

        listaMenu = XPersistence.getManager()
            .createNativeQuery("select nome from modulo_sistema ms where menu = :menu order by nome asc")
            .setParameter("menu", menu)
            .getResultList();

        if (listaMenu == null)
            listaMenu = new ArrayList<>();

        return listaMenu;
    }
}
