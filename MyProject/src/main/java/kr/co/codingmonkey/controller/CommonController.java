package kr.co.codingmonkey.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller 
@Log4j
@RequestMapping("/common/*")
public class CommonController {
	
	@GetMapping("customLogin")
	public String login(String error, String logout, Model model) {
		log.info("error : "+error);
		
		
		if(error != null) {
			model.addAttribute("error", "Login error check your account");
		}
		
		return "/common/login";
	}
	
	@GetMapping("join")
	public String join() {
		return "/common/join";
	}
	
	@GetMapping("customLogout")
	public void logoutGET() {
		log.info("custom logout");
	}
	
}
