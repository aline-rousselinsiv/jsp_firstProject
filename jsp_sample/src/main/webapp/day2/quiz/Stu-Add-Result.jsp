<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../db/db.jsp" %>
	<%
		String stuNum = request.getParameter("stuNum");
		String stuName = request.getParameter("stuName");
		String stuDept = request.getParameter("stuDept");
		String stuHeight = request.getParameter("stuHeight");
	
		String query = "INSERT INTO TBL_BOARD VALUES("
						+ "'" + stuNum + "', "
						+ "'" + stuName + "', "
						+ "'" + stuDept + "', "
						+ "'null', "
						+ "'null', "
						+ "'null', "
						+ "'" + stuHeight + "', "
						+ "'null';";
		out.println(query);
		
		
		
	%>
</body>
</html>