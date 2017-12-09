<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
		<%@ include file="/views/layout/common.jsp"%>
<head>




<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script>
	$(function() {
		$("#startDate").datepicker({
			dateFormat : 'yy/mm/dd'
		});
	});
</script>

</head>
<body class="left-sidebar">

	<div id="page-wrapper">

		<!-- Header -->
<%@ include file="/views/layout/header_Eng.jsp" %>

		<!-- Main -->
		
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">


					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 200px; width: 1000px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3 class="glyphicon glyphicon-search">Search Travel Plan</h3>
									<hr>
								</div>

								<div class="table-responsive">
										<div class="row">
											<div class="col-sm-12 col-lg-12">
												<form action="${ctx}/travel/searchTravelPlan.do"
													class="bs-example form-horizontal" method="POST" style="width: 1000px;">

											<table style=" width: 400px;">
													<tr><td><span style="color: red; font-weight: bold; size: 8px;">* area must be required</span></td></tr>				
													<tr><td><input type="text" name="travelArea" placeholder="travel area" value="" style="width: 400px;" /></td></tr>
													
													<tr><td style="margin-top: 5px;"> <input style="width: 300px;" id="startDate" name="startDate" type="text"
														placeholder="travel starts(yy/mm/dd)" value="" /></td>
					<td style="margin-top: 10px;"> <input type="text" name="speakingAbility" placeholder="languages" style="width: 300px;" value="" /></td></tr>
					   									</table><table>
														<tr><td style="text-align: center;" ><button type="submit" style="width: 200px; background-color: orange;">search</button></td></tr>
														
											</table>

												</form>
											</div>

										</div>
<br/>
<hr>

										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="text-center" style="font-weight: bold; width: 10%">No.</th>
														<th class="text-center" style="font-weight: bold; width: 30%">Travel Area</th>
														<th class="text-center" style="font-weight: bold; width: 25%">Travel Theme</th>
														<th class="text-center" style="font-weight: bold; width: 15%">Gathering Status</th>
														<th class="text-center" style="font-weight: bold; width: 20%">Traveler's ID</th>
													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${empty list}">
															<tr>
																<th colspan="5" class="text-center"></th>
															</tr>
														</c:when>
														<c:otherwise>
															<c:forEach var="travelPlan" items="${list}"
																varStatus="sts">

																	<tr>
																		<td class="text-center">${sts.count}</td>
																		<td class="text-center">${travelPlan.travelArea}</td>
																		<td class="text-center">${travelPlan.theme}</td>
																		<td class="text-center">${travelPlan.gatheringStatus}</td>
																		<td class="text-center">${travelPlan.travelerId}</td>
																		<td class="text-center"><a href="${ctx}/guide/registJoin.do?travelPlanId=${travelPlan.travelPlanId}">참여 신청하기</a> </td>
																	</tr>
														
																</c:forEach>

														</c:otherwise>
													</c:choose>
												</tbody>
											</table>
										</div>

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
