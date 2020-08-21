package br.com.hslife.educalife.model;

import java.sql.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="log_acesso", schema = "audit")
@Tab(properties = "dataHora, usuario, ip, acao, entidade, idEntidade")
public class LogAcesso extends Identifiable {
	
	@Column(name="data_hora")
	@ReadOnly
	private Timestamp dataHora;
	
	@Column
	@ReadOnly
	private String usuario;
	
	@Column
	@ReadOnly
	private String ip;
	
	@Column
	@ReadOnly
	private String acao;
	
	@Column
	@ReadOnly
	private String entidade;
	
	@Column(name="id_entidade")
	@ReadOnly
	private String idEntidade;
	
	@Column(columnDefinition = "text")
	@Stereotype("MEMO")
	@ReadOnly
	private String mudancas;
	
	public LogAcesso() {
		
	}
	
	public LogAcesso(Timestamp dataHora, String usuario, String ip, String acao, String entidade, String idEntidade, String mudancas) {
		this.dataHora = dataHora;
		this.usuario = usuario;
		this.ip = ip;
		this.acao = acao;
		this.entidade = entidade;
		this.idEntidade = idEntidade;
		this.mudancas = mudancas;
	}

	public Timestamp getDataHora() {
		return dataHora;
	}

	public void setDataHora(Timestamp dataHora) {
		this.dataHora = dataHora;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getAcao() {
		return acao;
	}

	public void setAcao(String acao) {
		this.acao = acao;
	}

	public String getEntidade() {
		return entidade;
	}

	public void setEntidade(String entidade) {
		this.entidade = entidade;
	}

	public String getIdEntidade() {
		return idEntidade;
	}

	public void setIdEntidade(String idEntidade) {
		this.idEntidade = idEntidade;
	}

	public String getMudancas() {
		return mudancas;
	}

	public void setMudancas(String mudancas) {
		this.mudancas = mudancas;
	}
}