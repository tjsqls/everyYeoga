<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="/views/layout/common.jsp" %>
<head>


<link rel="stylesheet" href="../../css/style.css">

</head>

<body>
<<<<<<< HEAD
	<form action="${pageContext.request.contextPath}/views/main.jsp" method="post" style="margin-top: 200px;">
		<header>Sign In</header>
		<label>ID <span>*</span></label> <input id="id"  name="id" class="form-control" type="text" value="" placeholder="Please input user Id">
		<div class="help"></div>
		<label>Password <span>*</span></label> <input id="pw"  name="pw" class="form-control" type="password" value="" placeholder="please input password">
		<div class="help">beware of UPPER CASE letters</div>
		<button type="submit">sign in</button>
=======
	<form action="${pageContext.request.contextPath}/user/login.do" method="post" style="margin-top: 200px;">
		<header>Login</header>
		<label>아이디 <span>*</span></label> <input id="id"  name="id" class="form-control" type="text" value="" placeholder="아이디를 입력해주세요.">
		<div class="help">At least 6 character</div>
		<label>비밀번호 <span>*</span></label> <input id="pw"  name="pw" class="form-control" type="password" value="" placeholder="패스워드를 입력해주세요.">
		<div class="help">Use upper and lowercase letters as well</div>
		<button type="submit">로그인</button>
>>>>>>> branch 'master' of https://github.com/tjsqls/everyYeoga.git
	</form>
</body>
</html>
