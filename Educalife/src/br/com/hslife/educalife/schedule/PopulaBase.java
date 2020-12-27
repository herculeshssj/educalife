package br.com.hslife.educalife.schedule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;

import br.com.hslife.educalife.sample.Sample;

@Component("populaBaseService")
public class PopulaBase {

	@Autowired
	Sample sample;

	public void populaBase() {
		sample.populaBase();
	}
}