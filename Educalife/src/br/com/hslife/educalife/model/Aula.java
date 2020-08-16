package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="aula")
public class Aula extends Identifiable{
	
	@Column(name="data_aula", nullable = false)
	@Required
	private LocalDate dataAula;
	
	@Column(name="horario_inicio")
	@Required
	private String horarioInicio;
	
	@Column(name="horario_fim")
	@Required
	private String horarioFim;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_turma", nullable = false)
	private Turma turma;

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}

	public LocalDate getDataAula() {
		return dataAula;
	}

	public void setDataAula(LocalDate dataAula) {
		this.dataAula = dataAula;
	}

	public String getHorarioInicio() {
		return horarioInicio;
	}

	public void setHorarioInicio(String horarioInicio) {
		this.horarioInicio = horarioInicio;
	}

	public String getHorarioFim() {
		return horarioFim;
	}

	public void setHorarioFim(String horarioFim) {
		this.horarioFim = horarioFim;
	}
}