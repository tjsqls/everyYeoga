<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<style type="text/css">

input[type=text]:enabled {
    background: #ffffff;
}

input[type=text]:disabled {
    background: #edeeec;
}
</style>

<%@ include file="/views/layout/common.jsp"%>

<script type="text/javascript">
function button_modify(){
if (confirm("회원 정보를 수정 하시겠습니까?") == true){    //확인
    location.href="${pageContext.request.contextPath}/user/modify.do?userId=${user.id}";
    
}else{   //취소
    return;
}
}

function button_delete(){
	if (confirm("회원 탈퇴를 진행 하시겠습니까?") == true){    //확인
	    location.href="${pageContext.request.contextPath}/user/remove.do?userId=${user.id}";
	    
	}else{   //취소
	    return;
	}
	}
</script>
</head>


<body class="left-sidebar">
	<div id="page-wrapper">
	
	

		<!-- Header -->
		<%@ include file="/views/layout/header.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
		<%@ include file="/views/layout/sidebar.jsp" %>

					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>내 정보</h3>
									<hr>
								</div>

								<form>


									<table>
										<tr>
											<td><label>ID</label></td>
											<td><input style="height: 35px;" type="text" name="id" value="${user.id}" disabled="disabled"> </td>
										</tr>


										<tr>
											<td><label>이름</label></td>
											<td><input style="height: 35px;" type="text"  name="name" value="${user.name}" disabled="disabled"> </td>
										</tr>

										<tr>
											<td><label>생년월일</label></td>
											<td><input style="height: 35px;" type="text"  name="birthDate" value="${user.birthDate}" disabled="disabled"> </td>
										</tr>

										<tr>
											<td><label>이메일</label></td>
											<td><input style="height: 35px;" type="text" name="email"  value="${user.email}" disabled="disabled"> </td>
										</tr>

										<tr>
											<td><label>휴대폰번호</label></td>
												<td><input style="height: 35px;" type="text" name="phoneNumber" value="${user.phoneNumber}" disabled="disabled"> </td>
										</tr>
										</table>
										<table style="margin-left: 100px;">
										<tr>
										<td><input style="background-color: pink; height: 35px; width:70px; font-size: 15px; text-align: center;" type="button" onclick="button_modify();" value="수정"></td>
											<td><input style="background-color: #408080; height: 35px; width:70px; font-size: 15px; text-align: center;" type="button" onclick="button_delete();" value="탈퇴"></td>
										</tr>


									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<%@ include file="/views/layout/footer.jsp" %>

	</div>

	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
