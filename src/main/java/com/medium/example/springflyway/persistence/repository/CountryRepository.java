package com.medium.example.springflyway.persistence.repository;

import com.medium.example.springflyway.persistence.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, Long> {
}
