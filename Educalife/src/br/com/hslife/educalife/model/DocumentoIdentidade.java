package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.hibernate.envers.Audited;
import org.openxava.annotations.Required;
import org.openxava.model.Identifiable;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="documento_identidade")
@Audited
public class DocumentoIdentidade extends Identifiable {
	
	@Enumerated(EnumType.STRING)
	@Column(name="tipo_identidade")
	@Required
	private TipoIdentidade tipoIdentidade;
	
	@Column
	@Required
	private String numero;
	
	@Column(name="orgao_expedidor")
	private String orgaoExpedidor;
	
	@Column(name="data_expedicao")
	private LocalDate dataExpedicao;
	
	@Column
	private String complemento;

	@ManyToOne
	@JoinColumn(name="id_pessoa_fisica")
	private PessoaFisica pessoaFisica;

	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}

	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}

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