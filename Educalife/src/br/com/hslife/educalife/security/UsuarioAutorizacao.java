package br.com.hslife.educalife.security;

import org.openxava.jpa.*;
import org.openxava.util.*;

import br.com.hslife.educalife.model.*;

public class UsuarioAutorizacao {
	
	/*
	 * Verifica se o usuário possui as permissões para acessar determinado módulo.
	 */
	public static boolean isAutorizado(String moduleName) {
		
		boolean liberado = false;
		String nomeUsuario = Users.getCurrent();
		
		try {
			
			switch (moduleName) {
				case "AuditoriaEntity": 
					liberado = false; break;
					
				case "Usuario":
					if (!nomeUsuario.equals("admin")) {
						// Busca o papel
						PapelUsuario papel = XPersistence.getManager()
								.createQuery("select p from PapelUsuario p where p.nome = :papel", PapelUsuario.class)
								.setParameter("papel", "GESTAO_USUARIO")
								.getSingleResult();
						
						Usuario usuario = XPersistence.getManager()
								.createQuery("select u from Usuario u where u.login = :login", Usuario.class)
								.setParameter("login", nomeUsuario)
								.getSingleResult();
						
						for (Permissao permissao : usuario.getPermissao()) {
							if (permissao.getPapelUsuario().equals(papel)) {
								liberado = true;
								break;
							}
						}
						
						/* SEE refatorar
						if (usuario.getPermissao().contains(papel)) {
							liberado = true;
						}
						*/
						
					} else {
						liberado = true;
					}
					break;
					
				default : liberado = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return liberado;
	}
}