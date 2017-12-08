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
		<%@ include file="/views/layout/header_Eng.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
		<%@ include file="/views/layout/sidebar_Eng.jsp" %>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="width: 1000px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>My Travel Plan</h3>
									<hr>
								</div>

								<div class="table-responsive">
								
									
									<table class="table table-striped table-bordered table-hover" style="color: gray;">
									<thead>
													<tr>
													
													<td class="text-left" style="font-weight: bold; width:25%;">Languages</td>
														<td class="text-left" >${travelPlan.speakingAbility}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Travel Area</td>
														<td class="text-left" >${travelPlan.travelArea}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Visited Times</td>
														<td class="text-left" >${travelPlan.numberOfVisits}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Travel Starts</td>
														<td class="text-left" >${travelPlan.startDate}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Travel Ends</td>
														<td class="text-left" >${travelPlan.endDate}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Travel Theme</td>
														<td class="text-left" >${travelPlan.theme}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Number of People</td>
														<td class="text-left" >${travelPlan.numberOfTraveler}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Preferred Guide</td>
														<td class="text-left" >${travelPlan.preferGuide}</td></tr>
														
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Introduction</td>
														<td class="text-left" >${travelPlan.selfIntroduction}</td></tr>										
									
									</table>
									<span style="float: right">
												<button type="button"
													onclick="location.href='${pageContext.request.contextPath}/engguide/searchGuide.do?travelPlanId=${travelPlan.travelPlanId }'">
													See Guides</button>
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
