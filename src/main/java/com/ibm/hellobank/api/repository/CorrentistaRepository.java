package com.ibm.hellobank.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ibm.hellobank.api.model.Correntista;

public interface CorrentistaRepository extends JpaRepository<Correntista, Integer> {

}
