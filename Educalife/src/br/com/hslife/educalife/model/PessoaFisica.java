package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="pessoa_fisica")
@View(members = "geral { nome, cpf; "
		+ "dataNascimento, estadoCivil;"
		+ "nomePai, nomeMae; "
		+ "nacionalidade, naturalidade;"
		+ "tipoSanguineo ; "
		+ "genero } ;"
		+ "endereco { endereco } ;"
		+ "contatos { contatos };"
		+ "documentos { documentosIdentidade } "
)
@Tab(properties = "nome, cpf, dataNascimento, estadoCivil.descricao")		
public class PessoaFisica extends Identifiable {

	@Column(name = "nome", nullable = false)
	@Required
	private String nome;
	
	@Column(name = "cpf", nullable = false)
	@Required
	private String cpf;
	
	@Column(name = "data_nascimento", nullable = false)
	private LocalDate dataNascimento;
	
	@Column(name="nome_pai", nullable = true)
	private String nomePai;
	
	@Column(name="nome_mae", nullable = true)
	private String nomeMae;
	
	@ManyToOne(optional = true)
	@JoinColumn(name="id_estado_civil", nullable = true)
	@DescriptionsList(descriptionProperties = "descricao", order = "${descricao} asc")
	private EstadoCivil estadoCivil;
	
	@ManyToOne(optional = true)
	@JoinColumn(name="id_nacionalidade", nullable = true)
	@DescriptionsList(descriptionProperties = "denominacao", order = "${denominacao} asc")
	private Pais nacionalidade;
	
	@Column(nullable = true)
	private String naturalidade;
	
	@Enumerated(EnumType.STRING)
	@Column(name="tipo_sanguineo")
	private TipoSanguineo tipoSanguineo;
	
	@ManyToOne(optional = true)
	@JoinColumn(name="id_genero", nullable = true)
	@DescriptionsList(descriptionProperties = "descricao", order = "${descricao} asc")
	private Genero genero;
	
	@Embedded
	@ReferenceView(value = "endereco")
	private Endereco endereco;
	
	@ElementCollection
	@ListProperties("tipoContato, descricao, observacao")
	private Collection<Contato> contatos;
	
	@ElementCollection
	@ListProperties("tipoIdentidade, numero, orgaoExpedidor, dataExpedicao, complemento")
	private Collection<DocumentoIdentidade> documentosIdentidade;
	
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

	public Collection<Contato> getContatos() {
		return contatos;
	}

	public void setContatos(Collection<Contato> contatos) {
		this.contatos = contatos;
	}

	public LocalDate getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(LocalDate dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public Collection<DocumentoIdentidade> getDocumentosIdentidade() {
		return documentosIdentidade;
	}

	public void setDocumentosIdentidade(Collection<DocumentoIdentidade> documentosIdentidade) {
		this.documentosIdentidade = documentosIdentidade;
	}

	public String getNomePai() {
		return nomePai;
	}

	public void setNomePai(String nomePai) {
		this.nomePai = nomePai;
	}

	public String getNomeMae() {
		return nomeMae;
	}

	public void setNomeMae(String nomeMae) {
		this.nomeMae = nomeMae;
	}

	public EstadoCivil getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(EstadoCivil estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getNaturalidade() {
		return naturalidade;
	}

	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}

	public Pais getNacionalidade() {
		return nacionalidade;
	}

	public void setNacionalidade(Pais nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public TipoSanguineo getTipoSanguineo() {
		return tipoSanguineo;
	}

	public void setTipoSanguineo(TipoSanguineo tipoSanguineo) {
		this.tipoSanguineo = tipoSanguineo;
	}

	public Genero getGenero() {
		return genero;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}
}
