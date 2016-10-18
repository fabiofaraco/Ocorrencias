package br.com.ocorrencias.controller;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.ocorrencias.bean.Requerente;
import br.com.ocorrencias.dao.Dao;
import br.com.ocorrencias.dao.GenericDao;
import br.com.ocorrencias.propertyEditor.DataPropertyEditor;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class RequerenteController {
	
	@InitBinder
	public void customizeBinding(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class,  new DataPropertyEditor());
	}
	
	@RequestMapping("listaRequerente")
	public String getFormListaRequerente(Model model) {
		Dao<Requerente> dao = new GenericDao<Requerente>(Requerente.class);
		List<Requerente> requerentes = dao.getLista("select r from Requerente r");
		
		model.addAttribute("requerentes", requerentes);
		
		return "lista-requerente";
	}
	
	@RequestMapping("cadastroRequerente")
	public String getFormCadastroRequerente(Requerente requerente, Model model) {
		
		return "cadastro-requerente";
	}
	
	@RequestMapping("removerRequerente")
	public String removerRequerente(Requerente requerente, RedirectAttributes redirectAttributes) {
		Dao<Requerente> dao = new GenericDao<Requerente>(Requerente.class);
		dao.remover(requerente.getId());
		
		redirectAttributes.addFlashAttribute("msgSuccess", "Requerente removido com sucesso");
		return "redirect:listaRequerente";
	}
	
	@RequestMapping("salvarRequerente")
	public String salvarRequerente(Requerente requerente, RedirectAttributes redirectAttributes) {
		Dao<Requerente> dao = new GenericDao<Requerente>(Requerente.class);
		String msg = "";
		
		if(requerente.getId() == 0) {
			dao.incluir(requerente);
			msg = "O requerente "+requerente.getNome()+" foi inclu�do com sucesso";
		} else {
			dao.alterar(requerente);
			msg = "O requerente "+requerente.getNome()+" foi alterado com sucesso";
		}
		
		redirectAttributes.addFlashAttribute("msgSuccess", msg);
		return "redirect:listaRequerente";
	}
	
	
	@RequestMapping("carregarRequerente")
	public String carregarRequerente(Requerente requerente, Model model) {
		Dao<Requerente> dao = new GenericDao<Requerente>(Requerente.class);
		
		model.addAttribute("requerente", dao.buscar(requerente.getId()));
		
		return "cadastro-requerente";
	}
	
	@RequestMapping("carregaVisualizacaoRequerente")
	public @ResponseBody String visualizarRequerente(int id) {
		Dao<Requerente> dao = new GenericDao<Requerente>(Requerente.class);
		Requerente requerente = dao.buscar(id);
		ObjectMapper mapper = new ObjectMapper();
		
		String requerenteJson = "";
		try {
			requerenteJson = mapper.writeValueAsString(requerente);
		} catch (JsonProcessingException e) {
			requerenteJson = "";
			e.printStackTrace();
		}
		
		return requerenteJson;
	}
}
