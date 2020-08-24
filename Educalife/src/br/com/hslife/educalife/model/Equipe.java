package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="equipe")
@Tab(properties = "nomeEquipe, departamento.nomeDepartamento, ministraAula")
public class Equipe extends Identifiable {
	
	@Column(name="nome_equipe", nullable = false)
	@Required
	private String nomeEquipe;
	
	@ManyToOne
	@JoinColumn(name="id_departamento", nullable = false)
	@DescriptionsList(descriptionProperties = "nomeDepartamento, unidade.nomeUnidade", order = "${nomeDepartamento} asc")
	@NoCreate @NoModify
	private Departamento departamento;
	
	@Column(name="ministra_aula")
	private boolean ministraAula;
	
	@Column(columnDefinition = "text", name="metas_equipe", nullable = true)
	@Stereotype("MEMO")
	private String metasEquipe;
	
	public String getNomeEquipe() {
		return nomeEquipe;
	}

	public void setNomeEquipe(String nomeEquipe) {
		this.nomeEquipe = nomeEquipe;
	}

	public String getMetasEquipe() {
		return metasEquipe;
	}

	public void setMetasEquipe(String metasEquipe) {
		this.metasEquipe = metasEquipe;
	}

	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public boolean isMinistraAula() {
		return ministraAula;
	}

	public void setMinistraAula(boolean ministraAula) {
		this.ministraAula = ministraAula;
	}
}