<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container{
	width : 700px;
	margin: 20px auto;
	}
	table, tr, td, th {
		border : 1px solid black;
		text-align : center;
		border-collapse : collapse;
		padding : 5px 10px;
	}
	th{
		background-color: beige;
		width:100px;
	}
	td{
		width:100px;
		height:30px;
	}
	#search{
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<%@ include file="../../db/db.jsp" %>
	
	<div id="container">
		
		<table>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>학과</th>
				<th>키</th>
			</tr>
		<%
			String query = "SELECT * FROM STUDENT";
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()){
		%>	
			<tr>
				<td> <%= rs.getString("STU_NO") %> </td>
				<td>
					<a href="Stu-View.jsp?stuName=<%= rs.getString("STU_NAME") %>"> <%= rs.getString("STU_NAME") %> </a>
				</td>
				<td> <%= rs.getString("STU_DEPT") %> </td>
				<td> <%= rs.getString("STU_HEIGHT") %> </td>
			</tr>
		<%		
			}
		%>
		
		</table>
		<div>
			<a href="Stu_Add.jsp">
				<input type="button" value="학생 추가">
			</a>
		</div>
	</div>
	
	
	
	
	
	
</body>
</html>
<script>
	function fnBoard(stuName){
		location.href = "Stu-View.jsp?stuName=" + stuName;
	}

</script>







