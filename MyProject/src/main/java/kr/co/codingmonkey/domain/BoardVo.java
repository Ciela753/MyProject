package kr.co.codingmonkey.domain;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data @Alias("board")
public class BoardVo {
	private Long bno;
	private String title;
	private String content;
	private String id;
	private Date regdate;
	private Date updateDate;
	private Long replycnt;
	private Long recommendcnt;
	private Long viewscnt;
	private String category; 
}
