<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="/views/layout/common.jsp" %>
<head>


<link rel="stylesheet" href="../../css/style.css">

</head>

<body>

	<form action="${pageContext.request.contextPath}/user/login.do" method="post" style="margin-top: 200px;">
		<header>로그인</header>
		<label>ID <span>*</span></label> <input id="id"  name="id" class="form-control" type="text" value="" placeholder="Please input user Id">
		<div class="help"></div>
		<label>Password <span>*</span></label> <input id="pw"  name="pw" class="form-control" type="password" value="" placeholder="please input password">
		<div class="help">대문자 입력에 유의하시기 바랍니다.</div>
		<button type="submit">로그인</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" style="background-color: red;" onclick="location.href='${pageContext.request.contextPath}/views/user/registUser.jsp'">회원가입</button>
	</form>
</body>
</html>
