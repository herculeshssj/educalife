package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name = "curso")
@Audited
@View(members = "nomeCurso; "
		+ "cargaHoraria, statusCurso; "
		+ "nomeCoordenador; "
		+ "coordenador;"
		+ "ementaCurso "
)
@View(name = "view_in_turma", members = "nomeCurso; "
		+ "nomeCoordenador; "
		+ "cargaHoraria, statusCurso; "
		+ "ementaCurso "
)
@Tab(properties = "nomeCurso, coordenador.pessoaFisica.nome, cargaHoraria, statusCurso") 
public class Curso extends Identifiable {

	@Column(name="nome_curso", nullable = false)
	@Required
	private String nomeCurso;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_coordenador", nullable = false)
	@ReferenceView(value = "simples")
	@NoCreate @NoModify
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
	private String ementaCurso;
	
	@Depends("coordenador")
	public String getNomeCoordenador() {
		if (this.coordenador != null) {
			if (this.coordenador.getPessoaFisica() != null) {
				return this.coordenador.getPessoaFisica().getNome();
			}
		}
		return "";
	}

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

	public String getEmentaCurso() {
		return ementaCurso;
	}

	public void setEmentaCurso(String ementaCurso) {
		this.ementaCurso = ementaCurso;
	}
}