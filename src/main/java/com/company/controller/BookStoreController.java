package com.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.company.service.ReBookService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BookStoreController {
	
	@Autowired
	private ReBookService service;
	
	@GetMapping("/bookStore/bookstore")
	public void bookStoreMain() {
		log.info("서점 메인 페이지");
	}
	
	@GetMapping("/bookStore/chooseBook")
	public void bookStoreChoose() {
		log.info("책 선택한 페이지");
	}
	
	@GetMapping("/bookStore/HomeStayBookStore")
	public void homestaybookstore() {
		log.info("집콕서점 페이지");
		service.allReBook();
	}
	
	@GetMapping("/bookStore/HomeStayBookStore_admin")
	public void homestaybookstore_admin() {
		log.info("집콕 서점 관리자 페이지");
	}
}
