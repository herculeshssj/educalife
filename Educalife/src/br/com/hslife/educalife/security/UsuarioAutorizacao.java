package br.com.hslife.educalife.security;

import java.util.List;

import javax.persistence.NoResultException;

import org.openxava.jpa.XPersistence;
import org.openxava.util.*;

import br.com.hslife.educalife.model.PapelUsuario;
import br.com.hslife.educalife.model.Usuario;

public class UsuarioAutorizacao {
	
	@SuppressWarnings("unchecked")
	public static boolean isAutorizado(String menuName) {
		
		boolean liberado = false;
		
		try {
			
			// Nome do usuário logado
			String nomeUsuario = Users.getCurrent();

			// Caso o usuário seja o admin, libera o acesso
			if (nomeUsuario.equalsIgnoreCase("admin")) {
				liberado = true;
			} else {

				Usuario usuario = null;
				// Verifica se o usuário logado possui a permissão de ADMIN para liberar o acesso
				try {
					usuario = (Usuario)XPersistence.getManager()
						.createNativeQuery("select u.* from usuario u "
						+ "inner join usuario_papel_usuario up on up.usuario_id = u.id "
						+ "inner join papel_usuario p on p.id = up.permissao_id "
						+ "where p.nome = 'ADMIN' and u.login = :login", Usuario.class)					
						.setParameter("login", nomeUsuario)
						.getSingleResult();
				} catch (NoResultException nre) {
					usuario = null;
				}
				
				if (usuario != null) {
					liberado = true;
				} else {

					// Verifica dentre os papéis que o usuário possui aquele que tem permissão de consulta
					// ao módulo informado
					List<PapelUsuario> listaPapeis = XPersistence.getManager()
						.createNativeQuery("select p.* from papel_usuario p "
						+ "inner join usuario_papel_usuario up on up.permissao_id = p.id "
						+ "inner join usuario u on u.id = up.usuario_id "
						+ "inner join permissao_menu_sistema pm on pm.id_papel_usuario = p.id "
						+ "where u.login = :login and pm.modulo = :modulo and pm.pode_consultar = true", PapelUsuario.class)
						.setParameter("modulo", menuName)
						.setParameter("login", nomeUsuario)
						.getResultList();

					if (listaPapeis != null && !listaPapeis.isEmpty()) {
						liberado = true;
					}

				}


			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return liberado;
	}
}