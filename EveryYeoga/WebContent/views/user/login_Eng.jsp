<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="/views/layout/common.jsp" %>
<head>

<link rel="stylesheet" href="../../css/style.css">

</head>

<body>

	<form action="${pageContext.request.contextPath}/enguser/login.do" method="post" style="margin-top: 200px;">
		<header>Sign In</header>
		<label>ID <span>*</span></label> <input id="id"  name="id" class="form-control" type="text" value="" placeholder="Please input user Id">
		<div class="help"></div>
		<label>Password <span>*</span></label> <input id="pw"  name="pw" class="form-control" type="password" value="" placeholder="please input password">
		<div class="help">beware of UPPER CASE letters</div>
		<div class="left col-xs-9">
		<button type="button" style="background-color: silver;" onclick="location.href='${pageContext.request.contextPath}/views/main_Eng.jsp'">Home</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="submit">sign in</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" style="background-color: red;" onclick="location.href='${pageContext.request.contextPath}/views/user/registUser_Eng.jsp'">register</button>
</div>
	</form>
</body>
</html>
