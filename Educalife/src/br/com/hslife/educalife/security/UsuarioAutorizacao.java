package br.com.hslife.educalife.security;

import java.util.*;

import org.openxava.jpa.*;
import org.openxava.util.*;

import br.com.hslife.educalife.model.*;

public class UsuarioAutorizacao {
	
	public static boolean isMenuAutorizado(String menuName) {
		
		boolean liberado = false;
		
		try {
			
			// Nome do usuário logado
			String nomeUsuario = Users.getCurrent();
			
			// Carrega as permissões do usuário logado
			List<PermissaoUsuario> permissoes = XPersistence.getManager()
					.createQuery("select p from PermissaoUsuario p where p.usuario.login = :login", PermissaoUsuario.class)
					.setParameter("login", nomeUsuario)
					.getResultList();
			
			switch (menuName) {
				case "Cadastros":
					if (nomeUsuario.equalsIgnoreCase("admin"))
						liberado = true; 
					break;
				case "Ensino":
					if (nomeUsuario.equalsIgnoreCase("admin"))
						liberado = true; 
					break;
				case "Administracao":
					if (nomeUsuario.equalsIgnoreCase("admin"))
						liberado = true; 
					break;
				case "Financeiro":
					if (nomeUsuario.equalsIgnoreCase("admin"))
						liberado = true; 
					break;
				case "Pessoal":
					if (nomeUsuario.equalsIgnoreCase("admin"))
						liberado = true; 
					break;
				case "Opcao":
					if (nomeUsuario.equalsIgnoreCase("admin"))
						liberado = true; 
					break;
				default:
					liberado = false;
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return liberado;
	}
	
	/*
	 * Verifica se o usuário possui as permissões para acessar determinado módulo.
	 */
	public static boolean isAutorizado(String moduleName) {
		
		boolean liberado = false;
		
		try {
			
			// Nome do usuário logado
			String nomeUsuario = Users.getCurrent();
			
			// Carrega as permissões do usuário logado
			List<PermissaoUsuario> permissoes = XPersistence.getManager()
					.createQuery("select p from PermissaoUsuario p where p.usuario.login = :login", PermissaoUsuario.class)
					.setParameter("login", nomeUsuario)
					.getResultList();
			
			if (nomeUsuario.equalsIgnoreCase("admin"))
				liberado = true;
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return liberado;
	}
}