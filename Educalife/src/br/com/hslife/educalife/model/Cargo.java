package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="cargo")
//@Audited
public class Cargo extends Identifiable {

	@Column(name="codigo_cbo", nullable = false)
	@Required
	private String codigoCbo;
	
	@Column(nullable = false)
	@Required
	private String denominacao;
	
	@Column
	private boolean ativo;

	public String getCodigoCbo() {
		return codigoCbo;
	}

	public void setCodigoCbo(String codigoCbo) {
		this.codigoCbo = codigoCbo;
	}

	public String getDenominacao() {
		return denominacao;
	}

	public void setDenominacao(String denominacao) {
		this.denominacao = denominacao;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
}
