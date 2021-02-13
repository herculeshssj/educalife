package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.Audited;
import org.openxava.annotations.NoCreate;
import org.openxava.annotations.NoModify;
import org.openxava.model.Identifiable;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="oferta_vaga")
@Audited
public class OfertaVaga extends Identifiable {

	@ManyToOne
	@JoinColumn(name="id_turma", nullable = false)
	@NoCreate @NoModify
	private Turma turma;

	@Column(name="numero_vaga")
	private int numeroVaga;
	
	@Enumerated(EnumType.STRING)
	@Column(name="publico_alvo")
	private PublicoAlvo publicoAlvo;

	public int getNumeroVaga() {
		return numeroVaga;
	}

	public void setNumeroVaga(int numeroVaga) {
		this.numeroVaga = numeroVaga;
	}

	public PublicoAlvo getPublicoAlvo() {
		return publicoAlvo;
	}

	public void setPublicoAlvo(PublicoAlvo publicoAlvo) {
		this.publicoAlvo = publicoAlvo;
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}
}
