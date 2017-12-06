<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp" %>
<head>

<script type="text/javascript">
	function button_event() {
		if (confirm("Are you sure you want to delete this history?") == true) { //확인
			document.form.submit();
		} else { //취소
			return;
		}
	}
</script>

</head>
<body class="left-sidebar">
	<div id="page-wrapper">
	
	

		<!-- Header -->
		<%@ include file="/views/layout/header.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
		<%@ include file="/views/layout/sidebar.jsp" %>

					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>Guide History</h3>
									<hr>
								</div>

								<div class="table-responsive" style="width: 900px;">
							


										<div class="table-responsive" >
											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="text-center" style="width: 10%; font-weight: bold">No.</th>
														<th class="text-center" style="width: 10%; font-weight: bold">Confirmed by Traveler</th>
														<th class="text-center" style="width: 20%; font-weight: bold">Name of Traveler</th>
														<th class="text-center" style="width: 10%; font-weight: bold">Travel Area</th>
														<th class="text-center" style="width: 20%; font-weight: bold">Theme</th>
														<th class="text-center" style="width: 15%; font-weight: bold">Depart Date</th>
														<th class="text-center" style="width: 15%; font-weight: bold">Return Date</th>
													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${empty flist}">
															<tr>
																<th colspan="8" class="text-center">There's no unconfirmed Guide History.</th>
															</tr>
														</c:when>
														<c:otherwise>
															<c:forEach var="guideHistory" items="${flist}"
																varStatus="sts">
																<tr>
																	<td class="text-center">${sts.count}</td>
																	<td class="text-center">${guideHistory.travelEndStatus}</td>
																	<td class="text-center">${guideHistory.travelerName}</td>
																	<td class="text-center">${guideHistory.travelArea}</td>
																	<td class="text-center">${guideHistory.theme}</td>
																	<td class="text-center">${guideHistory.startDate}</td>
																	<td class="text-center">${guideHistory.endDate}</td>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</tbody>
											</table>
											<table class="table table-striped table-bordered table-hover" >
												<colgroup>
													<col width="100" />
													<col width="*" />
													<col width="120" />
													<col width="70" />
													<col width="50" />
												</colgroup>
												<thead>
													<tr>
														<th class="text-center" style="width: 10%; font-weight: bold">No.</th>
														<th class="text-center" style="width: 10%; font-weight: bold">Confirmed by Traveler</th>
														<th class="text-center" style="width: 20%; font-weight: bold">Name of Traveler</th>
														<th class="text-center" style="width: 10%; font-weight: bold">Travel Area</th>
														<th class="text-center" style="width: 20%; font-weight: bold">Theme</th>
														<th class="text-center" style="width: 15%; font-weight: bold">Depart Date</th>
														<th class="text-center" style="width: 15%; font-weight: bold">Return Date</th>
													</tr>
												</thead>

												<tbody>
													<c:choose>
														<c:when test="${empty tlist}">
															<tr>
																<th colspan="8" class="text-center">There's no confirmed Guide History.</th>
															</tr>
														</c:when>
														<c:otherwise>
															<c:forEach var="tguideHistory" items="${tlist}"
																varStatus="sts">
																<tr>
																<td class="text-center">${sts.count}</td>
																	<td class="text-center">${tguideHistory.travelEndStatus}</td>
																	<td class="text-center">${tguideHistory.travelerName}</td>
																	<td class="text-center">${tguideHistory.travelArea}</td>
																	<td class="text-center">${tguideHistory.theme}</td>
																	<td class="text-center">${tguideHistory.startDate}</td>
																	<td class="text-center">${tguideHistory.endDate}</td>
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
