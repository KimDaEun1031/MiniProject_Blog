package com.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WeatherVO {
	private int temp;
	private int humidity;
	private String weather_main;
	private String weather_des;
	private String images;
	private int wind;
	private String country;
	private String city;
}
