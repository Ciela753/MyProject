package kr.co.codingmonkey.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
	@Select("SELECT SYSDATE FROM DUAL")
	public String getTime();
	
	public String getTime2();
	
	@Select("SELECT * FROM TBL_BOARD")
	List<Map<String, Object>> getTime3();
}
