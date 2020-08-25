package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name = "curso")
@View(members = "nomeCurso; "
		+ "cargaHoraria, statusCurso; "
		+ "descricaoCurso; "
		+ "coordenador"
)
public class Curso extends Identifiable {

	@Column(name="nome_curso", nullable = false)
	@Required
	private String nomeCurso;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_coordenador", nullable = false)
	private Colaborador coordenador;

	@Column(name = "carga_horaria")
	@Required
	private int cargaHoraria;

	@Enumerated(EnumType.STRING)
	@Column(name = "status_curso", nullable = false)
	@Required
	private StatusCurso statusCurso;
	
	@Column(columnDefinition = "text", name = "descricao_curso")
	@Required
	@Stereotype("MEMO")
	private String descricaoCurso;

	public String getNomeCurso() {
		return nomeCurso;
	}

	public void setNomeCurso(String nomeCurso) {
		this.nomeCurso = nomeCurso;
	}

	public int getCargaHoraria() {
		return cargaHoraria;
	}

	public void setCargaHoraria(int cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}

	public String getDescricaoCurso() {
		return descricaoCurso;
	}

	public void setDescricaoCurso(String descricaoCurso) {
		this.descricaoCurso = descricaoCurso;
	}

	public StatusCurso getStatusCurso() {
		return statusCurso;
	}

	public void setStatusCurso(StatusCurso statusCurso) {
		this.statusCurso = statusCurso;
	}

	public Colaborador getCoordenador() {
		return coordenador;
	}

	public void setCoordenador(Colaborador coordenador) {
		this.coordenador = coordenador;
	}
}