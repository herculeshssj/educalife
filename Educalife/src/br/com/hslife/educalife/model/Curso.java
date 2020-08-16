package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

//@Entity
@Table(name = "curso")
@View(members = "nomeCurso, descricaoCurso; "
		+ "cargaHoraria, statusCurso; "
		+ "coordenador"
)
public class Curso extends Identifiable {

	@Column(name="nome_curso", nullable = false)
	@Required
	private String nomeCurso;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_coordenador", nullable = false)
	private PessoaFisica coordenador;

	@Column(name = "carga_horaria")
	@Required
	private int cargaHoraria;

	@Enumerated(EnumType.STRING)
	@Column(name = "status_curso", nullable = false)
	@Required
	private StatusCurso statusCurso;
	
	@Column(name = "descricao_curso")
	@Required
	private String descricaoCurso;

	public String getNomeCurso() {
		return nomeCurso;
	}

	public void setNomeCurso(String nomeCurso) {
		this.nomeCurso = nomeCurso;
	}

	public PessoaFisica getCoordenador() {
		return coordenador;
	}

	public void setCoordenador(PessoaFisica coordenador) {
		this.coordenador = coordenador;
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
}