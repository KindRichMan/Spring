<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <h1>${board.bno }번글 수정 폼 접속확인</h1>
    
       <!-- ${board } -->
       
         <form action="/boardUpdate" method="post">
         <input type="hidden" name="bno" value="${board.bno }"/>
       글제목 : <input type="text" name="title" value="${board.title }">
       작성자 :<input type="text" name="writer" value="${board.writer }"><br/>
       본문 내용 :<textarea name="content" rows="30" cols="100" >${board.content }</textarea><br/>
       <!-- 수정을 했다면, 수정완료후에도 페이지번호, 검색조건, 검색어가 유지되도록 전달받은 데이터를 폼으로 다시 넘겨줘야합니다. 
         넘겨받은 searchType, keyword, pageNum을 재전달하도록 폼 내부에 추가해주세요.-->
         <input type="hidden" name="pageNum" value="${param.pageNum}" >
		 <input type="hidden" name="searchType" value="${param.searchType}" >
		 <input type="hidden" name="keyword" value="${param.keyword}" >
         <input type="submit" value="글수정완료하기">
     </form>
        
</body>
</html>