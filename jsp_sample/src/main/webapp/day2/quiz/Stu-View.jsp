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
	#button{
		margin-top:10px;
	}
</style>
</head>
<body>
	<%@ include file="../../db/db.jsp" %>
	
	<div id="container">
	
	<%
		ResultSet rs = null;
		String stuName = request.getParameter("stuName");
		String query = " SELECT S.STU_NAME, S.STU_DEPT, S.STU_NO, AVG(E.ENR_GRADE) AS GRADE"
						+ " FROM STUDENT S"
						+ " LEFT JOIN ENROL E ON S.STU_NO = E.STU_NO"
						+ " WHERE STU_NAME = '" + stuName + "'"
						+ " GROUP BY S.STU_NAME, S.STU_DEPT, S.STU_NO";
		
		rs = stmt.executeQuery(query);
		if(rs.next()){
	%>	<form name="board" action="Stu-Remove.jsp">
		<input name="stuName" value="<%= rs.getString("STU_NAME")%>" hidden>
			<table>
				<tr>
					<th>학번</th>
					<td><%= rs.getString("STU_NO") %></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><%= rs.getString("STU_NAME") %></td>
				</tr>
				<tr>
					<th>학과</th>
					<td><%= rs.getString("STU_DEPT") %></td>
				</tr>
				<tr>
					<th>시험 </th>
					<td class="contents"><%= rs.getString("GRADE") %></td>
				</tr>
			</table>
			<div>
				<!-- <input type="submit" value="삭제"> -->
				<input id="button" type="button" value="삭제" onclick="fnRemove()">
			</div>
			<div>
				<!-- <input type="submit" value="삭제"> -->
				<input id="button" type="button" value="수정" onclick="fnChange()">
			</div>
		</form>	
	<%		
		} else {
			out.println("게시글 조회에 실패했습니다.");
		}
	%>
	
	</div>
</body>
</html>
<script>

	function fnRemove(){
		let board = document.board;
		if(!confirm("정말 삭제하시겠습니까?")){
			return;
		}
		board.submit();
	}
	
	function fnChange(){
		let board = document.board;
		if(!confirm("정말 수정하시겠습니까?")){
			return;
		}
		board.submit();
	}

</script>






