<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="/userInfo" method="post">
   <input type="number" name="userNum"placeholder="번호"><br/>
   <input type="type" name="userId" placeholder="아이디"><br/>
   <input type="type" name="userPw" placeholder="비밀번호"><br/>
   <input type="type" name="userName" placeholder="이름"><br/>
   <input type="number" name="userAge" placeholder="나이"><br/>
    <input type="submit" value="전송">
    </form>
   
   
</body>
</html>