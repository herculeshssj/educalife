package br.com.hslife.consultacep.repository;

import br.com.hslife.consultacep.entity.Cep;

public interface CustomCepRepository {
    
    Cep findRandomCep(int indice);
}
