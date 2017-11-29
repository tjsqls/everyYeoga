<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/main.css" />
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap_modify.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/layout.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-2.1.3.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery.blockUI.js"></script>
</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1>
						<a
							href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">모두의
							가이드</a>
					</h1>

				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a
							href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">여행검색</a></li>
						<li class="current"><a
							href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp">모임관리</a></li>

						<c:choose>
							<c:when test="${loginedUser eq null}">
								<li class="current"><a
									href="${pageContext.request.contextPath}/user/login.do">로그인</a></li> | <li
									class="current"><a
									href="${pageContext.request.contextPath}/user/regist.do">회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li class="current"><a
									href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
			</header>
		</div>

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<div class="4u 12u$(medium)">
						<div id="sidebar">

							<!-- Sidebar -->
							<section>
								<ul class="style2">
									<li><a
										href="${pageContext.request.contextPath}/user/myPage.do"><h3>회원정보</h3></a></li>
									<a
										href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp"><h3>여행
											검색</h3></a>
									</li>

									<li><a
										href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp"><h3>참여중인
												모임</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/travel/myTravelPlan.jsp"><h3>내가
												올린 여행계획</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/history/myTravelerHistory.jsp"><h3>여행
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/history/myGuideHistory.jsp"><h3>가이드
												내역</h3></a></li>
								</ul>
								</footer>
							</section>

						</div>
					</div>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>내 정보</h3>
								</div>

								<form>


									<table>
<<<<<<< HEAD
										<b><label>ID</label></b>
										<label>아이디</label>
										<br />
=======
										<tr>
											<td>ID</td>
											<td>${user.id}</td>
										</tr>
>>>>>>> branch 'master' of https://github.com/tjsqls/everyYeoga.git


										<tr>
											<td>이름</td>
											<td>${user.name}</td>
										</tr>

										<tr>
											<td>생년월일</td>
											<td>${user.birthDate}</td>
										</tr>

										<tr>
											<td>이메일</td>
											<td>${user.email}</td>
										</tr>

										<tr>
											<td>휴대폰 번호</td>
											<td>${user.phoneNumber}</td>
										</tr>
										<tr>
											<td><a
												href="${pageContext.request.contextPath}/user/modify.do?userId=${user.id}">수정</a></td>
											<td><a
												href="${pageContext.request.contextPath}/user/remove.do?userId=${user.id}">삭제</a></td>
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
