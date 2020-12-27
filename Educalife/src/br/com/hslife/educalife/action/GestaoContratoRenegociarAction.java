package br.com.hslife.educalife.action;

import java.time.*;

import org.apache.commons.beanutils.*;
import org.openxava.actions.*;
import org.openxava.jpa.*;
import org.openxava.util.*;

import br.com.hslife.educalife.enumeration.*;
import br.com.hslife.educalife.helper.ContratoHelper;
import br.com.hslife.educalife.model.*;

public class GestaoContratoRenegociarAction extends ViewBaseAction {
	
	@Override
	public void execute() throws Exception {
		try {
		
			// Busca o contrato
			Contrato contrato = XPersistence.getManager().find(Contrato.class, getView().getValue("id"));
			
			// Verifica a situação atual do contrato para poder mudar o status
			if (contrato.getSituacaoContrato().equals(SituacaoContrato.VIGENTE)) {
				
				// Copia os dados do contrato
				Contrato novoContrato = new Contrato();
				BeanUtils.copyProperties(novoContrato, contrato);
				
				// Zera o ID do novo contrato
				novoContrato.setId(null);
				
				// Seta a data de renovação do contrato anterior
				contrato.setDataRenovacao(LocalDate.now());
				
				// Seta o novo número de contrato
				novoContrato.setNumeroContrato(ContratoHelper.gerarNumeroContrato());
				
				// Seta a situação dos contratos
				contrato.setSituacaoContrato(SituacaoContrato.RENEGOCIADO);
				novoContrato.setSituacaoContrato(SituacaoContrato.NOVO);
				
				// Salva as entidades
				XPersistence.getManager().merge(contrato);
				XPersistence.getManager().persist(novoContrato);
				
				addMessage("contrato_renegociar_contrato_sucesso", contrato.getNumeroContrato(), novoContrato.getNumeroContrato());
				
			} else {
				addError("contrato_renegociar_contrato_error", contrato.getNumeroContrato());
			}
			
			getView().clear();
			
		} catch (Exception e) {
			throw new SystemException(e.getMessage(), e);
		}
		
	}

}