package br.com.hslife.educalife.action;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.openxava.actions.ViewBaseAction;
import org.openxava.jpa.XPersistence;
import org.openxava.util.SystemException;

import br.com.hslife.educalife.model.Aula;
import br.com.hslife.educalife.model.Frequencia;
import br.com.hslife.educalife.model.InscricaoTurma;

public class GerarFrequenciaAction extends ViewBaseAction {
    
    @Override
    public void execute() throws Exception {
        try {
		
			// Busca a inscrição
            InscricaoTurma inscricaoTurma = XPersistence.getManager().find(InscricaoTurma.class, getView().getValue("id"));
            
            // Busca as aulas para a turma
            List<Aula> aulas = XPersistence.getManager().createQuery("SELECT a FROM Aula a WHERE a.turma.id = :idTurma ORDER BY a.dataAula ASC", Aula.class)
                .setParameter("idTurma", inscricaoTurma.getTurma().getId())
                .getResultList();
			
			// Set para tratar as frequencias duplicadas
            Set<Frequencia> frequenciaSet = new LinkedHashSet<>();
            
            // Itera a lista de aulas para gerar as frequencias
            for (Aula a : aulas) {
                Frequencia frequencia = new Frequencia();
					
                frequencia.setAula(a);
                frequencia.setCompareceu(true);
                frequencia.setAbonado(false);
                frequencia.setJustificativa("");
                
                // Atribui a frequência no Set para tratar as duplicatas
                frequenciaSet.add(frequencia);
            }

			// Salva as frequências
			for (Frequencia frequencia: frequenciaSet) {
				XPersistence.getManager().persist(frequencia);
			}
            
            // Zera as frequências existentes
            inscricaoTurma.getFrequencia().clear();

			// Atribui as frequencias na inscrição
			inscricaoTurma.getFrequencia().addAll(frequenciaSet);
			
			// Salva a inscrição junto com a frequência
			XPersistence.getManager().merge(inscricaoTurma);
			
			addMessage("frequencia_gerar_sucesso", inscricaoTurma.getPessoaFisica().getNome());
			getView().clear();
			
		} catch (Exception e) {
			throw new SystemException(e.getMessage(), e);
		}
    }
}
