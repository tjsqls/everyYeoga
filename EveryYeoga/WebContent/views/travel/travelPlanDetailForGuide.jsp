<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp"%>
<head>
</head>
<body class="left-sidebar">
	<div id="page-wrapper">
	
	

		<!-- Header -->
		<%@ include file="/views/layout/header.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="width: 1000px; margin-left: 200px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>여행 계획 상세</h3>
									<hr>
								</div>

								<div class="table-responsive">
								
									
									<table class="table table-striped table-bordered table-hover" style="color: gray;">
									<thead>
													<tr>
													
													<td class="text-left" style="font-weight: bold; width:25%;">언어구사능력</td>
														<td class="text-left" >${travelPlan.speakingAbility}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">여행지역</td>
														<td class="text-left" >${travelPlan.travelArea}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">여행지역 방문횟수</td>
														<td class="text-left" >${travelPlan.numberOfVisits}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">여행 시작일</td>
														<td class="text-left" >${travelPlan.startDate}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">여행 종료일</td>
														<td class="text-left" >${travelPlan.endDate}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">여행테마</td>
														<td class="text-left" >${travelPlan.theme}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">여행인원</td>
														<td class="text-left" >${travelPlan.numberOfTraveler}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">선호가이드</td>
														<td class="text-left" >${travelPlan.preferGuide}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">자기소개</td>
														<td class="text-left" >${travelPlan.selfIntroduction}</td></tr>										
									
									</table>
									<span style="float: right">
										<button type="button" onclick="history.back();">목록으로</button>
										<button type="button" onclick="location.href='${ctx}/guide/registJoin.do?travelPlanId=${travelPlan.travelPlanId}'" 
											style="background-color: red;">참여신청</button>
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