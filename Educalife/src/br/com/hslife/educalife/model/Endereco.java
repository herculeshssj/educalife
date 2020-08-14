package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name = "endereco")
public class Endereco extends Identifiable {
	
	@OneToOne(optional = false)
	@JoinColumn(name = "id_tipo_logradouro", nullable = false)
	@Required
	private TipoLogradouro tipoLogradouro;
	
	@Required
	@Column(name = "logradouro", nullable = false)
	private String logradouro;

	@Required
	@Column(name = "numero", nullable = false)
	private String numero;

	@Column(name = "complemento", nullable = true)
	private String complemento;

	@Required
	@Column(name = "bairro", nullable = false)
	private String bairro;

	@Required
	@Column(name = "cidade", nullable = false)
	private String cidade;

	@Required
	@Enumerated(EnumType.STRING)
	@Column(name = "uf", nullable = false)
	private Uf uf;

	@Required
	@Column(name = "cep", nullable = false)
	private String cep;

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public Uf getUf() {
		return uf;
	}

	public void setUf(Uf uf) {
		this.uf = uf;
	}

	public TipoLogradouro getTipoLogradouro() {
		return tipoLogradouro;
	}

	public void setTipoLogradouro(TipoLogradouro tipoLogradouro) {
		this.tipoLogradouro = tipoLogradouro;
	}
}
