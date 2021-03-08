package com.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class ExchangeRateController {
	
	@GetMapping("/ExchangeRate/ExchangeRate")
	public void exchageRate() {
		log.info("환율 페이지");
		
		
	}
}
