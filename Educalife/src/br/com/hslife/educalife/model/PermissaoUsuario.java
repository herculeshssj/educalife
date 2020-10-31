package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.model.*;

@Entity
@Table(name="permissao_usuario")
@Audited
public class PermissaoUsuario extends Identifiable {

	@ManyToOne
	@JoinColumn(name="id_usuario", nullable = false)
	private Usuario usuario;
	
	@ManyToOne
	@JoinColumn(name="id_papel_usuario")
	private PapelUsuario papelUsuario;

	public PapelUsuario getPapelUsuario() {
		return papelUsuario;
	}

	public void setPapelUsuario(PapelUsuario papelUsuario) {
		this.papelUsuario = papelUsuario;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}
