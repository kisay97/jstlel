<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:choose>
	<c:when test="${empty param.r }"> 
		<c:set var = "r" value = "3"/>
	</c:when>
	<c:otherwise> 
		<c:set var = "r" value = "${param.r }"/>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${empty param.c }"> <c:set var = "c" value = "3"/></c:when>
	<c:otherwise> <c:set var = "c" value = "${param.c }"/> </c:otherwise>
</c:choose>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1px' cellspacing='0' cellpadding='10px'>
		<c:forEach begin="0" end="${r-1 }" step="1" var="i">
			<tr>
				<c:forEach begin="0" end="${c-1 }" step="1" var="j">
					<td>(${i} : ${j})</td>
				</c:forEach>
			</tr>
		</c:forEach>	
	</table>
</body>
</html>