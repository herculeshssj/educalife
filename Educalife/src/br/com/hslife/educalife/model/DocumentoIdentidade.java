package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import br.com.hslife.educalife.enumeration.*;

@Embeddable
public class DocumentoIdentidade {
	
	@Enumerated(EnumType.STRING)
	@Column(name="tipo_identidade")
	private TipoIdentidade tipoIdentidade;
	
	@Column
	private String numero;
	
	@Column(name="orgao_expedidor")
	private String orgaoExpedidor;
	
	@Column(name="data_expedicao")
	private LocalDate dataExpedicao;
	
	@Column
	private String complemento;

	public TipoIdentidade getTipoIdentidade() {
		return tipoIdentidade;
	}

	public void setTipoIdentidade(TipoIdentidade tipoIdentidade) {
		this.tipoIdentidade = tipoIdentidade;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getOrgaoExpedidor() {
		return orgaoExpedidor;
	}

	public void setOrgaoExpedidor(String orgaoExpedidor) {
		this.orgaoExpedidor = orgaoExpedidor;
	}

	public LocalDate getDataExpedicao() {
		return dataExpedicao;
	}

	public void setDataExpedicao(LocalDate dataExpedicao) {
		this.dataExpedicao = dataExpedicao;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
}