package br.com.hslife.educalife.enumeration;

public enum FuncaoEquipe {

	COORDENADOR("Coordenador"),
	INSTRUTOR("Instrutor"),
	MEMBRO_EQUIPE("Membro da Equipe"),
	MONITOR("Monitor"),
	PALESTRANTE("Palestrante"),
	TUTOR("Tutor");
	
	private String descricao;
	
	private FuncaoEquipe(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
}
