package com.mylb.spring.test.jstl.repository;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mylb.spring.test.jstl.domain.Weather;

@Repository
public interface WeatherRepository {
	
	// 날씨테이블 정보를 모두 조회
	public List<Weather> selectWeatherHistory();

	public int insertWeather(
			@Param("date") Date date
			, @Param("weather") String weather
			, @Param("temperatures") double temperatures
			, @Param("precipitation") double precipitation
			, @Param("microDust") String microDust
			, @Param("windSpeed") double windSpeed);
	
	public int insertWeatherByObject(Weather weather);
}