<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emp-Remove.jsp</title>
</head>
<body>
	<%@ include file="db.jsp" %>
	<%
		String empNo = request.getParameter("empNo");
	
		String query = "DELETE FROM EMP WHERE EMPNO = " + empNo;
		int result = stmt.executeUpdate(query);
		if(result > 0){
			out.println("삭제되었습니다.");
		} else {
			out.println("삭제에 실패했습니다.");
		}
		
	%>
	
</body>
</html>