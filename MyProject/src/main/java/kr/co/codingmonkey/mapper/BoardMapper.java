package kr.co.codingmonkey.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.co.codingmonkey.domain.BoardVo;
import kr.co.codingmonkey.domain.ProjectCriteria;

public interface BoardMapper {

//	@Select("select * from tbl_board where bno > 0")
	public List<BoardVo> getList();
	public void insert(BoardVo board);
	public void insertSelectKey(BoardVo board);
	public BoardVo read(Long bno);
	public int delete(Long bno);
	public int update(BoardVo board);
	public List<BoardVo> getListCategory(@Param("cri") ProjectCriteria cri, String category);
}
