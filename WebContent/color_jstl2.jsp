<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	List<String> list = new ArrayList<String>();
	list.add("A");
	list.add("B");
	list.add("C");
	
	pageContext.setAttribute("list", list);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.color == 1 }">
			<span style="color : red">빨강</span>
		</c:when>
		<c:when test="${param.color == 2 }">
			<span style="color : green">녹색</span>
		</c:when>
		<c:when test="${param.color == 3 }">
			<span style="color : blue">파랑</span>
		</c:when>
		<c:otherwise>
			<span style="color : black">검정</span>
		</c:otherwise>
	</c:choose>
	<br><br>
	<c:forEach items="${list }" var="listItem" varStatus="status">
		<h1>${status.count } : ${status.index }</h1> <!-- count는 루프 돈 회수, index는 인덱스 -->
		<h1>[${status.index}]${listItem }</h1>
		<br>
	</c:forEach>
</body>
</html>