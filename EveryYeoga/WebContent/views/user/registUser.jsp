<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>모두의 여가</title>
		<%@ include file="/views/layout/common.jsp"%>
</head>
	
<body>
<%@ include file="/views/layout/header.jsp" %>
	<form action="${pageContext.request.contextPath}/user/regist.do" method="post">

		<fieldset style="width: 50%; margin-left: 400px; margin-top: 50px;" >
		<legend style="font-weight: bold"> 회원가입  <span style="color: red; font-weight: bold; font-size: 11px;">* 모든 입력사항은 필수 입니다.</span></legend>
		<br/>
		<table>
		<tr><th>ID</th><td> <input style="width: 300px; height: 40px;" id="id"  name="id"  type="text" value="" placeholder="ID를 입력해주세요." size="10"></td> </tr>
		<tr><th>비밀번호 </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw"  name="pw"  type="password" value="" placeholder="PW를 입력해주세요."> </td>  </tr>
		<tr><th>비밀번호 확인 </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw"  name="pw"  type="password" value="" placeholder="PW를 입력해주세요."> </td>  </tr>
		<tr><th>이름 </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="name"  name="name"  type="text" value="" placeholder="이름를 입력해주세요.">  </td>  </tr>
		<tr><th>생년월일 </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="birthDate"  name="birthDate"  type="text" value="" placeholder="생년월일를 입력해주세요.">  </td> </tr>
		<tr><th>핸드폰번호</th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="phoneNumber"  name="phoneNumber" type="text" value="" placeholder="휴대폰 번호를 입력해주세요."></td> </tr>
		<tr><th>이메일 </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="email" name="email" type="text" value=""></td><td>@</td><td><select name="selectMail">
					<option value="">naver.com</option>
					<option value="">gmail.com</option>
					<option value="">hanmail.net</option> </select></td>
				<td><button>인증하기</button></td></tr>
				</table>
				<br/>
				<table>
				<tr><td><input style="margin-left: 200px; background-color: gray;" type="reset" value="취소">&nbsp; &nbsp; <input type="submit" value="회원가입" style="background-color: pink;"></td></tr>
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
	<%@ include file="/views/layout/footer.jsp" %>
</body>

</html>
