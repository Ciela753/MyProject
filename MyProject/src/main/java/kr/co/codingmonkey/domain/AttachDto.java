package kr.co.codingmonkey.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class AttachDto {
	private String UUID;
	private String origin;
//	private String uploadPath;
//	private boolean image;
}
