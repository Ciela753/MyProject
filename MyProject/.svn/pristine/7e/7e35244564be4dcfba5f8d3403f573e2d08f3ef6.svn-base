package kr.co.codingmonkey.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.codingmonkey.domain.BoardVo;
import kr.co.codingmonkey.mapper.BoardMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	@Setter @Autowired
	private BoardMapper boardMapper;
	
	@Override
	public void register(BoardVo boardVo) {
		String content = boardVo.getContent();
//		int beginIndex = content.indexOf("<img");
//		log.info(beginIndex);
//		String imgTag = null;
//		String imgTagFinal = null;
//		if(beginIndex != -1) {
//			content = content.substring(beginIndex);
//			int endIndex = content.indexOf("/>");
//			imgTag = content.substring(0, endIndex+2);
//			
//			String[] imgTag1 = imgTag.split("style=");
//			String[] imgTag2 = imgTag.split("px\"");
//			
//			imgTagFinal = imgTag1[0].concat(imgTag2[1]);
//		
//		}
//		bo
		
		List<Integer> beginIndex = new ArrayList<>();
		
//		while(content.indexOf("<img") != -1) {
//			beginIndex.add(content.indexOf("<img"));
//		}
//		
//		for(int i =0; i<beginIndex.size(); i++) {
//			
//		}
//		
		boardMapper.insertSelectKey(boardVo);
	}

	@Override
	public BoardVo get(Long bno) {
		log.info("get......"+ bno);
		return boardMapper.read(bno);
	}

	@Override
	public boolean modify(BoardVo board) {
		return boardMapper.update(board) > 0;
	}

	@Override
	public boolean remove(Long bno) {
		return boardMapper.delete(bno) > 0;
	}

	@Override
	public List<BoardVo> getList() {
		return boardMapper.getList().stream().map(board -> {
			String content = board.getContent();
			int beginIndex = content.indexOf("<img");
			log.info(beginIndex);
			String imgTag = null;
			String imgTagFinal = null;
			if(beginIndex != -1) {
				content = content.substring(beginIndex);
				int endIndex = content.indexOf("/>");
				imgTag = content.substring(0, endIndex+2);
				
				String[] imgTag1 = imgTag.split("style=");
				String[] imgTag2 = imgTag.split("px\"");
				
				imgTagFinal = imgTag1[0].concat(imgTag2[1]);
			
			} else {
				imgTagFinal = "<img alt='' src='/display?fileName=no-image-found-360x250-1-300x208.png' style='width:410px' class='img-fluid'/>";
			}
			log.info(imgTagFinal);
			board.setContent(imgTagFinal);
			log.info(board);
			return board;
			
		}).collect(Collectors.toList());
	}

}
