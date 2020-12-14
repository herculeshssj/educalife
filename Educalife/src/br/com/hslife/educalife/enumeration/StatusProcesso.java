package br.com.hslife.educalife.enumeration;

public enum StatusProcesso {
    ATIVO("Ativo"),
    SUSPENSO("Suspenso"),
    ENCERRADO("Encerrado"),
    ARQUIVADO("Arquivado");
	
	private String descricao;
	
	private StatusProcesso(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
}
