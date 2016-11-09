package br.com.ocorrencias.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OcorrenciaController {

	@RequestMapping("listaOcorrencia")
	public String formLista() {
		return "lista-ocorrencia";
	}
	
	@RequestMapping("cadastroOcorrencia")
	public String formCadastro() {
		return "cadastro-ocorrencia";
	}
}
