<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
window.onload = function(){
var email = opener.document.getElementById('email').value;
var selectMail = opener.document.getElementById('selectMail').value;
document.getElementById('email').value = email;
document.getElementById('selectMail').value = selectMail;
};
</script>
</head>
<body>
 <form action="${pageContext.request.contextPath}/emailAuth.do" method="post">

		<table>
		<tr><th>이메일 </th><td><input id="email" name="email" type="text" value=""></td><td>@</td>
		<td><input id="selectMail" name="selectMail" type="text" value=""></td>

				</table>
				<br/>
				<table>
				<tr><td><input type="submit" value="인증번호받기"> </td></tr>
		</table>
<br/><br/>
	</form>
</body>
</html>
