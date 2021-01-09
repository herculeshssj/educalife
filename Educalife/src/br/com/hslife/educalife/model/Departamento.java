package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="departamento")
@Audited
@View(
	name = "view_in_processo", 
	members = "nomeDepartamento, unidade"
)
@Tab(properties = "nomeDepartamento, unidade.nomeUnidade, unidade.empresa.nomeEmpresa")
public class Departamento extends Identifiable {

	@Column(name="nome_departamento", nullable = false)
	@Required
	private String nomeDepartamento;
	
	@ManyToOne
	@JoinColumn(name="id_unidade", nullable = false)
	@DescriptionsList(descriptionProperties = "nomeUnidade", order = "${nomeUnidade} asc")
	@NoCreate @NoModify
	private Unidade unidade;

	public String getNomeEUnidade() {
		return this.nomeDepartamento + " (" + this.unidade.getNomeUnidade() + ")";
	}

	public String getNomeDepartamento() {
		return nomeDepartamento;
	}

	public void setNomeDepartamento(String nomeDepartamento) {
		this.nomeDepartamento = nomeDepartamento;
	}

	public Unidade getUnidade() {
		return unidade;
	}

	public void setUnidade(Unidade unidade) {
		this.unidade = unidade;
	}
}