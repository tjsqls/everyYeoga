<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
<head>
<%@ include file="/views/layout/common.jsp"%>
<style type="text/css">

input[type=text]:enabled {
    background: #ffffff;
}

input[type=text]:disabled {
    background: #edeeec;
}
</style>


<script type="text/javascript">

function button_cancel(){
	if (confirm("회원정보 수정을 취소하시겠습니까?") == true){    //확인
	    location.href="${pageContext.request.contextPath}/user/detail.do?userId=${user.id}";
	    
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

								<form action="${pageContext.request.contextPath}/user/modify.do" method="post">
										<input type="hidden" name="pw" value="${user.pw}">
									<table>
									
										<tr>
											<td><label>ID</label></td>
											<td><input style="height: 35px;" type="text" name="id" value="${user.id}" disabled="disabled"> </td>
										</tr>


										<tr>
											<td><label>이름</label></td>
											<td><input style="height: 35px;" type="text"  name="name" value="${user.name}"> </td>
										</tr>

										<tr>
											<td><label>생년월일</label></td>
											<td><input style="height: 35px;" type="text"  name="birthDate" value="${user.birthDate}"> </td>
										</tr>

										<tr>
											<td><label>이메일</label></td>
											<td><input style="height: 35px;" type="text" name="email"  value="${user.email}"> </td>
										</tr>

										<tr>
											<td><label>휴대폰번호</label></td>
												<td><input style="height: 35px;" type="text" name="phoneNumber" value="${user.phoneNumber}"> </td>
										</tr>
										</table>
										<table style="margin-left: 100px;">
										<tr>
										<td><button type="submit" style="background-color: tomato; height: 35px; width:80px; font-size: 15px; text-align: center;"">저장</button></td>
											<td><button type="submit" style="background-color: orange; height: 35px; width:80px; font-size: 15px; text-align: center;" onclick="button_cancel();">취소</button></td>
										</tr>
										
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		
		</div>
	<!-- Footer -->
		<%@ include file="/views/layout/footer.jsp" %>


	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
