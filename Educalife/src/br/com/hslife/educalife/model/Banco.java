package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="banco")
public class Banco extends Identifiable {
	
	@Column(nullable = true)
	private String codigo;
	
	@Column(nullable = false)
	@Required
	private String nome;
	
	@Column(nullable = true)
	private String website;
	
	@Column
	private boolean febraban;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public boolean isFebraban() {
		return febraban;
	}

	public void setFebraban(boolean febraban) {
		this.febraban = febraban;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
}