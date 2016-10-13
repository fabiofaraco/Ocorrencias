package br.com.ocorrencias.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.ocorrencias.bean.Usuario;
import br.com.ocorrencias.dao.Dao;
import br.com.ocorrencias.dao.GenericDao;
import br.com.ocorrencias.dao.InterfaceUsuarioDao;
import br.com.ocorrencias.dao.UsuarioDao;

@Controller
public class UsuarioController {
	
	@RequestMapping("listaUsuario")
	public String getForm(Model model) {
		Dao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		List<Usuario> usuarios = dao.getLista("select u from Usuario u");
		
		model.addAttribute("usuarios", usuarios);
		
		return "lista-usuario";
	}
	
	@RequestMapping("removerUsuario")
	public String removerUsuario(Usuario usuario, RedirectAttributes redirectAttributes) {
		Dao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		dao.remover(usuario.getId());
		
		redirectAttributes.addFlashAttribute("msg", "Usuário removido com sucesso");
		return "redirect:listaUsuario";
	}
	
	@RequestMapping("carregaVisualizacao")
	public @ResponseBody Usuario visualizarUsuario(Long id) {
		InterfaceUsuarioDao dao = new UsuarioDao();
		
		Usuario usuario = new Usuario();
		usuario.setNome("Teste");
		
		return usuario;
	}
}
