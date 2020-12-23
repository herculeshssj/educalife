package br.com.hslife.educalife.sample;

import org.openxava.jpa.XPersistence;

import br.com.hslife.educalife.model.Cargo;
import br.com.hslife.educalife.patterns.Builder;
import br.com.hslife.educalife.util.Util;

public class SampleCargo {
    
    public static void populaCargo() {
		try {

			// Popula a tabela de cargo
			Builder<Cargo> cargoBuilder = new Builder<>(new Cargo());
			Cargo cargo = cargoBuilder.set("codigoCbo", String.valueOf(Util.getRandomInt(999999)))
				.set("denominacao", "Cargo " + Util.getRandomString().substring(0,8))
				.set("ativo", true)
				.build();

			XPersistence.getManager().persist(cargo);
			XPersistence.commit();

		} catch (Exception e) {
			XPersistence.rollback();
			e.printStackTrace();
		}
	}
}