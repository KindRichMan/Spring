<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>접속확인부터 합니다.</h1>
  ${board }
  <hr/>
       
	 	<h1>${board.bno}번게시글 보기</h1>

<div class="col-md-12">
    <div class="col-md-4">
        
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" class="form-control" value="${board.title}">
            </div>
            <div class="form-group">
                <label for="author"> 작성자 </label>
                <input type="text" class="form-control"  value="${board.writer}" >
            </div>
            <div class="form-group">
                <label for="content"> 내용 </label>
                <textarea class="form-control">${board.writer}</textarea>
            </div>
            <div class="form-group">
               <a href="/boardList" class="btn btn-success btn-sm">글목록</a>
            </div>
        <form action="/boardDelete" method="post">
             <input type="hidden" value="${board.bno}" name="bno"/>
             <input type="submit" value="삭제" class="btn btn-danger btn-sm">
         </form>      
         <form action="/boardUpdateForm" method="post">
             <input type="hidden" value="${board.bno}" name="bno"/>
             <input type="submit" value="글수정" class="btn btn-danger btn-sm">
         </form>      
        
       
    </div>
</div>


	  
</body>
</html>	 
	
	