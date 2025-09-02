<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<%
		String id = request.getParameter("userId");
		String hobbies[] = request.getParameterValues("hobbies");
		
		// out.println(Arrays.toString(hobbies));
		for (int i=0; i<hobbies.length; i++){
			out.println(hobbies[i]);
		}
	%>
	
	
</body>
</html>