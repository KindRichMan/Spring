<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 

        ${array }<hr/>
        <%--array를 c:forEach를 애용해 하나하나 나열해주세요. --%>
        <c:forEach var="item" items="${array }">
        ${item }
        </c:forEach>
</body>
</html>