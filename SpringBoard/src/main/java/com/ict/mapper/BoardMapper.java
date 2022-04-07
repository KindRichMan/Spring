package com.ict.mapper;



import java.util.List;

import com.ict.domain.BoardVO;

public interface BoardMapper {
	
	
	public List<BoardVO> getList();
	
	
	public void insert(BoardVO vo);// 리턴자료가 없어서 void임.

	// select구문은 글 번호를 입력받아서 해당 글 "하나" 에 대한 정보만 얻어올 예정이므로
	// 리턴자료형은 글 하나를 담당할 수 있는 BoardVO로 해야함.
	public BoardVO select(long bno);
	
	public void delete(long bno);
	
}