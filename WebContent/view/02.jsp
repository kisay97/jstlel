<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>연산</h3>
	<br>
	${i + 2 }
	<br>
	${f * 123 }
	<br>
	${f > 10 }
	<br>
	${i > 10 || b}
	<br>
	${empty nullvalue }
	<br>
	${not empty nullvalue }
	
	<c:if test="${empty nullvalue }">
	<br>
	c:if test 안에 boolean 나오면 됩니다.
	</c:if>
</body>
</html>