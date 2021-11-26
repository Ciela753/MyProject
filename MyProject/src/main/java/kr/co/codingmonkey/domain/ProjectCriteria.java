package kr.co.codingmonkey.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor 
public class ProjectCriteria extends Criteria {
	private Long lastBno = 0L;

	
	
	
	public ProjectCriteria(Long lastBno, int amount) {
		this(lastBno);
		setAmount(amount);
	}



	public ProjectCriteria(int amount) {
		setAmount(amount);
	}



	public ProjectCriteria() {
		this(10);
	}



	
}
