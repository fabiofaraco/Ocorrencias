package br.com.ocorrencias.dao;

import java.util.List;

import br.com.ocorrencias.bean.Cidade;

public interface InterfaceEnderecoDao {
	public List<Cidade> carregarCidade(int id);
}
