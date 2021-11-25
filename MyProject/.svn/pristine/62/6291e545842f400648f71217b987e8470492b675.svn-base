package kr.co.codingmonkey.domain;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data @Alias("member")
public class MemberVo {
	private String userid;
	private String userpw;
	private String email;
	private String userName;
	private boolean enabled;
	
	private List<AuthVo> auths;
}
