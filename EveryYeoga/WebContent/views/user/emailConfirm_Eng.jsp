<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/views/layout/common.jsp"%>
<title>confirm Email</title>
<script type="text/javascript">
	function check(){
		var form = document.authenform;
		var authNum = ${authNum};
		
		if(!form.authnum.value){
			alert("Please input validation number");
			return false;
		}
		if(form.authnum.value!=authNum){
			alert("It is incorrect please try again.");
			form.authnum.value="";
			return false;
		}
		if(form.authnum.value==authNum){
			alert("validation completed");
			opener.document.getElementById('confirm').value="validated";
			self.close();
		}
	}


</script>
</head>

<body>

		<form method="post" name="authenform" onsubmit="return check();">
			<input type="text" name="authnum"><br /><br />
			<input type="submit" value="Submit">

		</form>

</body>

</html>
