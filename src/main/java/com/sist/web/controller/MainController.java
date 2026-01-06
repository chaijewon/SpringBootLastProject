package com.sist.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
/*
 *   1. 일반 보안 => 자동 로그인 => 프로시저 / 트리거 / 람다식 
 *   2. JWT => 카카오 / 구글 로그인 
 *   3. 소켓 : 실시간 : 그룹 / 1:1  => Spring AI (채봇)
 *   4. 실시간 메세지 전송 : Kafka / batch 
 *   5. MSA : React => NodeJS => JPA / MySQL
 *   6. 옵션=> CI/CD => 통합 => Spring Data => elasticSearch / Redis
 *   
 */
@Controller
public class MainController {
  @GetMapping("/main")
  public String main_page(Model model) {
	  // => 데이터베이스 
	  model.addAttribute("main_jsp", "../main/home.jsp");
	  return "main/main";
  }
}
