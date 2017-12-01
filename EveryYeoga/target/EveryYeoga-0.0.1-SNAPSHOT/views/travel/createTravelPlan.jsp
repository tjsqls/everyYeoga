<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../assets/css/main.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#startDate").datepicker();
	});
	$(function() {
		$("#endDate").datepicker();
	});
</script>
</head>
<body class="left-sidebar">
	<div id="page-wrapper">

<<<<<<< HEAD
			<!-- Header -->
<%@ include file="/views/layout/header.jsp" %>
=======
		<!-- Header -->
		<%@ include file="/views/layout/header.jsp"%>

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<div class="4u 12u$(medium)">
						<div id="sidebar">
>>>>>>> branch 'master' of https://github.com/tjsqls/everyYeoga.git

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
										href="${pageContext.request.contextPath}/group/joiningGroupList.do"><h3>참여중인
												모임</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/travel/myTravelPlan.do"><h3>내가
												올린 여행계획</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/history/myTravelerHistory.do"><h3>여행
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/history/myGuideHistory.do"><h3>가이드
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
									<h3>여행 계획 등록</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<form
											action="${pageContext.request.contextPath}/travel/regist.do"
											class="bs-example form-horizontal" method="GET">
											<fieldset>
												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>언어
															구사 능력</h3></label> <input type="text" name="speakingAbility" value="">
												</div>

												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>여행
															지역</h3></label> <input type="text" name="travelArea" value="">
												</div>

												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>여행
															지역 방문 횟수</h3></label> <input type="text" name="numberOfVisits"
														value="">
												</div>


												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>여행
															시작일</h3></label> <input type="text" id="startDate" name="startDate"
														placeholder="yyyy/mm/dd" />
												</div>

												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>여행
															종료일</h3></label> <input type="text" id="endDate" name="endDate"
														placeholder="yyyy/mm/dd" />
												</div>


												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>여행
															테마</h3></label> <input type="text" name="theme" value="">
												</div>


												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>여행
															인원</h3></label> <input type="text" name="numberOfTraveler" value="">
												</div>



												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>선호
															가이드</h3></label> <input type="text" name="preferGuide" value="">
												</div>



												<div class="form-group">

													<label class="col-lg-2 control-label"><h3>자기
															소개</h3></label> <input type="text" name="selfIntroduction" value="">

												</div>
												<br /> <br />
												<div class="form-group">
													<div class="col-lg-10 col-lg-offset-2">
														<span style="float: center"><button type="submit"
																class="btn btn-pr">여행계획 등록</button> <span
															style="float: center"><button type="reset"
																	class="btn btn-default">취소</button>
													</div>
												</div>
											</fieldset>
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
