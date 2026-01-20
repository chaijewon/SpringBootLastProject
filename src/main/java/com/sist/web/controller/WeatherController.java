package com.sist.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.web.weather.KmaWeatherService;

import lombok.RequiredArgsConstructor;

@RestController

@RequiredArgsConstructor
public class WeatherController {

    private final KmaWeatherService service;

    @GetMapping("/api/weather")
    public String test() {
    	//System.out.println(service.getWeather());
        return "";//service.getWeather();
    }
    
   
}


