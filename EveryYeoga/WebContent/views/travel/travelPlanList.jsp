<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<head>
		<%@ include file="/views/layout/common.jsp"%>


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script>
$(function() {
	$("#satartDate").datepicker({
		dateFormat : 'yy/mm/dd'
	});
});
</script>

</head>


		<!-- Header -->
		<%@ include file="/views/layout/header.jsp"%>
		<!-- Main -->

	<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div style="margin-left: 310px;">
									<h3>여행 검색</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<div class="row">
											<div class="col-sm-12 col-lg-12">
												<form
													action="${ctx}/travel/searchTravelPlan.do"
													class="bs-example form-horizontal" method="POST">
											<ul>
													
													<li style="margin-top: 5px;"> <input id="satartDate" name="satartDate" type="text"
														placeholder="여행 시작 날짜 (yy/mm/dd)" value="" /></li>
														 
														<li style="margin-top: 10px;"> <input name="speakingAbility" placeholder="언어구사능력" value="" /> </li>
														
														<li style="margin-top: 10px;"><input name="travelArea" placeholder="지역" value="" /></li>
														<li style="margin-top: 10px; text-align: right;"><button type="submit">검색</button></li>
														
											</ul>
												</form>
											</div>

										</div>
<br/>

										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="text-center">번호</th>
														<th class="text-center">여행지역</th>
														<th class="text-center">테마</th>
														<th class="text-center">모집상태</th>
														<th class="text-center">여행자ID</th>
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
			
</body>
		<%@ include file="/views/layout/footer.jsp" %>

	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>


</html>