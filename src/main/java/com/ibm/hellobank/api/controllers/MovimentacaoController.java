package com.ibm.hellobank.api.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ibm.hellobank.api.dto.NovaMovimentacao;
import com.ibm.hellobank.api.dto.NovoCorrentista;
import com.ibm.hellobank.api.model.Correntista;
import com.ibm.hellobank.api.model.Movimentacao;
import com.ibm.hellobank.api.repository.CorrentistaRepository;
import com.ibm.hellobank.api.repository.MovimentacaoRepository;
import com.ibm.hellobank.api.service.CorrentistaService;
import com.ibm.hellobank.api.service.MovimentacaoService;

@RestController
@RequestMapping("/movimentacoes")
public class MovimentacaoController {
	
	@Autowired
	private MovimentacaoRepository repository;
	
	@Autowired
	private MovimentacaoService service;
	
	@GetMapping
	public List<Movimentacao>findAll() {
		return repository.findAll();
	}
	
	@PostMapping
	public void save(@RequestBody NovaMovimentacao movimentacao) {
		service.save(movimentacao);
	}
}
