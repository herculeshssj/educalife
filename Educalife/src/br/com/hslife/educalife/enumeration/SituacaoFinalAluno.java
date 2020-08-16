package br.com.hslife.educalife.enumeration;

public enum SituacaoFinalAluno {
	
	APROVADO("Aprovado"), // inscrição concluiu o curso com aproveitamento
	REPROVADO("Reprovado"); // inscrição concluir o curso mas não obteve aproveitamento
	
	private String descricao;
	
	private SituacaoFinalAluno(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
 
}
