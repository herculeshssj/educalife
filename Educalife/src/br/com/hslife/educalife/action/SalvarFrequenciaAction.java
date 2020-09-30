package br.com.hslife.educalife.action;

import java.util.*;

import org.openxava.actions.*;
import org.openxava.jpa.*;
import org.openxava.util.*;

import br.com.hslife.educalife.model.*;

public class SalvarFrequenciaAction extends ViewBaseAction {
	
	@SuppressWarnings("rawtypes")
	@Override
	public void execute() throws Exception {
		try {
		
			// Busca a inscrição
			InscricaoTurma inscricaoTurma = XPersistence.getManager().find(InscricaoTurma.class, getView().getValue("id"));
			
			// Remove todas as frequência
			inscricaoTurma.getFrequencia().clear();
			
			// Set para tratar as frequencias duplicadas
			Set<Frequencia> frequenciaSet = new LinkedHashSet<>();
			
			// Busca e itera o Map de frequência para buscar os valores
			List frequenciaMap = (List)getView().getValue("frequencia");
			for (Iterator i = frequenciaMap.iterator(); i.hasNext();) {
				
				Map obj = (Map)i.next();
				
				// Seta os valores na frequência quando aula não é nulo
				Aula aula = XPersistence.getManager().find(Aula.class, ((Map)obj.get("aula")).get("id"));
				if (aula != null) {
					Frequencia frequencia = new Frequencia();
					
					frequencia.setAula(aula);
					frequencia.setCompareceu((boolean)obj.get("compareceu"));
					frequencia.setAbonado((boolean)obj.get("abonado"));
					frequencia.setJustificativa((String)obj.get("justificativa"));
					
					// Evita de 'compareceu' e 'abonado' serem marcados ao mesmo tempo
					if (frequencia.isAbonado())
						frequencia.setCompareceu(false);
					
					// Atribui a frequência no Set para tratar as duplicatas
					frequenciaSet.add(frequencia);
					
				}
				
			}
			
			// Atribui as frequencias na inscrição
			inscricaoTurma.getFrequencia().addAll(frequenciaSet);
			
			// Salva a inscrição junto com a frequência
			XPersistence.getManager().merge(inscricaoTurma);
			
			addMessage("frequencia_salva_sucesso", inscricaoTurma.getPessoaFisica().getNome());
			getView().clear();
			
		} catch (Exception e) {
			throw new SystemException("erro_salvar_frequencia", e);
		}
		
	}

}