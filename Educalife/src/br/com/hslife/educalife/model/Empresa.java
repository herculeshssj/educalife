package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="empresa")
@Tab(properties = "pessoaJuridica.nomeFantasia, pessoaJuridica.cnpj, pessoaJuridica.dataCriacao")
public class Empresa extends Identifiable {

	@ManyToOne
	@JoinColumn(name="id_pessoa_juridica")
	private PessoaJuridica pessoaJuridica;
	
	@Column(columnDefinition = "text", name="contrato_social", nullable = true)
	@Stereotype("HTML_TEXT")
	private String contratoSocial;

	public String getContratoSocial() {
		return contratoSocial;
	}

	public void setContratoSocial(String contratoSocial) {
		this.contratoSocial = contratoSocial;
	}

	public PessoaJuridica getPessoaJuridica() {
		return pessoaJuridica;
	}

	public void setPessoaJuridica(PessoaJuridica pessoaJuridica) {
		this.pessoaJuridica = pessoaJuridica;
	}
	
	
}
