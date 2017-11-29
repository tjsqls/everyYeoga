<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../assets/css/main.css" />
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
						<li class="current"><a
							href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
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
										href="${pageContext.request.contextPath}/views/user/myPage.jsp"><h3>회원정보</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp"><h3>여행
												검색</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp"><h3>참여중인
												모임</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/travel/myTravelPlan.jsp"><h3>내가올린
												여행계획</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/history/myTravelerHistory.jsp"><h3>여행
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/history/myGuideHistory.jsp"><h3>가이드내역</h3></a></li>
								</ul>

							</section>

						</div>
					</div>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>신고 하기</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<form action="${pageContext.request.contextPath}/report/regist.do" class="bs-example form-horizontal" method="POST">
											<fieldset>
												<table>

												<tr><td><p><strong>신고 회원 : </strong> ${reportUser.id }</p></td></tr>
												<tr><td><p><strong>신고 구분 : </strong> [ 댓글]</p></td></tr>

													<tr><td><p><strong>신고 분류 :</strong></p>
												<select style="width:50%">
															<option value="${reportType}">광고물 게시</option>
															<option value="${reportType}">욕설 및 비방</option>
															<option value="${reportType}">음란물 게시</option>
															<option value="${reportType}">도배</option>
															<option value="${reportType}">기타</option>
													</select></td></tr> 

													<tr><td><p><strong>신고사유 :</strong></p></td></tr>
														<tr><td><textarea class="form-control" name="contents" rows="1" style="width:70%"
															id="textArea" value="${reportReason}"></textarea></td></tr></table>
												
												<div class="form-group">
													<div class="col-lg-10 col-lg-offset-2">
														<button type="submit" class="btn btn-pr">신고하기</button>
														<button type="reset" class="btn btn-default">취소</button>
													</div>
												</div>
											</fieldset>
										</form>
									</div>
								</div>
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
