package com.ict.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ict.domain.BoardVO;
import com.ict.domain.Criteria;
import com.ict.domain.SearchCriteria;

public interface BoardMapper {
	
	//버튼 추가를 위해 PageNum 대신 Criteria를 활용합니다.
	public List<BoardVO> getList(SearchCriteria cri);
	
	
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
	
	
	// 전체 글 개수를 얻어오는 getPageBoard를 선언합니다.
	// 파라미터는 필요없습니다.
	// 글 개수 => 정수 값을 조회하기 때문에 int 리턴입니다.
	
	public int countPageNum(SearchCriteria cri);
	
	
    // 글번호와 증감량(댓글)
	public void updateReplyCount(@Param("bno") Long bno,
			                     @Param("amount") int amount);
	
	
	
	
	
	

	
}
