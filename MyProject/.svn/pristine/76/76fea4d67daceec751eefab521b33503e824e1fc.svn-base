package kr.co.codingmonkey.service;

import static org.junit.Assert.assertNotNull;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.codingmonkey.domain.BoardVo;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	@Setter @Autowired
	private BoardService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		BoardVo board = new BoardVo();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용");
		board.setId("newbie");
		
		service.register(board);
	}
	
	@Test
	public void testGetList() {
		service.getList().forEach(board -> {
			String content = board.getContent();
			int beginIndex = content.indexOf("<img");
			log.info(beginIndex);
			String imgTag = null;
			if(beginIndex != -1) {
				content = content.substring(beginIndex);
				int endIndex = content.indexOf("/>");
				imgTag = content.substring(0, endIndex+2);
				} else {
				imgTag = "<img alt='' src='/display?fileName=no-image-found-360x250-1-300x208.png' style='height:208px; width:300px' />";
			}
			log.info(imgTag);
			board.setContent(imgTag);
			log.info(board);
		});
	}
	
	@Test
	public void testGet() {
		log.info(service.get(4L));
	}
	
	@Test
	public void testRemove() {
		log.info(service.get(5L));
		log.info(service.remove(5L));
		log.info(service.get(5L));
	}
	
	@Test
	public void testModify() {
		BoardVo boardVo = new BoardVo();
		boardVo.setTitle("서비스 테스트 수정글 제목");
		boardVo.setContent("서비스 테스트 수정글 내용");
		boardVo.setId("newbie");
		boardVo.setBno(6L);
		service.modify(boardVo);
	}
}
