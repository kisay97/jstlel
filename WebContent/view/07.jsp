<%@page import="vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserVo vo0 = new UserVo();
	vo0.setNo(0L);
	vo0.setName("vo0");
	pageContext.setAttribute("vo",vo0);
	
	String name = "최규광";
	pageContext.setAttribute("name", name);
%>
<%=name %><br>
--${name }--
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>범위 우선순위</h3>
	<h4>작은 범위 부터 찾는다</h4>
	<h5>application(4순위)</h5>
	<h5>session(3순위)</h5>
	<h5>request(2순위)</h5>
	<h5>page(1순위)</h5>
	
	${vo.no }
	${vo.name }
	<br>
	
	${pageScope.vo.no }
	${pageScope.vo.name }
	<br>
	
	${requestScope.vo.no }
	${requestScope.vo.name }
	<br>
	
	${sessionScope.vo.no }
	${sessionScope.vo.name }
	<br>
	
	${applicationScope.vo.no }
	${applicationScope.vo.name }
	<br>
</body>
</html>