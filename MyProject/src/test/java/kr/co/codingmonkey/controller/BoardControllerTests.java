package kr.co.codingmonkey.controller;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MockMvcBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class) //junit실행 가능케함
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j //로그 관리
@WebAppConfiguration //빈 생성
public class BoardControllerTests {
	
	@Setter @Autowired
	private WebApplicationContext ctx;
	//가짜 mvc 브라우저에서 사용하는 것처럼 controller를 실행
	private MockMvc mvc;
	
	//반복되는 준비 작업을 별도의 메소드에 넣게 해 주고 
	//이를 매번 테스트 메소드를 실행하기 전에 먼저 자동으로 실행시켜주는 기능
	@Before
	public void setup() {
		mvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testExist() {
		assertNotNull(ctx);
		assertNotNull(mvc);
		log.info(ctx);
		log.info(mvc);
	}
	
	@Test
	public void testList() throws Exception {
		ModelMap map = 	mvc.perform(MockMvcRequestBuilders.get("/board/list")
				.param("pageNum", "2")
				.param("amount", "4")
				)
		.andReturn()
		.getModelAndView()
		.getModelMap();
		
		log.info(map);
		List<?> list = (List<?>)map.get("list");
		list.forEach(log::info);
	}
	
	@Test
	public void testRegister() throws Exception {
		ModelAndView mav = mvc.perform(MockMvcRequestBuilders.get("/board/register")
				.param("title",  "컨트롤러테스트 글제목")
				.param("content", "컨트롤러테스트 글 내용")
				.param("id", "newbie"))
				.andReturn()
				.getModelAndView();
				
				log.info(mav.getViewName());
	}
	
	@Test
	public void testGet() throws Exception {
		ModelMap mav = mvc.perform(MockMvcRequestBuilders.get("/board/get").param("bno", "29"))
				.andReturn()
				.getModelAndView()
				.getModelMap();
		
		log.info(mav);
		
	}
	
	@Test
	public void testModify() throws Exception {
		ModelAndView mav = mvc
				.perform(MockMvcRequestBuilders.post("/board/modify")
				.param("bno", "6")
				.param("title", "컨트롤러테스트 글제목")
				.param("content", "컨트롤러테스트 글 내용")
				.param("id", "newbie"))
				.andReturn().getModelAndView();
		log.info(mav.getViewName());
	}
	
	@Test
	public void testRemove() throws Exception {
		ModelAndView mav = mvc.perform(MockMvcRequestBuilders.post("/board/remove")
				.param("bno", "9"))
				.andReturn()
				.getModelAndView();
				
				log.info(mav.getViewName());
	}
	
	@Test
	public void testRemoveAttrByRegexp() {
//		String test = "<img src='image' width='1024px' height='512px' />";
		String str = "<p><img src=\"/display?fileName=ccc65aa3-29ca-4866-8204-e210246b40c6.jpg\" style=\"height:853px; width:1280px\" /><img src=\"/display?fileName=f4aeba1e-c534-457a-a502-8caa4d0f4b6f.png\" style=\"height:40px; width:40px\" /></p>";
	}
}
