package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="avaliacao")
@View(members = "turma; "
		+ "descricao, dataAvaliacao, notaAvaliacao; "
		+ "topicosAvaliacao")
@Tab(properties = "turma.nomeTurma, descricao, dataAvaliacao, notaAvaliacao")
public class Avaliacao extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String descricao;
	
	@Column(name="data_avaliacao", nullable = false)
	@Required
	private LocalDate dataAvaliacao;
	
	@Column(name="nota_avaliacao", nullable = false)
	@Required
	private BigDecimal notaAvaliacao;
	
	@Column(name="topicos_avaliacao", nullable = true, length = 1000)
	@Stereotype("MEMO")
	private String topicosAvaliacao;
	
	@ManyToOne
	@JoinColumn(name="id_turma", nullable = false)
	@ReferenceView(value = "view_in_avaliacao")
	@NoCreate @NoModify
	private Turma turma;
	
	/* Rascunho da prova *?
	 *Questionario
- Avaliacao
- Questoes

Questao
- descricao
- Alternativas
- Alternativa gabarito
- discursiva
- discursivaResposta

Alternativa
- ordem
- descricao

RespostaQuestionario
- InscricaoTurma
- Questionario
- Questao
- Alternativa
	 */

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}

	public LocalDate getDataAvaliacao() {
		return dataAvaliacao;
	}

	public void setDataAvaliacao(LocalDate dataAvaliacao) {
		this.dataAvaliacao = dataAvaliacao;
	}

	public BigDecimal getNotaAvaliacao() {
		return notaAvaliacao;
	}

	public void setNotaAvaliacao(BigDecimal notaAvaliacao) {
		this.notaAvaliacao = notaAvaliacao;
	}

	public String getTopicosAvaliacao() {
		return topicosAvaliacao;
	}

	public void setTopicosAvaliacao(String topicosAvaliacao) {
		this.topicosAvaliacao = topicosAvaliacao;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}