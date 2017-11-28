<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>A Pen by Zoltan Kohalmy</title>
<link rel="stylesheet" href="../../css/style.css">
</head>

<body>

	<form>

		<header>회원가입</header>
		<table>
			<b><label>ID <span>*</span></label></b>
			<input />
			<tr>
				<div class="help">At least 6 character</div>
				<b><label>비밀번호 <span>*</span></label></b>
				<input />
			<tr>
				<div class="help">비밀번호를 입력해 주세요</div>
				<b><label>비밀번호 확인 </label></b>
				<input />
			<tr>
				<div class="help">비밀번호를 한번 더 입력해 주세요</div>
				<b><label>이름</label></b>
				<input />
			<tr>
				<b> <label>생년월일</label></b>
				<input />
			<tr>
				<b><label>이메일</label></b>
				<b><input size="10" /><label>@ </label></b>
				<select name="selectMail">
					<option value="">naver.com</option>
					<option value="">gmail.com</option>
					<option value="">hanmail.net</option>
				</select>
			<tr>
			<button >인증하기</button>
		</table>
		<button>회원가입</button>
	</form>


</body>
</html>
