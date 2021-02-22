package com.company.mapper;

import java.util.List;

import com.company.domain.WeatherVO;

public interface WeatherMapper {
	int insertWeatherWidget(WeatherVO weather);
	List<WeatherVO> allWeather();
	int deleteWeatherWidget(String city);
}
