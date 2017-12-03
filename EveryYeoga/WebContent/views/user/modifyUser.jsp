<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main.css" />
<link href="${pageContext.request.contextPath }/resources/css/bootstrap_modify.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/layout.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/jquery-2.1.3.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.blockUI.js"></script>
</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/layout/header.jsp"%>

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<%@ include file="/views/layout/sidebar.jsp"%>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>내 정보</h3>
								</div>

								<form action="${pageContext.request.contextPath}/user/modify.do" method="post">
									<table>
										<input type="hidden" name="pw" value="${user.pw}">
										<tr><td>ID </td>
										<td><input type="text" name="id" value="${user.id}"> </td>
										</tr>
										<tr><td>이름 </td>
										<td><input type="text" name="name" value="${user.name}"></td>
										</tr>
										<tr><td>생년월일 </td>
										<td><input type="text" name="birthDate" value="${user.birthDate}"></td>
										</tr>
										<tr><td>이메일 </td>
										<td><input type="text" name="email" value="${user.email}"></td>
										</tr>
										<tr><td>휴대폰 번호 </td>
										<td><input type="text" name="phoneNumber" value="${user.phoneNumber}"></td>
										</tr>
										<tr>
										<button type="submit">저장</button>
                    					<a href="#">취소</a>
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
		<div id="footer-wrapper">
			<footer id="footer" class="container">
				<div class="row">
					<div class="3u 6u(medium) 12u$(small)"></div>
					<div class="3u 6u$(medium) 12u$(small)"></div>
					<div class="3u 6u(medium) 12u$(small)"></div>
					<div class="3u 6u$(medium) 12u$(small)"></div>
				</div>
				<div class="row">
					<div class="12u">
						<div id="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li>
								<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>

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
