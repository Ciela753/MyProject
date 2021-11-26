package kr.co.codingmonkey.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;

import kr.co.codingmonkey.domain.BoardVo;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	@Setter @Autowired
	private BoardMapper mapper;
	
	@Autowired @Setter
	private WebApplicationContext ctx;
	private MockMvc mvc;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(log::info);
	}
	
	@Test
	public void testInsert() {
		BoardVo board = new BoardVo();
		board.setTitle("영속 테스트 제목");
		board.setContent("영속 테스트 내용");
		board.setId("newbie");
		//프록시 객체
		mapper.insert(board);
		
//		log.info(board);
	}
	
	@Test
	public void testInsertSelectKey() {
		BoardVo board = new BoardVo();
		board.setTitle("영속 테스트 제목 selectKey");
		board.setContent("영속 테스트 내용 selectKey");
		board.setId("newbie");
		board.setCategory("project");
		
		log.info("before :: " +board);
		mapper.insertSelectKey(board);
		log.info("after :: " +board);
	}
	
	@Test
	public void testRead() {
		log.info(mapper.read(6L));
	}
	
	@Test
	public void testDelete() {
		log.info(mapper.read(3L));
		log.info(mapper.delete(3L));
		log.info(mapper.read(3L));
	}
	
	@Test
	public void testUpdate() {
		BoardVo board = new BoardVo();
		board.setBno(8L);
		board.setTitle("수정된 테스트 제목");
		board.setContent("수정된 테스트 내용");
		board.setId("newbie");
		
		log.info(mapper.update(board));
		log.info(mapper.read(8L));
	}
	
	@Test
	public void testGetListCategory() throws Exception {
		
	}
}
