package br.com.ocorrencias.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProtocoloController {
	
	@RequestMapping("listaProtocolo")
	public String getFormListaProtocolo(Model model) {
		return "lista-protocolo";
	}
}
