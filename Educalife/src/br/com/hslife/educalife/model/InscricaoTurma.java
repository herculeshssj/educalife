package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="inscricao_turma")
@Audited
@View(members = "aluno { pessoaFisica; motivoInscricao} "
		+ "turma { numeroInscricao, dataInscricao, statusInscricao; turma } "
)
@View(name = "view_in_historico", members = "numeroInscricao; "
		+ "nomeAluno; "
		+ "nomeTurma; "
		+ "dataInscricao;"
		+ "statusInscricao"
)
@View(name = "view_in_diario", members = "numeroInscricao; "
		+ "nomeAluno; "
		+ "nomeTurma; "
		+ "dataInscricao;"
		+ "statusInscricao;"
		+ "frequencia"
)
@View(name = "view_in_avaliacao", members = "numeroInscricao; "
		+ "nomeAluno; "
		+ "nomeTurma; "
		+ "dataInscricao;"
		+ "statusInscricao;"
		+ "resultadoAvaliacao"
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
	@ReadOnly(forViews="view_in_diario, view_in_avaliacao")
	private long numeroInscricao;
	
	@Column(name="data_inscricao", nullable = false)
	@Required
	@ReadOnly(forViews="view_in_diario, view_in_avaliacao")
	private LocalDate dataInscricao;
	
	@Column(columnDefinition = "text", name="motivo_inscricao", nullable = false)
	@Required
	@Stereotype("MEMO")
	private String motivoInscricao;
	
	@Enumerated(EnumType.STRING)
	@Column(name="status_inscricao", nullable = false)
	@Required
	@ReadOnly(forViews="view_in_diario, view_in_avaliacao")
	private StatusInscricao statusInscricao;
	
	@ElementCollection
	@ListProperties("aula, aula.dataAula, compareceu, abonado, justificativa")
	Collection<Frequencia> frequencia;
	
	@ElementCollection
	@ListProperties("avaliacao, avaliacao.descricao, nota, revisado, notaRevisada, justificativa")
	Collection<ResultadoAvaliacao> resultadoAvaliacao;
	
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

	public Collection<Frequencia> getFrequencia() {
		return frequencia;
	}

	public void setFrequencia(Collection<Frequencia> frequencia) {
		this.frequencia = frequencia;
	}

	public Collection<ResultadoAvaliacao> getResultadoAvaliacao() {
		return resultadoAvaliacao;
	}

	public void setResultadoAvaliacao(Collection<ResultadoAvaliacao> resultadoAvaliacao) {
		this.resultadoAvaliacao = resultadoAvaliacao;
	}
}