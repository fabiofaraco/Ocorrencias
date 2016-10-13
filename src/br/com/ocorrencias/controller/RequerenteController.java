package br.com.ocorrencias.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RequerenteController {
	
	@RequestMapping("listaRequerente")
	public String getForm(Model model) {
		return "lista-requerente";
	}
}
