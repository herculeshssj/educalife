package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="calendario_atividade")
//@Audited
public class CalendarioAtividade extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String descricao;
	
	@Column(nullable = false)
	@Required
	private LocalDate dataInicio;
	
	@Column(nullable = true)
	private LocalDate dataFim;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public LocalDate getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(LocalDate dataInicio) {
		this.dataInicio = dataInicio;
	}

	public LocalDate getDataFim() {
		return dataFim;
	}

	public void setDataFim(LocalDate dataFim) {
		this.dataFim = dataFim;
	}
}