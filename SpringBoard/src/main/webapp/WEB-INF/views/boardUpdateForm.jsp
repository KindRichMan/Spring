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
        <input type="submit" value="글수정완료하기">
     </form>
        
</body>
</html>