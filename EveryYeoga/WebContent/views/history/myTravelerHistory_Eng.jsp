<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp" %>
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
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>Travel History</h3>
									<hr>
								</div>

								<div class="table-responsive" style="width: 900px;">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover">
												
												<thead>
													<tr>
													
													
														<th class="text-center" style="width: 10%; font-weight: bold">No.</th>
														<th class="text-center" style="width: 15%; font-weight: bold">Travel Area</th>
														<th class="text-center" style="width: 17%; font-weight: bold">Theme</th>
														<th class="text-center" style="width: 28%; font-weight: bold">Joined Guides</th>
														<th class="text-center" style="width: 15%; font-weight: bold">Depart Date</th>
														<th class="text-center" style="width: 15%; font-weight: bold">Return Date</th>
													</tr>
												</thead>
												<c:choose>
													<c:when test="${empty list }">
														<tr>
															<th colspan="8" class="text-center">There's no history as a Traveler.</th>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach items="${list }" var="travelerHistory" varStatus="sts" >
															<tr>
																<td class="text-center">${sts.count}</td>
																<td class="text-center">${travelerHistory.travelArea}</td>
																<td class="text-center">${travelerHistory.theme}</td>
																<td class="text-center">${travelerHistory.guideName}</td>
																<td class="text-center">${travelerHistory.startDate}</td>
																<td class="text-center">${travelerHistory.endDate}</td>
																		<td><a
														href="${ctx }/enghistory/remove.do?travelerHistoryId=${travelerHistory.travelerHistoryId}"
														>delete</a></td>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
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
