package com.mylb.spring.test.jstl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mylb.spring.test.jstl.domain.Weather;
import com.mylb.spring.test.jstl.service.WeatherService;

@RequestMapping("/jstl/weather")
@Controller
public class WeatherController {
	
	@Autowired
	private WeatherService weatherService;
	
	@GetMapping("/list")
	public String weatherList(Model model) {
		
		List<Weather> weatherHistory = weatherService.getWeatherHistory();
		
		model.addAttribute("weatherHistory", weatherHistory);
		
		return "jstl/weather/list";
		
	}
	
	@GetMapping("/input")
	public String weatherInput() {
		
		return "jstl/weather/input";
		
	}
	
	@GetMapping("/add")
	public String createWeather(
//			@RequestParam("date") @DateTimeFormat(pattern="yyyy년 MM월 dd일") Date date
//			, @RequestParam("weather") String weather
//			, @RequestParam("temperatures") double temperatures
//			, @RequestParam("precipitation") double precipitation
//			, @RequestParam("microDust") String microDust
//			, @RequestParam("windSpeed") double windSpeed) {
			@ModelAttribute Weather weather) {
		
//		int count = weatherService.addWeather(date, weather, temperatures, precipitation, microDust, windSpeed);
		
		int count = weatherService.addWeatherByObject(weather);
		
		return "redirect:/jstl/weather/list";
		
	}

}