package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.WeatherVO;
import com.company.mapper.WeatherMapper;

@Service
public class WeatherServiceImpl implements WeatherService {
	
	@Autowired
	private WeatherMapper mapper;

	@Override
	public boolean insertWeather(WeatherVO weather) {		
		return mapper.insertWeatherWidget(weather)>0?true:false;
	}

	@Override
	public List<WeatherVO> selectAll() {
		return mapper.allWeather();
	}

	@Override
	public boolean deleteWeather(String city) {
		return mapper.deleteWeatherWidget(city)>0?true:false;
	}

}
