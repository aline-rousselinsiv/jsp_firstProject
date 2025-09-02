<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz1_Login.jsp</title>
</head>
<body>
	<% 
		String id = request.getParameter("userId");
		int pwd = Integer.parseInt(request.getParameter("pwd"));
		
		if(id.equals("test") && pwd == 1234){
			// out.println("<div style='color :blue;'> 성공! </div>");
			response.sendRedirect("Main.jsp");
		} else {
			out.println("<div style='color :red;'>실패!</div>");
		}
	%>
	
</body>
</html>