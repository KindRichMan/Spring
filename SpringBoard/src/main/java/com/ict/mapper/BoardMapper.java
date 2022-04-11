package com.ict.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ict.domain.BoardVO;

public interface BoardMapper {
	
	
	public List<BoardVO> getList(long pageNum);
	
	
	public void insert(BoardVO vo);// 리턴자료가 없어서 void임.

	// select구문은 글 번호를 입력받아서 해당 글 "하나" 에 대한 정보만 얻어올 예정이므로
	// 리턴자료형은 글 하나를 담당할 수 있는 BoardVO로 해야함.
	public BoardVO select(long bno);
	
	// 글 삭제는 DELETE구문으로 하는데, 비 SELETE구문이므로 리턴자료를 void로 적습니다.
	public void delete(long bno);
	
	// 글 수정은 UPDATE 구문으로 합니다. 메서드를 선언해주세요.
	// 전달변수가 title, content, bno이므로, 단일 자료가 아닌 묶음으로 전달합니다.
	public void update(BoardVO vo);//String title, String content,long bno
	
	// VO안쓰고 데이터 전달하기
	public void update2(@Param("title")String title, @Param("content")String content,@Param("bno")long bno);
	
	
	
	
	
}
