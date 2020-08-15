package br.com.hslife.educalife.enumeration;

public enum StatusCurso {
	
	ATIVO("Ativo"),
	INATIVO("Inativo");
	
	private String descricao;
	
	private StatusCurso(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
 
}
