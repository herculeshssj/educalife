package br.com.hslife.educalife.model;

import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.Audited;
import org.openxava.model.Identifiable;

@Entity
@Table(name="frequencia")
@Audited
public class Frequencia extends Identifiable {
	
	@ManyToOne
	@JoinColumn(name="id_aula")
	private Aula aula;
	
	@Column
	private boolean compareceu;
	
	@Column
	private boolean abonado;
	
	@Column
	private String justificativa;
	
	@Override
	public int hashCode() {
		if (this.getId() != null) {
			return Objects.hash(this.getId());
		}
		return super.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this.getId() != null & obj != null & ((Frequencia)obj).getId() != null) {
			return this.getId().equals(((Frequencia)obj).getId());
		}

		return super.equals(obj);
	}

	public Aula getAula() {
		return aula;
	}

	public void setAula(Aula aula) {
		this.aula = aula;
	}

	public boolean isCompareceu() {
		return compareceu;
	}

	public void setCompareceu(boolean compareceu) {
		this.compareceu = compareceu;
	}

	public boolean isAbonado() {
		return abonado;
	}

	public void setAbonado(boolean abonado) {
		this.abonado = abonado;
	}

	public String getJustificativa() {
		return justificativa;
	}

	public void setJustificativa(String justificativa) {
		this.justificativa = justificativa;
	}
}