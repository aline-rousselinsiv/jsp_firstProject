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
	margin: 50px auto;
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
		text-align: left;
		width: 100px;
	}
</style>
</head>

<body>

	<div id="container">
		<form name="stu" action="Stu-Add-Result.jsp">
			<table>
				<tr>
					<th>학번</th>
					<td><input name="stuNum"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input name="stuName"></td>
				</tr>
				<tr>
					<th>학과</th>
					<td><input name="stuDept"></td>
				</tr>
				<tr>
					<th>키</th>
					<td><input name="stuHeight"></td>
				</tr>
			</table>
			<div>
				<input type="button" value="추가" onclick="fnAdd()">
				<button onclick="fnCheck(); return false;">학번 중복 체크</button>
			</div>
		</form>
	</div>
	
</body>
</html>
<script>
	function fnAdd(){
		let form = document.board;
		form.submit();
	}
	
	function fnCheck(){
		let stu = document.stu;
		let stuNum = stu.stuNum.value;
		window.open(`Id-check.jsp?stuNum=\${stuNum}`, "check", "width=300, height=300");
	}
	
	function fnReturn(flg){
		if(flg == "N"){
			let form = document.stu;
			form.stuNo.disabled = true;
			joinFlg = true;
		}
	}

</script>






