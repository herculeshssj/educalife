package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="empresa")
@Audited
@View(members = "pessoaJuridica; dataCriacao; contratoSocial")
@View(name="view_in_conta", members = "nomeEmpresa, cnpjEmpresa")
@Tab(properties = "pessoaJuridica.nomeFantasia, pessoaJuridica.cnpj, dataCriacao")
public class Empresa extends Identifiable {

	@OneToOne
	@JoinColumn(name="id_pessoa_juridica", unique = true)
	@Required
	private PessoaJuridica pessoaJuridica;
	
	@Column(name="data_criacao", nullable = false)
	@Required
	private LocalDate dataCriacao;
	
	@Column(columnDefinition = "text", name="contrato_social", nullable = true)
	@Stereotype("HTML_TEXT")
	private String contratoSocial;
	
	public String getNomeEmpresa() {
		if (this.getPessoaJuridica() != null) {
			return this.getPessoaJuridica().getNomeFantasia();
		}
		return "";
	}
	
	public String getCnpjEmpresa() {
		if (this.getPessoaJuridica() != null) {
			return this.getPessoaJuridica().getCnpj();
		}
		return "";
	}

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

	public LocalDate getDataCriacao() {
		return dataCriacao;
	}

	public void setDataCriacao(LocalDate dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
}
