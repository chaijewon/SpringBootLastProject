package com.sist.web.weather;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;


@Service
public class KmaWeatherService {

    @Value("${kma.service-key}")
    private String serviceKey;

    private final RestTemplate rest = new RestTemplate();

    // 서울(nx=60, ny=127) 실시간 날씨
    public String getWeather() {

        UriComponentsBuilder uri =
            UriComponentsBuilder
                .fromUriString(
                  "https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst")
                .queryParam("serviceKey", serviceKey)
                .queryParam("dataType", "JSON")
                .queryParam("base_date", KmaTimeUtil.baseDate())
                .queryParam("base_time", KmaTimeUtil.baseTime())
                .queryParam("nx", 60)
                .queryParam("ny", 127);
         System.out.println(uri.toUriString());
        return rest.getForObject(uri.toUriString(), String.class);
    }
}
