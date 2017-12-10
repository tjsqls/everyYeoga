<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/views/layout/common.jsp"%>
<title>confirm Email</title>
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
<div style="width: 400px; margin-left: 80px;">
		<table>
		<tr><td style="font-weight: bold;">Email to Validate:</td></tr>
		<tr style="width: 250px;"><td><input id="email" name="email" type="text" value="" style="width: 130px; height: 30px;"></td>
		<td><span style="width: 30px; font-weight: bold; margin-top: 10px;  text-align: center;">@</span></td>
		<td><input id="selectMail" name="selectMail" type="text" value="" style="width: 100px; height: 30px;"></td></tr>
		<tr><td><input type="submit" value="send validation Number" style="background-color: silver; width: 70%; height: 45px; margin-top: 20px; font-size: 10px;"> </td></tr>
		</table>
		</div>
<br/><br/>
	</form>
</body>
</html>
