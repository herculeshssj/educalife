package br.com.hslife.educalife.helper;

import java.util.List;

import br.com.hslife.educalife.dao.MenuDAO;

public class MenuHelper {

    public static List<String> obterMenus() {
        return MenuDAO.buscarMenus();
    }

    public static List<String> obterSubmenus(String menu) {
        return MenuDAO.buscarModulos(menu);
    }
}
