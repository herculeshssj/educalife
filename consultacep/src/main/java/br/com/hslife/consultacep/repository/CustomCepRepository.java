package br.com.hslife.consultacep.repository;

import java.util.List;

import br.com.hslife.consultacep.entity.Cep;

public interface CustomCepRepository {
    
    Cep findRandomCep(int indice);
}
