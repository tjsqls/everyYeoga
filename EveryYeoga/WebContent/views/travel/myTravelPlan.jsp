<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>

<html>
<head>
<title>모두의 여가</title>

<%@ include file="/views/layout/common.jsp"%>
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
									<h3>내가 올린 여행 계획</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
									
									<table class="table table-striped table-bordered table-hover">
									<thead>
													<tr>
														<th class="text-left">언어구사능력</th>
														<th class="text-center">${travelPlan.speakingAbility}</th><tr>
														<th class="text-left">여행지역</th>
														<th class="text-center">${travelPlan.travelArea}</th><tr>
														<th class="text-left">여행지역방문횟수</th>
														<th class="text-center">${travelPlan.numberOfVisits}</th><tr>
														<th class="text-left">여행시작일</th>
														<th class="text-center">${travelPlan.startDate}</th><tr>
														<th class="text-left">여행종료일</th>
														<th class="text-center">${travelPlan.endDate}</th><tr>
														<th class="text-left">여행테마</th>
														<th class="text-center">${travelPlan.theme}</th><tr>
														<th class="text-left">여행인원</th>
														<th class="text-center">${travelPlan.numberOfTraveler}</th><tr>
														<th class="text-left">선호가이드</th>
														<th class="text-center">${travelPlan.preferGuide}</th><tr>
														<th class="text-left">자기소개</th>
														<th class="text-center">${travelPlan.selfIntroduction}</th><tr>
													</tr>
													<tr>
											
									
									</table>
									<span style="float: right">
												<button type="button"
													onclick="location.href='${pageContext.request.contextPath}/guide/searchGuide.do?travelPlanId=${travelPlan.travelPlanId }' ">가이드
													보기</button>
											</span> <br /> <br />
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
