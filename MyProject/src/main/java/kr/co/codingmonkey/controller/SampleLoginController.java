package kr.co.codingmonkey.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/sample/*")
@Controller
public class SampleLoginController {

	@GetMapping("all")
	public void doAll() {
		log.info("do all can access everybody");
	}
	
	@GetMapping("member")
	public void doMember() {
		log.info("logined member");
	}
	
	@GetMapping("admin")
	public void doAdmin() {
		log.info("admin only");
	}
	
	@GetMapping("doMember")
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	public String doMember2() {
		log.info("member ...");
		return "sample/member";
	}
}
