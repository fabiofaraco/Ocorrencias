package br.com.ocorrencias.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.ocorrencias.bean.Perfil;
import br.com.ocorrencias.bean.Usuario;
import br.com.ocorrencias.dao.Dao;
import br.com.ocorrencias.dao.GenericDao;
import br.com.ocorrencias.propertyEditor.PerfilPropertyEditor;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class UsuarioController {
	
	@InitBinder
	public void customizeBinding(WebDataBinder binder) {
		binder.registerCustomEditor(Perfil.class,  new PerfilPropertyEditor());
	}
	
	@RequestMapping("listaUsuario")
	public String getForm(Model model) {
		Dao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		List<Usuario> usuarios = dao.getLista("select u from Usuario u");
		
		model.addAttribute("usuarios", usuarios);
		
		return "lista-usuario";
	}
	
	@RequestMapping("cadastroUsuario")
	public String getFormCadastro(Usuario usuario, Model model) {
		Dao<Perfil> dao = new GenericDao<Perfil>(Perfil.class);
		List<Perfil> perfis = dao.getLista("select p from Perfil p");
		
		model.addAttribute("perfis", perfis);
		
		return "cadastro-usuario";
	}
	
	@RequestMapping("removerUsuario")
	public String removerUsuario(Usuario usuario, RedirectAttributes redirectAttributes) {
		Dao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		dao.remover(usuario.getId());
		
		redirectAttributes.addFlashAttribute("msgSuccess", "Usuário removido com sucesso");
		return "redirect:listaUsuario";
	}
	
	@RequestMapping("salvarUsuario")
	public String salvarUsuario(Usuario usuario, RedirectAttributes redirectAttributes) {
		Dao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		String msg = "";
		
		if(usuario.getId() == 0) {
			dao.incluir(usuario);
			msg = "O usuário "+usuario.getNome()+" foi incluído com sucesso";
		} else {
			dao.alterar(usuario);
			msg = "O usuário "+usuario.getNome()+" foi alterado com sucesso";
		}
		
		redirectAttributes.addFlashAttribute("msgSuccess", msg);
		return "redirect:listaUsuario";
	}
	
	
	@RequestMapping("carregarUsuario")
	public String carregarUsuario(Usuario usuario, Model model) {
		Dao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		
		Dao<Perfil> daoPerfil = new GenericDao<Perfil>(Perfil.class);
		List<Perfil> perfis = daoPerfil.getLista("select p from Perfil p");
		
		model.addAttribute("usuario", dao.buscar(usuario.getId()));
		model.addAttribute("perfis", perfis);
		
		return "cadastro-usuario";
	}
	
	@RequestMapping("carregaVisualizacao")
	public @ResponseBody String visualizarUsuario(int id) {
		Dao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		Usuario usuario = dao.buscar(id);
		ObjectMapper mapper = new ObjectMapper();
		
		String usuarioJson = "";
		try {
			usuarioJson = mapper.writeValueAsString(usuario);
		} catch (JsonProcessingException e) {
			usuarioJson = "";
			e.printStackTrace();
		}
		
		return usuarioJson;
	}
}
