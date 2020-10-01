package br.com.hslife.educalife.action;

import org.openxava.actions.*;
import org.openxava.jpa.*;
import org.openxava.util.*;

import br.com.hslife.educalife.enumeration.*;
import br.com.hslife.educalife.model.*;

public class GestaoContratoEncerrarAction extends ViewBaseAction {
	
	@Override
	public void execute() throws Exception {
		try {
		
			// Busca o contrato
			Contrato contrato = XPersistence.getManager().find(Contrato.class, getView().getValue("id"));
			
			// Verifica a situação atual do contrato para poder mudar o status
			if (contrato.getSituacaoContrato().equals(SituacaoContrato.VIGENTE)) {
				
				contrato.setSituacaoContrato(SituacaoContrato.ENCERRADO);
				XPersistence.getManager().merge(contrato);
				addMessage("contrato_encerrar_contrato_sucesso", contrato.getNumeroContrato());
				
			} else {
				addError("contrato_encerrar_contrato_error", contrato.getNumeroContrato());
			}
			
			getView().clear();
			
		} catch (Exception e) {
			throw new SystemException(e.getMessage(), e);
		}
		
	}

}