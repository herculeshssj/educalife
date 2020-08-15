package br.com.hslife.educalife.enumeration;

public enum StatusTurma {
	
	ATIVO("Ativo"),
	INATIVO("Inativo");
	
	private String descricao;
	
	private StatusTurma(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
 
}
