package com.company.service;

import java.util.List;

import com.company.domain.WeatherVO;

public interface WeatherService {
	boolean insertWeather(WeatherVO weather);
	List<WeatherVO> selectAll();
	boolean deleteWeather(String city);
}
