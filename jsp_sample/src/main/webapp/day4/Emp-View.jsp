<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emp-View.jsp</title>
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
		width: 100px;
	}
	td {
		width: 300px;
	}
	a{
		text-decoration: none;
	}
	.page a {
		text-decoration: none;
		color: black;
		padding: 5px;
		text-align: center;
	}
	.page .active{
		font-weight: bold;
		color: blue;
	}
	.grade {
		color: blue;
		font-weight: bold;
	}
</style>
</head>
<body>
	<%@ include file="db.jsp" %>
	<%
		String empNo = request.getParameter("empNo");
		// WHERE EMPNO = 7369
		// 사번, 이름 상사(MGR)의 이름, 소속부서의 평균 급여, 부서 이름
		String query = "SELECT E.EMPNO, E.ENAME, E2.ENAME AS MGR_NAME, E.SAL, AVG_SAL, D.DNAME "
					 + "FROM EMP E "
					 + "LEFT JOIN EMP E2 ON E.MGR = E2.EMPNO "
					 + "INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO "
					 + "INNER JOIN (SELECT DEPTNO, AVG(SAL) AVG_SAL FROM EMP GROUP BY DEPTNO) T "
					 + "ON E.DEPTNO = T.DEPTNO "
					 + "WHERE E.EMPNO = '" + empNo + "'";
		
		
		try { 
			ResultSet rs = stmt.executeQuery(query);
			if(rs.next()){
	%>
		<table>
			<tr>
				<th>사번</th>
				<td><%= rs.getString("EMPNO") %></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><%= rs.getString("ENAME") %></td>
			</tr>
			<tr>
				<th>매니저</th>
				<td><%= rs.getString("MGR_NAME") %></td>
			</tr>
			<tr>
				<th>급여</th>
				<td><%= rs.getString("SAL") %></td>
			</tr>
			<tr>
				<th>부서</th>
				<td><%= rs.getString("DNAME") %></td>
			</tr>
		</table>
	<%		
			} else {
				out.println("데이타 조회 시패했습니다.");
			}
	
		} catch (SQLException e) {
			out.println("오류가 발생했습니다!");
		}
					    
	%>
	
	<div>
		<input type="button" value="삭제" onclick="fnRemove()">
	</div>
	
	<input id="empNo" value="<%= empNo %>" hidden> 
	<!-- we store the empNo value in HTML  -->
	
</body>
</html>
<script>
	function fnRemove(){
		if(!confirm("정말 삭제하겠습니까?")){
			return;
		}
		let empNo = document.querySelector("#empNo").value;
		// We retrieve it in script to send it to the new page
		location.href="Emp-Remove.jsp?empNo="+empNo;
	}


</script>





