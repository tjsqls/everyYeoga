<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">

		<%@ include file="/views/layout/common.jsp"%>
</head>
	<%@ include file="/views/layout/header_Eng.jsp" %>
<body>

	<form action="${pageContext.request.contextPath}/enguser/regist.do" method="post">

		<fieldset style="width: 50%; margin-left: 400px; margin-top: 50px;" >
		<legend style="font-weight: bold"> Register  <span style="color: red; font-weight: bold; font-size: 11px;">* All informations are required.</span></legend>
		<br/>
		<table>
		<tr><th>ID</th><td> <input style="width: 300px; height: 40px;" id="id"  name="id"  type="text" value="" placeholder="Please input ID." size="10"></td> </tr>
		<tr><th>Password </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw"  name="pw"  type="password" value="" placeholder="Please input password"> </td>  </tr>
		<tr><th>Confirm Password </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw"  name="pw"  type="password" value="" placeholder="Please confirm password"> </td>  </tr>
		<tr><th>Name </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="name"  name="name"  type="text" value="" placeholder="Please input name">  </td>  </tr>
		<tr><th>Date of Birth </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="birthDate"  name="birthDate"  type="text" value="" placeholder="yyyy/mm/dd">  </td> </tr>
		<tr><th>Phone Number</th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="phoneNumber"  name="phoneNumber" type="text" value="" placeholder="Please input phone number"></td> </tr>
		<tr><th>Email</th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="email" name="email" type="text" value=""></td><td>@</td><td><select name="selectMail">
					<option value="">naver.com</option>
					<option value="">gmail.com</option>
					<option value="">hanmail.net</option> </select></td>
				<td><button>validate</button></td></tr>
				</table>
				<br/>
				<table>
				<tr><td><input style="margin-left: 200px; background-color: gray;" type="reset" value="cancel">&nbsp; &nbsp; <input type="submit" value="regist" style="background-color: pink;"></td></tr>
		</table>
<br/><br/>
		
		</fieldset>
	</form>
<hr>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
<%@ include file="/views/layout/footer_Eng.jsp" %>
</html>
