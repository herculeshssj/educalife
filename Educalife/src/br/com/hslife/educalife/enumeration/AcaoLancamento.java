package br.com.hslife.educalife.enumeration;

public enum AcaoLancamento {

	AUMENTAR("Aumentar"), 
	BALCAO("Balcão"), 
	CHEQUE("Cheque"), 
	COBRAR_CREDITO("Cobrar, Crédito"), 
	DEBITO_DIRETO("Débito Direto"), 
	DECRESCER("Decrescer"), 
	DEPOSITO_AUTOMATICO("Depósito Automático"), 
	DEPOSITO("Depósito"), 
	DEPOSITO_ATM("Depósito ATM"), 
	JUROS("Juros"), 
	ONLINE("On-line"), 
	PAGAMENTO("Pagamento"), 
	PONTO_VENDA("Ponto de Venda"), 
	RECIBO("Recibo"), 
	RETIRADA_ATM("Retirada ATM"), 
	SAQUE("Saque"), 
	TELEFONE("Telefone"), 
	TRANSFERENCIA("Transferência"), 
	TRANSFERENCIA_ELETRONICA("Transferência Eletrônica");
	
	private String descricao;
	
	private AcaoLancamento(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
}
