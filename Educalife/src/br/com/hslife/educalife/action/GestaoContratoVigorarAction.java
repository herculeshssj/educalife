package br.com.hslife.educalife.action;

import org.openxava.actions.*;
import org.openxava.jpa.*;
import org.openxava.util.*;

import br.com.hslife.educalife.enumeration.*;
import br.com.hslife.educalife.model.*;

public class GestaoContratoVigorarAction extends ViewBaseAction {
	
	@Override
	public void execute() throws Exception {
		try {
		
			// Busca o contrato
			Contrato contrato = XPersistence.getManager().find(Contrato.class, getView().getValue("id"));
			
			// Verifica a situação atual do contrato para poder mudar o status
			if (contrato.getSituacaoContrato().equals(SituacaoContrato.NOVO)) {
				
				contrato.setSituacaoContrato(SituacaoContrato.VIGENTE);
				XPersistence.getManager().merge(contrato);
				addMessage("contrato_vigorar_contrato_sucesso", contrato.getNumeroContrato());
				
			} else {
				addError("contrato_vigorar_contrato_error", contrato.getNumeroContrato());
			}
			
			getView().clear();
			
		} catch (Exception e) {
			throw new SystemException(e.getMessage(), e);
		}
		
	}

}