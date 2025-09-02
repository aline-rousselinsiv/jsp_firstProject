<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Result.jsp</title>
</head>
<body>
	
	<% String gender = request.getParameter("gender"); %>
	<% String id = request.getParameter("id"); %>
	<h2><%= request.getParameter("userName") %>님 환영합니다 !</h2>
	<h3>
	취는 : 
	<ol><% 
		String hobbies[] = request.getParameterValues("hobbies");
		for(int i=0; i<hobbies.length; i++){
			out.println("<li>" + hobbies[i] + "</li>");
		}
	%> </ol>
	</h3>
	<h3> 성별 : <%= gender.equals("M") ? "남자" : "여자"%> </h3>
	<h3> 아이디 : <%= id %> </h3>
	
	
</body>
</html>