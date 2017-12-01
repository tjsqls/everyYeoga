<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../assets/css/main.css" />
</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
<<<<<<< HEAD
<%@ include file="/views/layout/header.jsp" %>
=======
		<%@ include file="/views/layout/header.jsp"%>
>>>>>>> branch 'master' of https://github.com/tjsqls/everyYeoga.git

		<!-- Main -->

		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<div class="4u 12u$(medium)">


						<div id="sidebar">

							<!-- Sidebar -->
							<section>
								<ul class="style2">
									<li><a
										href="${pageContext.request.contextPath}/user/myPage.do"><h3>회원정보</h3></a></li>
									<a
										href="${pageContext.request.contextPath}/travel/travelPlanList.do"><h3>여행
											검색</h3></a>
									</li>

									<li><a
										href="${pageContext.request.contextPath}/group/joiningGroupList.jsp"><h3>참여중인
												모임</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/travel/myTravelPlan.jsp"><h3>내가
												올린 여행계획</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/history/searchTravelerHistory.do"><h3>여행
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/history/searchGuideHistory.do"><h3>가이드
												내역</h3></a></li>
								</ul>
								</footer>
							</section>

						</div>
					</div>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>가이드 선택</h3>
								</div>

								<div class="table-responsive">
									<div class="well">



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
														<th class="text-center">이름</th>
														<th class="text-center">가이드경험</th>
														<th class="text-center">언어능력</th>

													</tr>
												</thead>
												<tbody>
													<form
											action="${pageContext.request.contextPath}/guide/searchGuide.do"
											class="bs-example form-horizontal" method="POST">
														<tr>
															<td><input type="checkbox" name="guide"
																value="회원아이디"></td>
															<td class="text-center">${join.guide.id }</td>
															<td class="text-center">${join.guide.name }</td>
															<td class="text-center">${join.guide.guideExperience }</td>
															<td class="text-center">${join.guide.speakingAbility }</td>
															

														</tr>

														<span style="float: right"><input type="submit"
															value="선택완료"></span>

													</form>

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

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
