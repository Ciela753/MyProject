package kr.co.codingmonkey.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.codingmonkey.domain.SampleDTO;
import kr.co.codingmonkey.domain.SampleDTOList;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample/*")

public class SampleController {
	private static final Logger log = Logger.getLogger(SampleController.class);
	@RequestMapping("")
	public void basic() {
		log.info("============basic============");
	}
	
	@GetMapping("/ex02")
	public @ResponseBody SampleDTO ex02() {
		SampleDTO dto = new SampleDTO();
		dto.setName("홍길동");
		dto.setAge(10);
		//xml파일로 리턴
		return dto;
	}
	
	@GetMapping("/ex02Bean")
	public String ex02Bean(SampleDTOList list) {
		log.info(list);
		
		return "ex02Bean";
	}
}
