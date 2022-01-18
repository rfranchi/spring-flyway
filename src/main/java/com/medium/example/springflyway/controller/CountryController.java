package com.medium.example.springflyway.controller;

import com.medium.example.springflyway.persistence.entity.Country;
import com.medium.example.springflyway.persistence.entity.State;
import com.medium.example.springflyway.persistence.repository.CountryRepository;
import com.medium.example.springflyway.persistence.repository.StateRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/v1/country")
@RequiredArgsConstructor
public class CountryController {

    private final CountryRepository countryRepository;
    private final StateRepository stateRepository;

    @GetMapping(value = "/")
    public ResponseEntity<List<Country>> listCountries() {
        return ResponseEntity.ok(countryRepository.findAll());
    }

    @GetMapping(value = "/{alpha2}/states")
    public ResponseEntity<List<State>> listStatesByAlpha2Country(@PathVariable String alpha2) {
        return ResponseEntity.ok(stateRepository.findAllByCountryAlpha2IgnoreCase(alpha2));
    }

}
