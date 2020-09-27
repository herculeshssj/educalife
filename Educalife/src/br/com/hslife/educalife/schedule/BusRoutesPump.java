package br.com.hslife.educalife.schedule;

import org.springframework.stereotype.*;

@Component("busRoutesPumpService")
public class BusRoutesPump {

	public void pump() {
		System.out.println("Pump...");
	}
}
