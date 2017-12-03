<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
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
									<h3>가이드 선택</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
												<form action="${ctx}/group/regist.do" class="bs-example form-horizontal" method="POST">
													<span style="float: right"><button type="submit"
															style="padding: 10px">선택완료</button></span> 
															<span style="float: right" style="padding: 10px"> </span>
													
											


										<div class="table-responsive">
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
														<th class="text-center">선택</th>
														<th class="text-center">번호</th>
														<th class="text-center">가이드 아이디</th>
														<th class="text-center">가이드경험</th>
														<th class="text-center">언어능력</th>

													</tr>
												</thead>
												<tbody>
											
														<c:choose>
														<c:when test="${empty joinList}">
															<tr>
																<th colspan="5" class="text-center"></th>
															</tr>
														</c:when>
														<c:otherwise>
															<c:forEach var="list" items="${joinList}"
																varStatus="sts">
																<input type="hidden" name="travelPlanId" value="${list.travelPlanId }">
																<input type="hidden" name="joinId" value="${list.joinId }">
																	<tr>
																		
																		<td class="text-center"><input type="checkbox" name="check" value="${list.guideId }"></td>
																		<td class="text-center">${sts.count}</td>
																		<td class="text-center">${list.guideId}</td>
																		<td class="text-center">${list.guideExperience}</td>
																		<td class="text-center">${list.speakingAbility}</td>
						
																		<td><a href="${ctx}/guide/searchJoinDetail.do?joinId=${list.joinId }">상세보기</a></td>
																	</tr>
																</c:forEach> 
														</c:otherwise>
													</c:choose>
												</tbody>
											</table>
										</div>
										</form>
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
