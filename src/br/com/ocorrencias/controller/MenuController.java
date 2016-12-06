package br.com.ocorrencias.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ocorrencias.bean.Usuario;
import br.com.ocorrencias.dao.Dao;
import br.com.ocorrencias.dao.GenericDao;

@Controller
public class MenuController {

	@RequestMapping("menuPrincipal")
	public String formLogin(Model model) {
		Dao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		List<Usuario> usuarios = dao.getLista("select u from Usuario u");
		
		model.addAttribute("usuarios", usuarios);		
		return "menu-principal";
	}
}