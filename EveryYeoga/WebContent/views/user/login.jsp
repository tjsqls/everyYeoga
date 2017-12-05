<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<%@ include file="/views/layout/common.jsp" %>

<title>모두의 여가</title>
<link rel="stylesheet" href="../../css/style.css">

</head>

<body>
	<form action="${pageContext.request.contextPath}/views/main.jsp" method="post" style="margin-top: 200px;">
		<header>Login</header>
		<label>아이디 <span>*</span></label> <input id="id"  name="id" class="form-control" type="text" value="" placeholder="아이디를 입력해주세요.">
		<div class="help">At least 6 character</div>
		<label>비밀번호 <span>*</span></label> <input id="pw"  name="pw" class="form-control" type="password" value="" placeholder="패스워드를 입력해주세요.">
		<div class="help">Use upper and lowercase letters as well</div>
		<button type="submit">로그인</button>
	</form>
</body>
</html>
