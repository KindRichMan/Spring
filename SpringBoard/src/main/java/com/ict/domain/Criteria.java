package com.ict.domain;

import lombok.Data;

@Data//lombok에 의해서 get/setter을 자동으로 만들어짐.
public class Criteria {
	
	private int pageNum=1;
	private int number = 10;
	
	// 페이지 * 페이지당 숫자가 실제 lomit구문에 들어갈 시작점이 됩니다.
	// mybatis는 getter를 가져다 쓸 수 있습니다.
	public int getPageStart() {
		return (this.pageNum -1) * number;
	}

	public int getPageEnd() {
		return (this.pageNum * number);
	}
}
