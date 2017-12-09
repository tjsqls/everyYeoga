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
		<%@ include file="/views/layout/header.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
		<%@ include file="/views/layout/sidebar.jsp" %>

					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>여행 내역</h3>
									<hr>
								</div>

								<div class="table-responsive" style="width: 900px;">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover">
												
												<thead>
													<tr>
														<th class="text-center" style="width: 10%; font-weight: bold">번호</th>
														<th class="text-center" style="width: 20%; font-weight: bold">여행지역</th>
														<th class="text-center" style="width: 10%; font-weight: bold">테마</th>
														<th class="text-center" style="width: 20%; font-weight: bold">가이드</th>
														<th class="text-center" style="width: 15%; font-weight: bold">출발날짜</th>
														<th class="text-center" style="width: 15%; font-weight: bold">도착날짜</th>
														<th class="text-center" style="width: 10%; font-weight: bold">삭제</th>
													</tr>
												</thead>
												<c:choose>
													<c:when test="${empty list }">
														<tr>
															<th colspan="8" class="text-center">여행 내역이 존재하지
																않습니다.</th>
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
																		<td class="text-center"><a
														href="${ctx }/history/remove.do?travelerHistoryId=${travelerHistory.travelerHistoryId}"
														>삭제</a></td>
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
