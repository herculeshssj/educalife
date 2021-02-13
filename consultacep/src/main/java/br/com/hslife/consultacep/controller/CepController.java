package br.com.hslife.consultacep.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import br.com.hslife.consultacep.entity.Cep;
import br.com.hslife.consultacep.repository.CepRepository;

@RestController
public class CepController {
    
    @Autowired
    CepRepository repository;

    @GetMapping("/{cep}")
    public List<Cep> findByCep(@PathVariable Integer cep) {
        return repository.findByCep(cep);
    }

    @GetMapping("/aleatorio")
    public Cep randomFindCep() {
        // Obtém a quantidade de registros
        long quantRegistros = repository.count();

        // Escolhe um ID aleatoriamente
        int id = new Random().nextInt((int)quantRegistros);

        // Retorna o CEP a partir do ID informado
        return repository.findRandomCep(id);
    }
}
