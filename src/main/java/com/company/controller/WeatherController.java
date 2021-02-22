package com.company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.domain.WeatherVO;
import com.company.service.WeatherService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/weather/*")
public class WeatherController {
	
	@Autowired
	private WeatherService service;
	
	@GetMapping("/WeatherAPI") 
	public void weatherapi() {
		log.info("날씨 페이지");
	}
	
	@PostMapping("/insert")
	public String weather_index(@ModelAttribute("weather") WeatherVO weather) {
		log.info("인덱스 페이지");
		
		if(service.insertWeather(weather)) {
			return "redirect:admin";
		} else {
			return "/weather/WeatherAPI";
		}
		
		
		
	}
	
	@GetMapping("/admin")
	public void weatheradmin(Model model) {
		log.info("관리");
		List<WeatherVO> weatherlist = service.selectAll();
		log.info("위젯 홈"+weatherlist);
		model.addAttribute("weatherlist", weatherlist);
		
		
	}
	
	@GetMapping("/index")
	public void weatherindex(Model model) {
		log.info("위젯 홈");
		List<WeatherVO> weather = service.selectAll();
		log.info("위젯 홈"+weather);
		model.addAttribute("weather", weather);
	}
	@PostMapping("/delete")
	public String deleteWeather(String city) {
		log.info("삭제"+city);
		
		service.deleteWeather(city);
		return "redirect:admin";
		
	}
}
