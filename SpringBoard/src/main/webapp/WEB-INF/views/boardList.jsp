<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <h1>연결확인부터 합니다.</h1>
       
     
       <hr/>
       <hr/>
       
        <table border="1">
           <tr>
             <th>글번호</th>
             <th>제목</th>
             <th>작성자</th>
             <th>쓴날짜</th>
             <th>수정날짜</th>
           </tr>
           <c:forEach var="board" items="${boardList}">
	            <tr>
	                <td>${board.bno}</td>
	                <td><a href="/boardDetail/${board.bno}">${board.title}</td>
	                <td>${board.writer}</td>
	                <td>${board.regdate}</td>
	                <td>${board.updatedate}</td>
	            </tr>
           </c:forEach>   
        </table>
        <a href="/boardInsert"><button>글쓰기</button></a><br/>
    
        ${pageMaker}
        부트스트랩 홈페이지에 가서 버튼을 깔아보세요.
			<!-- 이전 페이지 버튼 보일지 결정하는 부분 -->
					<ul class="pagination justify-content-center">
			           <c:if test="${pageMaker.prev }"> 
					   			<li class="page-item"> 
						   			 <a class="page-link" href="/boardList?pageNum=${pageMaker.startPage -1 }">
						   			 &laquo;
						   			 </a>
					   			 </li>
					   </c:if>
					  <!-- 밑에 깔아줄 버튼들 --> 
					  <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
					        <li class="page-item"${pageMaker.cri.pageNum eq idx ? ' active' : ''}">
					           <a class="page-link" href="/boardList?pageNum=${idx}">
					              ${idx}
					            </a>
					         </li>  
					   </c:forEach>           
					   
					    
					  <C:if test="${pageMaker.next && pageMaker.endPage > 0}">  
					    <li class="page-item">
					        <a class="page-link" href="/boardList?pageNum=${pageMaker.endPage + 1 }">
					             &raquo;
					        </a>
					    </li>
  			       </C:if>
</body>
</html>
             
	              