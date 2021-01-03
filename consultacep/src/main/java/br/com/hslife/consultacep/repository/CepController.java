package br.com.hslife.consultacep.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import br.com.hslife.consultacep.entity.Cep;

@RestController
public class CepController {
    
    @Autowired
    CepRepository repository;

    @GetMapping("/{cep}")
    public List<Cep> findByCep(@PathVariable Integer cep) {
        return repository.findByCep(cep);
    }
}
