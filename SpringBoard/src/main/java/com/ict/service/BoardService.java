package com.ict.service;

import java.util.List;

import com.ict.domain.BoardVO;
import com.ict.domain.Criteria;

// 구현 클래스 BoardServiceImpl의 뼈대가 됩니다.
public interface BoardService {
	
	// 인터페이스 내에 먼저 메서드를 선언하고, impl 클래스에서 구현합니다.
	public List<BoardVO> getList(Criteria cri);
	
    // 쉽게 하는 방법 :BoardMapper.java에 있는것을
	// 그대로 복붙한다.
	public int countPageNum();
	
	public BoardVO select(long bno);
	
	
	public void insert(BoardVO vo);
	
	
	
	public void delete(long bno);
	
	
	
	public void update(BoardVO vo);
	
	
}
