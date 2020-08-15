package br.com.hslife.educalife.enumeration;

public enum StatusInscricao {
	
	PENDENTE("Pendente"), // inscrição pendente de aprovação por um admin 
	INSCRITO("Inscrito"),  // inscrição aprovada por um admin
	APROVADO("Aprovado"), // inscrição concluiu o curso com aproveitamento
	REPROVADO("Reprovado"), // inscrição concluir o curso mas não obteve aproveitamento
	EVADIDO("Evadido"), // inscrição desistiu do curso
	REMOVIDO("Removido"), // inscrição removido por um admin
	CADASTRO_RESERVA("Cadastro reserva"), // inscrição entrou em cadastro reserva
	SUBSTITUIDO("Substituido"); // inscrição que foi substituída por outra em uma turma
	
	private String descricao;
	
	private StatusInscricao(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
 
}
