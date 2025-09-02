<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join.jsp</title>
</head>
<body>
	<form name="join" action="Join_Result.jsp" method="get">
		<div>
			아이디 : <input type="text" name="userId">
		</div>
		<div>
			비밀번호 : <input type="password" name="pwd1">
		</div>
		<div>
			비밀번호 확인 : <input type="password" name="pwd2">
		</div>
		<div>
			이름 : <input type="text" name="name">
		</div>
		<div>
			해드폰 :
		</div>
		<div>
			성별 : 
			<input type="radio" name="gender" > 남
			<input type="radio" name="gender" > 여  
		</div>
		<div>
			취미 :
			<label><input type="checkbox" name="hobbies" value="운동">운동</label>
			<label><input type="checkbox" name="hobbies" value="코딩">코딩</label>
			<label><input type="checkbox" name="hobbies" value="독서">독서</label>
			<label><input type="checkbox" name="hobbies" value="영화감성">영화감성</label>
			<label><input type="checkbox" name="hobbies" value="게임">게임</label>  
		</div>
		<div>
			<input type="button" value="가입" onclick="fnCheck()">
		</div>
	</form>
</body>
</html>
<script>

	function fnCheck(){
		
		let join = document.join;
		
		if(join.userId.value.length < 6 ){
			alert("아이디는 6글자 입니다.");
			join.userId.focus();
			return;
		}

		if(join.pwd1.value.length > 8 )){
			alert("비밀먼호는 8글자 입니다.");
			join.pwd1.focus();
			return;
		}
		
		join.submit();
	}

</script>





