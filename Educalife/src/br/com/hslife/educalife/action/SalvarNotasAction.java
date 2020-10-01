package br.com.hslife.educalife.action;

import java.math.*;
import java.util.*;

import org.openxava.actions.*;
import org.openxava.jpa.*;
import org.openxava.util.*;

import br.com.hslife.educalife.model.*;

public class SalvarNotasAction extends ViewBaseAction {
	
	@SuppressWarnings("rawtypes")
	@Override
	public void execute() throws Exception {
		try {
		
			// Busca a inscrição
			InscricaoTurma inscricaoTurma = XPersistence.getManager().find(InscricaoTurma.class, getView().getValue("id"));
			
			// Remove as avaliações existentes
			inscricaoTurma.getResultadoAvaliacao().clear();
			
			// Set para tratar as avaliações duplicadas
			Set<ResultadoAvaliacao> resultadoAvaliacaoSet = new LinkedHashSet<>();
			
			// Busca e itera o Map de ResultadoAvaliacao para buscar os valores
			List resultadoAvaliacaoMap = (List)getView().getValue("resultadoAvaliacao");
			for (Iterator i = resultadoAvaliacaoMap.iterator(); i.hasNext(); ) {
				Map obj = (Map)i.next();
				
				// Seta os valores no resultadoAvaliacao quando o avaliação não é nulo
				Avaliacao avaliacao = XPersistence.getManager().find(Avaliacao.class, ((Map)obj.get("avaliacao")).get("id"));
				if (avaliacao != null) {
					ResultadoAvaliacao resultadoAvaliacao = new ResultadoAvaliacao();
					resultadoAvaliacao.setAvaliacao(avaliacao);
					resultadoAvaliacao.setJustificativa((String)obj.get("justificativa"));
					resultadoAvaliacao.setNota((BigDecimal)obj.get("nota"));
					resultadoAvaliacao.setNotaRevisada((BigDecimal)obj.get("notaRevisada"));
					resultadoAvaliacao.setRevisado((boolean)obj.get("revisado"));
					
					// Atribui o resultado no Set para tratar as duplicadas
					resultadoAvaliacaoSet.add(resultadoAvaliacao);
				}
			}
			
			// Atribui as frequencias na inscrição
			inscricaoTurma.getResultadoAvaliacao().addAll(resultadoAvaliacaoSet);
			
			// Salva a inscrição junto com a frequência
			XPersistence.getManager().merge(inscricaoTurma);
			
			addMessage("notas_salva_sucesso", inscricaoTurma.getPessoaFisica().getNome());
			getView().clear();
			
		} catch (Exception e) {
			throw new SystemException(e.getMessage(), e);
		}
		
	}

}