package br.com.ocorrencias.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ocorrencias.bean.Menu;

@Controller
public class MenuController {

	@RequestMapping("menuPrincipal")
	public String formLogin(Model model) {
		HashMap<String, Menu> menu = new HashMap<String, Menu>();
		
		Menu menuUsuario = new Menu();
		menuUsuario.setId("btnAdministrador");
		menuUsuario.setName("btnAdministrador");
		menuUsuario.setAction("listaUsuario");
		
		menu.put("Usuário", menuUsuario);

		Menu menuRequerente = new Menu();
		menuRequerente.setId("btnRequerente");
		menuRequerente.setName("btnRequerente");
		menuRequerente.setAction("listaRequerente");
		
		menu.put("Requerente", menuRequerente);
		
		Menu menuOcorrencia = new Menu();
		menuOcorrencia.setId("btnOcorrencia");
		menuOcorrencia.setName("btnOcorrencia");
		menuOcorrencia.setAction("listaOcorrencia");
		
		menu.put("Ocorrência", menuOcorrencia);
		
		Menu menuProtocolo = new Menu();
		menuProtocolo.setId("btnProtocolo");
		menuProtocolo.setName("btnProtocolo");
		menuProtocolo.setAction("listaProtocol");
		
		menu.put("Protocolo", menuProtocolo);
		
		model.addAttribute("menus", menu);
		
		return "menu-principal";
	}
}