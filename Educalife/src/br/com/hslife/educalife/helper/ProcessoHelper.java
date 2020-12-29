package br.com.hslife.educalife.helper;

import java.math.BigInteger;
import java.time.LocalDate;
import java.util.zip.CRC32;

import org.openxava.jpa.XPersistence;

import br.com.hslife.educalife.model.Departamento;
import br.com.hslife.educalife.model.Empresa;
import br.com.hslife.educalife.model.TipoDocumento;

public class ProcessoHelper {

    public static String gerarNumeroDocumento(String idTipoDocumento) {
        // Busca o tipo de documento
        TipoDocumento tipoDocumento = XPersistence.getManager()
            .createQuery("SELECT t FROM TipoDocumento t WHERE t.id = :idTipoDocumento", TipoDocumento.class)
            .setParameter("idTipoDocumento", idTipoDocumento)
            .getSingleResult();

        // Ano corrente
        String anoCorrente = Integer.toString(LocalDate.now().getYear());

        // Busca o próximo sequencial do tipo de documento
        BigInteger quantDocumentos = (BigInteger)XPersistence.getManager()
            .createNativeQuery("select count(*) from documento_processo p "+
                "where date_part('year', data_criacao) = date_part('year', now())")
            .getSingleResult();

        // Sequencial do processo
        String sequencialDocumento = String.format("%05d", quantDocumentos.intValue() + 1);

        // Retorna o número do documento
        return anoCorrente + "." + tipoDocumento.getCodigo() + "." + sequencialDocumento;
    }
    
    public static String gerarNumeroProcesso(Departamento departamento) {
        String numeroProcessoGerado = "";

        // Busca a empresa
        Empresa empresa = XPersistence.getManager()
            .createQuery("SELECT e FROM Departamento d JOIN d.unidade u JOIN u.empresa e WHERE d.id = :idDepartamento", Empresa.class)
            .setParameter("idDepartamento", departamento.getId())
            .getSingleResult();

        // Limpa o CNPJ da empresa
        String cpnjEmpresa = empresa.getCnpjEmpresa().replace(".", "").replace("-", "").replace("/", "");

        // Busca o próximo sequencial de processo
        BigInteger quantProcessos = (BigInteger)XPersistence.getManager()
            .createNativeQuery("select count(*) from processo p "+
                "inner join departamento d on d.id = p.id_departamento "+
                "inner join unidade u on u.id = d.id_unidade "+
                "inner join empresa e on e.id = u.id_empresa "+
                "where date_part('year', data_abertura) = date_part('year', now()) " + 
                "and e.id = :idEmpresa")
            .setParameter("idEmpresa", empresa.getId())
            .getSingleResult();

        // Sequencial do processo
        String sequencialProcesso = String.format("%06d", quantProcessos.intValue() + 1);
        
        // Pega o ano corrente
        String anoCorrente = Integer.toString(LocalDate.now().getYear());

        // Gera o número do processo sem o dígito verificador
        numeroProcessoGerado = cpnjEmpresa.substring(0, 8) + "." + sequencialProcesso + "/" + anoCorrente + "-";

        // Gera o dígito verificador
        CRC32 crc = new CRC32();
        crc.update(numeroProcessoGerado.getBytes());
        numeroProcessoGerado = numeroProcessoGerado + String.valueOf(crc.getValue()).substring(7, 9);
        
        return numeroProcessoGerado;
    }
}
