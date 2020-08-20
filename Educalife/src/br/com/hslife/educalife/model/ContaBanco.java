package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="conta_banco")
@Tab(properties = "pessoaFisica.nome, banco.nome, agencia, numeroConta")
public class ContaBanco extends Identifiable {

	@ManyToOne
	@JoinColumn(name="id_banco", nullable = false)
	private Banco banco;
	
	@Column(nullable = false)
	private String agencia;
	
	@Column(nullable = false)
	private String numeroConta;
	
	@Column(nullable = true)
	private String operacao;
	
	@ManyToOne
	@JoinColumn(name="id_pessoa_fisica")
	private PessoaFisica pessoaFisica;

	public Banco getBanco() {
		return banco;
	}

	public void setBanco(Banco banco) {
		this.banco = banco;
	}

	public String getAgencia() {
		return agencia;
	}

	public void setAgencia(String agencia) {
		this.agencia = agencia;
	}

	public String getNumeroConta() {
		return numeroConta;
	}

	public void setNumeroConta(String numeroConta) {
		this.numeroConta = numeroConta;
	}

	public String getOperacao() {
		return operacao;
	}

	public void setOperacao(String operacao) {
		this.operacao = operacao;
	}

	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}

	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}
}
