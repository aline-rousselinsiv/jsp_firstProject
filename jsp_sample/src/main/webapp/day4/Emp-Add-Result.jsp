<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="db.jsp" %>
	<%
		String empNo = request.getParameter("empNo");
		String empName = request.getParameter("empName");
		String sal = request.getParameter("sal");
		String deptNo = request.getParameter("deptNo ");
		
		String query = "INSERT INTO EMP(EMPNO, ENAME, SAL, DEPTNO) "
						+ "VALUES( ) ";
	
	%>
</body>
</html>