package com.medium.example.springflyway.persistence.repository;

import com.medium.example.springflyway.persistence.entity.State;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StateRepository extends JpaRepository<State, Long> {

    List<State> findAllByCountryAlpha2IgnoreCase(String alpha2);

}
