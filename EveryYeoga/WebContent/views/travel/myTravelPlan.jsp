<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>

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
						<a href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">모두의 가이드</a>
					</h1>

				</div>
				<!-- Nav -->
				<nav id="nav">
					<ul>
					<li class="current"><a href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">여행검색</a></li>
					<li class="current"><a href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp">모임관리</a></li>
						<li class="current"><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
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
								<ul class="style2">									<li><a
										href="${pageContext.request.contextPath}/views/user/myPage.jsp"><h3>회원정보</h3></a></li>
								<a
										href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp"><h3>여행 검색</h3></a></li>
								
									<li><a href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp"><h3>참여중인 모임</h3></a></li>
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
									<h3>내가 올린 여행 계획</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
									
											<fieldset>
												<div class="form-group">
													<input type="hidden" name="speakongAbility"
														value="${boardDetail.boardId}"> <label
														class="col-lg-2 control-label"><h3>언어 구사 능력</h3></label>

													<div class="col-lg-10">
														<font>언어구사능력</font>
													</div>
												</div>

												<div class="form-group">
													<input type="hidden" name="travelArea"
														value="${boardDetail.boardId}"> <label
														class="col-lg-2 control-label"><h3>여행 지역</h3></label>

													<div class="col-lg-10">
														<font>여행지역</font>
													</div>
												</div>

												<div class="form-group">
													<input type="hidden" name="numberOfVisits"
														value="${boardDetail.boardId}"> <label
														class="col-lg-2 control-label"><h3>여행 지역 방문
															횟수</h3></label>

													<div class="col-lg-10">
														<font>방문횟수</font>
													</div>
												</div>


												<div class="form-group">
													<input type="hidden" name="startDate"
														value="${boardDetail.boardId}"> <label
														class="col-lg-2 control-label"><h3>여행 일정</h3></label>

													<div class="col-lg-10">
														<font>일정</font>
													</div>
												</div>


												<div class="form-group">
													<input type="hidden" name="theme"
														value="${boardDetail.boardId}"> <label
														class="col-lg-2 control-label"><h3>여행 테마</h3></label>

													<div class="col-lg-10">
														<font>테마</font>
													</div>
												</div>


												<div class="form-group">
													<input type="hidden" name="numberOfTraveler"
														value="${boardDetail.boardId}"> <label
														class="col-lg-2 control-label"><h3>여행 인원</h3></label>

													<div class="col-lg-10">
														<font>인원</font>
													</div>
												</div>



												<div class="form-group">
													<input type="hidden" name="preferGuide"
														value="${boardDetail.boardId}"> <label
														class="col-lg-2 control-label"><h3>선호 가이드</h3></label>

													<div class="col-lg-10">
														<font>선호가이드</font>
													</div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>자기
															소개</h3></label>

													<div class="col-lg-10">
														<font>자기소개</font>
													</div>
												</div>
												<span style="float: right" >
												<button type="button" onclick="location.href='${pageContext.request.contextPath}/views/guide/chooseGuide.jsp' ">가이드 보기</button>
												</span>
												<br /> <br />

											</fieldset>
										
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
