package kr.co.codingmonkey.controller;

import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.codingmonkey.domain.BoardVo;
import kr.co.codingmonkey.domain.ProjectCriteria;
import kr.co.codingmonkey.domain.ReplyVo;
import kr.co.codingmonkey.service.BoardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	private BoardService service;

	@GetMapping("/main")
	public String main(Model model) {
		model.addAttribute("project", service.getList());
		return "board/main";
	}
	@GetMapping("/modifyTest")
	public String innerPage() {
		return "board/modifyTest";
	}

	@GetMapping("/detailsTest/{bno}")
	public @ResponseBody BoardVo get(@PathVariable Long bno) {
		return service.get(bno);
	}
	
	@GetMapping("/image")
	public String image() {
		return "board/image";
	}
	@GetMapping("/moodboard")
	public String moodboard() {
		return "board/moodboard";
	}
	@GetMapping("/person")
	public String person() {
		return "board/person";
	}
	@GetMapping("/project")
	public void project(Model model) {
		log.info("project");
		model.addAttribute("project", service.getList());
	}
		
	@GetMapping("/prototype")
	public String prototype() {
		return "board/prototype";
	}

	@GetMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public void register() {
		
	}
	@PostMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public String register(BoardVo board, RedirectAttributes rttr) {
		log.info("register before: "+ board);
		service.register(board);
		rttr.addFlashAttribute("result", board.getBno());
		log.info("register: "+ board);
		
		return "redirect:/board/main";
	}
	
	@ResponseBody
	@GetMapping("{category}")
	public List<BoardVo> getList(@PathVariable String category) {
		return service.getList();
	}
}
