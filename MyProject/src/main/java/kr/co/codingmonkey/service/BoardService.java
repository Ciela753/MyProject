package kr.co.codingmonkey.service;

import java.util.List;

import kr.co.codingmonkey.domain.BoardVo;
import kr.co.codingmonkey.domain.ProjectCriteria;

public interface BoardService {
	public void register(BoardVo board);
	public BoardVo get(Long bno);
	public boolean modify(BoardVo board);
	public boolean remove(Long bno);
	public List<BoardVo> getList();
	public List<BoardVo> getListCategory(ProjectCriteria cri, String Category);
}
