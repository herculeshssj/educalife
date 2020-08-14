package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="pessoa_fisica")
@View(members = "geral { nome, cpf} ; "
				+ "endereco { endereco }"
)
public class PessoaFisica extends Identifiable {

	@Column(name = "nome", nullable = false)
	@Required
	private String nome;
	
	@Column(name = "cpf", nullable = true)
	@Required
	private String cpf;
	
	@Embedded
	@ReferenceView(value = "endereco")
	private Endereco endereco;
	
	/*** Seção de métodos Getters e Setters customizados ***/
	
	public Endereco getEndereco() {
		if (this.endereco == null)
			this.endereco = new Endereco();
		
		return this.endereco;
	}
	
	/*** Fim da seção ***/

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
}
