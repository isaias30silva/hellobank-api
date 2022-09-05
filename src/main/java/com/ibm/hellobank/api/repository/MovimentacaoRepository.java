package com.ibm.hellobank.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ibm.hellobank.api.model.Movimentacao;

public interface MovimentacaoRepository extends JpaRepository<Movimentacao, Integer> {

}
