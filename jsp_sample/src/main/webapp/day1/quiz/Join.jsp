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
			아이디 : <input type="text" name="id">
		</div>
		<div>
			비밀번호 : <input type="password" name="pwd1">
		</div>
		<div>
			비밀번호 확인 : <input type="password" name="pwd2">
		</div>
		<div>
			이름 : <input type="text" name="userName">
		</div>
		<div>
			핸드폰 :
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select>
		</div>
		<div>
			성별 : 
			<input type="radio" name="gender" value="M" checked>남
			<input type="radio" name="gender" value="F">여
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
			<input type="button" value="가입" onclick="fnJoin()">
		</div>
	</form>
</body>
</html>
<script>

	function fnJoin(){
		
		let join = document.join;
		let speChar = /[!@#$%^&*(),.?":{}|<>]/;
		let hobbies = join.hobbies;
		let isChecked = false;
		
		if(join.id.value.length < 6 ){
			alert("아이디는 6글자 입니다.");
			join.id.focus();
			return;
		}
				
		if(join.pwd1.value.length < 8){
			alert("비밀먼호는 8글자 입니다.");
			join.pwd1.focus();
			return;
		}
		
		if(join.pwd1.value != join.pwd2.value){
			alert("비밀번호 다릅니다.")
			join.pwd1.focus();
			return;
		}
		
 		if(!speChar.test(join.pwd1.value)){
			alert("비밀번호는 특성문자 필수 입니다.");
			join.pwd1.focus();
			return;
		} 
 		
 		for(let i=0; i<hobbies.length; i++){
 			if(hobbies[i].checked){
 				isChecked = true;
 				break;
 			}
 		}
 		
 		if(!isChecked){
 			alert("취미를 선택해주세요.");
 			return;
 		}
 		
 		if(join.userName.value.length == 0){
 			alert("이름을 입력해주세요.");
 			join.userName.focus();
 			return;
 		}
		
		join.submit();
	}

</script>





