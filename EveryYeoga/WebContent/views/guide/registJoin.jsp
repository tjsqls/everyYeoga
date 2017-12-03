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
									<h3>여행 참여 신청</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<form
											action="${ctx}/guide/registJoin.do"
											class="bs-example form-horizontal" method="POST">
											<fieldset>
											<input type="hidden" name="travelPlanId" value="${travelPlanId }">
												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>지역</h3></label> 
													<input type="text" name="travelArea" value="">
													<div class="col-lg-10"></div>
												</div>

												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>언어
															구사 능력</h3></label> <input type="text" name="speakingAbility"
														value="">
													<div class="col-lg-10"></div>
												</div>

												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>가이드
															경험</h3></label> <input type="text" name="guideExperience"
														value="">
													<div class="col-lg-10"></div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>자기소개</h3></label>

													<div class="col-lg-10">
														<textarea class="form-control" name="selfIntroduction"
															rows="2" id="textArea"></textarea>
													</div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>신청
															사유</h3></label>
													<div class="col-lg-10">
														<textarea class="form-control" name="joinReason" rows="2"
															id="textArea"></textarea>
													</div>
												</div>
												<br /> <br />
												<div class="form-group">
													<div class="col-lg-10 col-lg-offset-2">
														<span style="float: center"><button type="submit"
																class="btn btn-pr">참여 신청</button> <span
															style="float: center"><button type="reset"
																	class="btn btn-default">취소</button>
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
