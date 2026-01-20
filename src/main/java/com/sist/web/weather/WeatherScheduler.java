package com.sist.web.weather;

import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class WeatherScheduler {

    private final SimpMessagingTemplate template;
    private final KmaWeatherService service;

    // ⏰ 1분마다 실행
    //@Scheduled(fixedRate = 60000)
    public void sendWeather() {

        String weatherJson = service.getWeather();
        System.out.println(weatherJson);
        // 모든 사용자에게 실시간 전송
        /*template.convertAndSend(
            "/topic/weather",
            weatherJson
        );*/
    }
}
