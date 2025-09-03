<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board-View.jsp</title>
</head>
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
</style>
<body>
	게시글 상세보기 페이지
	<%@ include file="../db/db.jsp" %>
	<div id="container">
		<table>
			<%
				ResultSet rs = null;
				String query = "SELECT B.*, TO_CHAR(CDATETIME, 'YYYY-MM-DD') CTIME FROM TBL_BOARD B WHERE BOARDNO = ";
				rs = stmt.executeQuery(query);
				
				while(rs.next()){
			%>
			<tr>
				<th>제목</th>
				<td> <%= rs.getString("CONTENTS") %> </td>
			</tr>
			<tr>
				<th>작성자</th>
			</tr>
			<tr>
				<th>작성일</th>
			</tr>
			<tr>
				<th>내용</th>
			</tr>
			<%		
				}
			%>
		</table>
	</div>
	
	
</body>
</html>






