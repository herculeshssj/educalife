package br.com.hslife.educalife.schedule;

import java.util.Random;
import java.util.UUID;

import org.openxava.jpa.XPersistence;
import org.springframework.stereotype.*;

import br.com.hslife.educalife.model.Cargo;
import br.com.hslife.educalife.patterns.Builder;

@Component("populaBaseService")
public class PopulaBase {

	public void populaBase() {

		populaCargo();
		
		System.out.println("Base populada com sucesso!");
	}

	private void populaCargo() {
		try {

			// Popula a tabela de cargo
			Builder<Cargo> cargoBuilder = new Builder<>(new Cargo());
			Cargo cargo = cargoBuilder.set("codigoCbo", String.valueOf(new Random().nextInt(999999)))
				.set("denominacao", this.geraTexto("Cargo "))
				.set("ativo", true)
				.build();

			XPersistence.getManager().persist(cargo);
			XPersistence.commit();

		} catch (Exception e) {
			XPersistence.rollback();
			e.printStackTrace();
		}
	}

	private String geraTexto(String texto) {
		String textoGerado = texto + UUID.randomUUID().toString().substring(0, 8);
		return textoGerado;
	}
}