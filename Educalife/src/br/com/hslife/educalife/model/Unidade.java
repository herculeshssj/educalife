package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="unidade")
public class Unidade extends Identifiable {

	@Column(name="nome_unidade", nullable = false)
	@Required
	private String nomeUnidade;

	public String getNomeUnidade() {
		return nomeUnidade;
	}

	public void setNomeUnidade(String nomeUnidade) {
		this.nomeUnidade = nomeUnidade;
	}
}
