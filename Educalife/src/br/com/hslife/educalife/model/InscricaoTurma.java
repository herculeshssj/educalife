package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="inscricao_turma")
@View(members = "aluno { pessoaFisica; motivoInscricao} "
		+ "turma { numeroInscricao, dataInscricao, statusInscricao; turma } "
)
@View(name = "view_in_historico", members = "numeroInscricao; "
		+ "nomeAluno; "
		+ "nomeTurma; "
		+ "dataInscricao;"
		+ "statusInscricao"
)
@Tab(properties = "pessoaFisica.nome, numeroInscricao, turma.nomeTurma, dataInscricao, statusInscricao")
public class InscricaoTurma extends Identifiable {
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_pessoa_fisica", nullable = false)
	private PessoaFisica pessoaFisica;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_turma", nullable = false)
	@NoCreate @NoModify
	private Turma turma;
	
	@Column(name="numero_inscricao", nullable = false)
	@Required
	private long numeroInscricao;
	
	@Column(name="data_inscricao", nullable = false)
	@Required
	private LocalDate dataInscricao;
	
	@Column(columnDefinition = "text", name="motivo_inscricao", nullable = false)
	@Required
	@Stereotype("MEMO")
	private String motivoInscricao;
	
	@Enumerated(EnumType.STRING)
	@Column(name="status_inscricao", nullable = false)
	@Required
	private StatusInscricao statusInscricao;
	
	@Depends("pessoaFisica")
	public String getNomeAluno() {
		if (this.getPessoaFisica() != null) {
			return this.getPessoaFisica().getNome();
		}
		return "";
	}
	
	@Depends("turma")
	public String getNomeTurma() {
		if (this.getTurma() != null) {
			return this.getTurma().getNomeTurma();
		}
		return "";
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}

	public LocalDate getDataInscricao() {
		return dataInscricao;
	}

	public void setDataInscricao(LocalDate dataInscricao) {
		this.dataInscricao = dataInscricao;
	}

	public String getMotivoInscricao() {
		return motivoInscricao;
	}

	public void setMotivoInscricao(String motivoInscricao) {
		this.motivoInscricao = motivoInscricao;
	}

	public StatusInscricao getStatusInscricao() {
		return statusInscricao;
	}

	public void setStatusInscricao(StatusInscricao statusInscricao) {
		this.statusInscricao = statusInscricao;
	}

	public long getNumeroInscricao() {
		return numeroInscricao;
	}

	public void setNumeroInscricao(long numeroInscricao) {
		this.numeroInscricao = numeroInscricao;
	}

	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}

	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}
	
	

//	public Collection<Frequencia> getFrequenciaAula() {
//		return frequenciaAula;
//	}
//
//	public void setFrequenciaAula(Collection<Frequencia> frequenciaAula) {
//		this.frequenciaAula = frequenciaAula;
//	}
}