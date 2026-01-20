package com.sist.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WeatherRouterController {
	    @GetMapping("/weather")
	    public String weather_page() {
	    	return "weather/weather";
	    }
}
