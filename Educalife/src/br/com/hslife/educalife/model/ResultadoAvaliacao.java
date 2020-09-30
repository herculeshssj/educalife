package br.com.hslife.educalife.model;

import java.math.*;
import java.util.*;

import javax.persistence.*;

@Embeddable
public class ResultadoAvaliacao {
	
	@ManyToOne
	@JoinColumn(name="id_avaliacao")
	private Avaliacao avaliacao;
	
	@Column
	private BigDecimal nota;
	
	@Column
	private boolean revisado;
	
	@Column(name="nota_revisada")
	private BigDecimal notaRevisada;
	
	@Column
	private String justificativa;
	
	@Override
	public int hashCode() {
		if (this.avaliacao != null) {
			return Objects.hash(this.avaliacao.getId());
		}
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this.avaliacao != null & obj != null & ((ResultadoAvaliacao)obj).getAvaliacao() != null) {
			return this.avaliacao.getId().equals(((ResultadoAvaliacao)obj).getAvaliacao().getId());
		}

		return super.equals(obj);
	}

	public Avaliacao getAvaliacao() {
		return avaliacao;
	}

	public void setAvaliacao(Avaliacao avaliacao) {
		this.avaliacao = avaliacao;
	}

	public BigDecimal getNota() {
		return nota;
	}

	public void setNota(BigDecimal nota) {
		this.nota = nota;
	}

	public boolean isRevisado() {
		return revisado;
	}

	public void setRevisado(boolean revisado) {
		this.revisado = revisado;
	}

	public BigDecimal getNotaRevisada() {
		return notaRevisada;
	}

	public void setNotaRevisada(BigDecimal notaRevisada) {
		this.notaRevisada = notaRevisada;
	}

	public String getJustificativa() {
		return justificativa;
	}

	public void setJustificativa(String justificativa) {
		this.justificativa = justificativa;
	}
}