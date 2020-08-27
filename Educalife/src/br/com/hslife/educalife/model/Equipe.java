package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;

import br.com.hslife.educalife.enumeration.*;

@Embeddable
public class Equipe {
	
	@ManyToOne
	@JoinColumn(name="id_pessoa_fisica")
	@DescriptionsList(descriptionProperties = "nome", order = "${nome} asc")
	private PessoaFisica pessoaFisica;
	
	@Enumerated(EnumType.STRING)
	@Column(name="funcao_equipe")
	private FuncaoEquipe funcaoEquipe;
	
	@Column(name="ministra_aula")
	private boolean ministraAula;

	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}

	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}

	public FuncaoEquipe getFuncaoEquipe() {
		return funcaoEquipe;
	}

	public void setFuncaoEquipe(FuncaoEquipe funcaoEquipe) {
		this.funcaoEquipe = funcaoEquipe;
	}

	public boolean isMinistraAula() {
		return ministraAula;
	}

	public void setMinistraAula(boolean ministraAula) {
		this.ministraAula = ministraAula;
	}
}