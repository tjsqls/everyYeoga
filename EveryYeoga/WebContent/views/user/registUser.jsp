<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>A Pen by Zoltan Kohalmy</title>
<link rel="stylesheet" href="../../css/style.css">
</head>

<body>

	<form action="${pageContext.request.contextPath}/user/regist.do" method="post">

		<header>회원가입</header>
		<table>
	
			<b><label>ID <span>*</span></label></b>
			<input id="id"  name="id" class="form-control" type="text" value="" placeholder="ID를 입력해주세요.">
			<tr>
				<div class="help">At least 6 character</div>
				<b><label>비밀번호 <span>*</span></label></b>
				<input id="pw"  name="pw" class="form-control" type="password" value="" placeholder="PW를 입력해주세요.">
			<tr>
				<div class="help">비밀번호를 입력해 주세요</div>
				<b><label>비밀번호 확인 </label></b>
				<input id="pw"  name="pw" class="form-control" type="password" value="" placeholder="PW를 입력해주세요.">
			<tr>
				<div class="help">비밀번호를 한번 더 입력해 주세요</div>
				<b><label>이름</label></b>
				<input id="name"  name="name" class="form-control" type="text" value="" placeholder="이름를 입력해주세요.">
			<tr>
				<b> <label>생년월일</label></b>
				<input id="birthDate"  name="birthDate" class="form-control" type="number" value="" placeholder="생년월일를 입력해주세요.">
			<tr>
			<tr>
				<b> <label>핸드폰 번호</label></b>
				<input id="phoneNumber"  name="phoneNumber" class="form-control" type="number" value="" placeholder="휴대폰 번호를 입력해주세요.">
			<tr>
				<b><label>이메일</label></b>
				<b><input size="10" id="email" name="email" class="form-control" type="text" value="" /><label>@ </label></b>
				<select name="selectMail">
					<option value="">naver.com</option>
					<option value="">gmail.com</option>
					<option value="">hanmail.net</option>
				</select>
			<tr>
			<button>인증하기</button>
		</table>
		<input  type="reset" value="취소"> <input type="submit" value="회원가입">
	</form>


</body>
</html>
