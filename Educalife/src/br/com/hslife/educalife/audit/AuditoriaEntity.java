package br.com.hslife.educalife.audit;

import java.io.*;
import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.*;

@Entity
@Table(name="auditoria", schema = "audit")
@RevisionEntity(AuditoriaListener.class)
public class AuditoriaEntity implements Serializable {

	/**
	 * Serial version UID
	 */
	private static final long serialVersionUID = 5352142560533992437L;

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "auditoria_generator")
	@SequenceGenerator(name="auditoria_generator", initialValue = 1, allocationSize = 1, schema = "audit", sequenceName = "auditoria_sequence")
	@RevisionNumber
	private long id;
	
	@RevisionTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="data_alteracao")
	private Date dataAlteracao;
	
	@Column
	private String usuario;
	
	@Column
	private String enderecoIp;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getDataAlteracao() {
		return dataAlteracao;
	}

	public void setDataAlteracao(Date dataAlteracao) {
		this.dataAlteracao = dataAlteracao;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getEnderecoIp() {
		return enderecoIp;
	}

	public void setEnderecoIp(String enderecoIp) {
		this.enderecoIp = enderecoIp;
	}
}