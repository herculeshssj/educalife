package br.com.hslife.educalife.dao;

import java.util.Optional;

import javax.persistence.NoResultException;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.model.ParametroSistema;

@Component
public class ParametroSistemaDAO {
    
    public Optional<ParametroSistema> findByCodigo(String codigo) {

        Optional<ParametroSistema> parametro = Optional.empty();

        try {
            parametro = Optional.ofNullable(
                XPersistence.getManager()
                .createQuery("SELECT p FROM ParametroSistema p where p.codigo = :codigo", ParametroSistema.class)
                .setParameter("codigo", codigo)
                .getSingleResult()
            );
        } catch (NoResultException e) {
            // Usuário não foi encontrado
        }

        return parametro;
    
    }
}
