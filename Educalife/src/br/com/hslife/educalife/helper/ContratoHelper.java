package br.com.hslife.educalife.helper;

import java.math.BigInteger;
import java.time.LocalDate;

import br.com.hslife.educalife.dao.ContratoDAO;

public class ContratoHelper {

    public static String gerarNumeroContrato() {
        // Ano corrente
        String anoCorrente = Integer.toString(LocalDate.now().getYear());
        
        // Busca o próximo sequencial de contrato para o ano corrente
        BigInteger quantContratos = new ContratoDAO().countContratoPorAno(LocalDate.now().getYear());

        // Sequencial do contrato
        String sequencialContrato = String.format("%06d", quantContratos.intValue() + 1);

        // Retorna o número do contrato gerado
        return anoCorrente + "." + sequencialContrato;
    }
}
