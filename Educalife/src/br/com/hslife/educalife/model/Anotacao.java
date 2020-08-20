package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;

@Embeddable
public class Anotacao {

	@Column(columnDefinition = "text")
	@Stereotype("MEMO")
	private String anotacao;

	public String getAnotacao() {
		return anotacao;
	}

	public void setAnotacao(String anotacao) {
		this.anotacao = anotacao;
	}
}
