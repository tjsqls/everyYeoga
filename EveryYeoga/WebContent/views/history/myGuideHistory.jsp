<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<%@ include file="/views/layout/common.jsp" %>
<script type="text/javascript">
	function button_event() {
		if (confirm("정말 삭제하시겠습니까??") == true) { //확인
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
									<h3>가이드 내역</h3>
								</div>

								<div class="table-responsive">
									<div class="well">


										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="text-center">번호</th>
														<th class="text-center">확인상태</th>
														<th class="text-center">여행자 이름</th>
														<th class="text-center">여행지역</th>
														<th class="text-center">테마</th>
														<th class="text-center">출발날짜</th>
														<th class="text-center">도착날짜</th>
													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${empty flist}">
															<tr>
																<th colspan="5" class="text-center">미확인 가이드 내역이
																	존재하지 않습니다.</th>
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
																	<td class="text-center"><fmt:formatDate
																			value="${guideHistory.startDate}"
																			pattern="yyyy-MM-dd" /></td>
																	<td class="text-center"><fmt:formatDate
																			value="${guideHistory.endDate}" pattern="yyyy-MM-dd" /></td>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</tbody>
											</table>
											<table class="table table-striped table-bordered table-hover">
												<colgroup>
													<col width="100" />
													<col width="*" />
													<col width="120" />
													<col width="70" />
													<col width="50" />
												</colgroup>
												<thead>
													<tr>
														<th class="text-center">번호</th>
														<th class="text-center">확인상태</th>
														<th class="text-center">여행자 이름</th>
														<th class="text-center">여행지역</th>
														<th class="text-center">테마</th>
														<th class="text-center">출발날짜</th>
														<th class="text-center">도착날짜</th>
													</tr>
												</thead>

												<tbody>
													<c:choose>
														<c:when test="${empty tlist}">
															<tr>
																<th colspan="5" class="text-center">확인 가이드 내역이 존재하지
																	않습니다.</th>
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
																	<td class="text-center"><fmt:formatDate
																			value="${tguideHistory.startDate}"
																			pattern="yyyy-MM-dd" /></td>
																	<td class="text-center"><fmt:formatDate
																			value="${tguideHistory.endDate}" pattern="yyyy-MM-dd" /></td>
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


</body>
</html>