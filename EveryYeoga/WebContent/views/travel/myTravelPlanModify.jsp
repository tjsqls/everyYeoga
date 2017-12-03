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
									<h3>여행 계획 수정</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<form
											action="${pageContext.request.contextPath}/travel/modify.do"
											class="bs-example form-horizontal" method="POST">
											<fieldset>
												<input type="radio" name="gatheringStatus" value="true">모집중
												<input type="radio" name="gatheringStatus" value="false">모집완료
												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>언어
															구사 능력</h3></label> <input type="text" name="speakingAbility"
														value="${travelPlan.speakingAbility}">
													<div class="col-lg-10"></div>
												</div>

												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>여행
															지역</h3></label> <input type="text" name="travelArea"
														value="${travelPlan.travelArea}">
													<div class="col-lg-10"></div>
												</div>

												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>여행
															지역 방문 횟수</h3></label> <input type="text" name="numberOfVisits"
														value="${travelPlan.numberOfVisits}" disabled="disabled">
													<div class="col-lg-10"></div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>여행
															시작일</h3></label> <input type="text" name="startDate"
														value="${travelPlan.startDate}" disabled="disabled">
													<div class="col-lg-10"></div>
												</div>
												
												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>여행
															종료일</h3></label> <input type="text" name="endDate"
														value="${travelPlan.endDate}" disabled="disabled">
													<div class="col-lg-10"></div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>여행
															테마</h3></label> <input type="text" name="theme"
														value="${travelPlan.theme}">
													<div class="col-lg-10"></div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>여행
															인원</h3></label> <input type="text" name="numberOfTraveler"
														value="${travelPlan.numberOfTraveler}">
													<div class="col-lg-10"></div>
												</div>



												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>선호
															가이드</h3></label> <input type="text" name="preferGuide"
														value="${travelPlan.preferGuide}">
													<div class="col-lg-10"></div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>자기
															소개</h3></label>

													<div class="col-lg-10">
														<textarea class="form-control" name="selfIntroduction"
															rows="2" id="textArea"></textarea>
													</div>
												</div>
												<br /> <br />
												<div class="form-group">
													<div class="col-lg-10 col-lg-offset-2">
														<span style="float: center"><button type="submit"
																class="btn btn-pr">여행계획 수정</button> <span
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
