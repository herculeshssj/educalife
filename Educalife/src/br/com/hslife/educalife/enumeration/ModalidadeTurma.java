package br.com.hslife.educalife.enumeration;

public enum ModalidadeTurma {
	
	PRESENCIAL("Presencial"), 
	DISTANCIA("À Distância"), 
	SEMIPRESENCIAL("Semipresencial");
	
	private String descricao;
	
	private ModalidadeTurma(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
 
}
