<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="/views/layout/common.jsp" %>
<head>


<link rel="stylesheet" href="../../css/style.css">
<script type="text/javascript">
function capsLock(e){
  var keyCode = 0;
  var shiftKey=false;
  keyCode=e.keyCode;
  shiftKey=e.shiftKey;
  if (((keyCode >= 65 && keyCode <= 90)&& !shiftKey)||((keyCode >= 97 && keyCode <= 122)&& shiftKey))
  {
    alert("CapsLock이 켜져 있습니다");
    return;
  }
}
</script>
</head>

<body>

	<form action="${pageContext.request.contextPath}/user/login.do" method="post" style="margin-top: 200px;">
		<header>Sign In</header>
		<label>ID <span>*</span></label> <input id="id"  name="id" class="form-control" type="text" value="" placeholder="Please input user Id">
		<div class="help"></div>
		<label>Password <span>*</span></label> <input id="pw"  name="pw" class="form-control" type="password" value="" onkeypress="javascript:capsLock(this);" placeholder="please input password">
		<div class="help">대문자 입력에 유의하시기 바랍니다.</div>
		<button type="submit">sign in</button>

	</form>
</body>
</html>
