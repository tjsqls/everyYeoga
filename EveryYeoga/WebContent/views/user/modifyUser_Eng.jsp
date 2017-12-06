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
	if (confirm("Do you want to cancel Modify?") == true){    //확인
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
		<%@ include file="/views/layout/header_Eng.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
		<%@ include file="/views/layout/sidebar_Eng.jsp" %>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>Personal Information</h3>
									<hr>
								</div>

								<form action="${pageContext.request.contextPath}/user/modify.do" method="post">
										<input type="hidden" name="pw" value="${user.pw}">
										<input type="hidden" name="id" value="${user.id}">
									<table>
									
										<tr>
											<td><label>ID</label></td>
											<td><input style="height: 35px;" type="text" name="id" value="${user.id}" disabled="disabled"> </td>
										</tr>


										<tr>
											<td><label>Name</label></td>
											<td><input style="height: 35px;" type="text"  name="name" value="${user.name}"> </td>
										</tr>

										<tr>
											<td><label>Date Of Birth</label></td>
											<td><input style="height: 35px;" type="text"  name="birthDate" value="${user.birthDate}"> </td>
										</tr>

										<tr>
											<td><label>Email</label></td>
											<td><input style="height: 35px;" type="text" name="email"  value="${user.email}"> </td>
										</tr>

										<tr>
											<td><label>Phone Number</label></td>
												<td><input style="height: 35px;" type="text" name="phoneNumber" value="${user.phoneNumber}"> </td>
										</tr>
										</table>
										<table style="margin-left: 100px;">
										<tr>
										<td><button type="submit" style="background-color: tomato; height: 35px; width:80px; font-size: 15px; text-align: center;">save</button></td>
											<td><button type="submit" style="background-color: orange; height: 35px; width:80px; font-size: 15px; text-align: center;" onclick="button_cancel();">cancel</button></td>
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
		<%@ include file="/views/layout/footer_Eng.jsp" %>


	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
