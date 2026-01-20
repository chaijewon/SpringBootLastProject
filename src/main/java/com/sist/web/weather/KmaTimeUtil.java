package com.sist.web.weather;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class KmaTimeUtil {

    // 기준 날짜 (yyyyMMdd)
    public static String baseDate() {
        return LocalDate.now()
                .format(DateTimeFormatter.ofPattern("yyyyMMdd"));
    }

    // 기준 시간 (현재 - 40분)
    public static String baseTime() {
        return LocalTime.now()
                .minusMinutes(40)
                .format(DateTimeFormatter.ofPattern("HHmm"));
    }
}
