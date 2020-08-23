package br.com.hslife.educalife.model;

import javax.persistence.*;

@Embeddable
public class Permissao {

	@ManyToOne
	@JoinColumn(name="id_papel_usuario")
	private PapelUsuario papelUsuario;

	public PapelUsuario getPapelUsuario() {
		return papelUsuario;
	}

	public void setPapelUsuario(PapelUsuario papelUsuario) {
		this.papelUsuario = papelUsuario;
	}
}
