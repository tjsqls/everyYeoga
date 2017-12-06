<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
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
									<h2>가이드 평가</h2>
								</div>

								<div class="table-responsive">
									<div class="well">
										<form
											action="${pageContext.request.contextPath}/guide/registEvaluation.do"
											class="bs-example form-horizontal" method="POST">
											<c:forEach items="${guideIds}" var="guideId">
												<h2>가이드아이디:${guideId }</h2>
												<input type="hidden" name="guideId" value="${guideId }">
												<br><br>
												<fieldset>
													<div class="form-group">

														<h3>좋았던점</h3></label> 
														<input type="text" name="pros" value="">
													</div>

													<div class="form-group">

														<h3>나빴던점</h3></label> 
														<input type="text" name="cons" value="">
													</div>

													<div class="form-group">

														<h3>별점</h3><span class="input"> 
														<input  type="radio" name="stars" value="1" id="p1"> <label 
														for="p1">1</label> 
														<input  type="radio" name="stars" value="2" id="p2"> <label
														for="p2">2</label> 
														<input  type="radio" name="stars" value="3" id="p3"> <label 
														for="p3">3</label> 
														<input  type="radio" name="stars" value="4" id="p4"> <label 
														for="p4">4</label> 
														<input  type="radio" name="stars" value="5" id="p5"> <label
														for="p5">5</label>
														</span>
													</div>

													<br /> <br />
													<div class="form-group">
														<div class="col-lg-10 col-lg-offset-2">
															<span style="float: center"><button type="submit"
																	class="btn btn-pr">평가완료</button> <span
																style="float: center"><button type="reset"
																		class="btn btn-default">취소</button>
														</div>
													</div>
												</fieldset>
											</c:forEach>
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
	<script
		src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/star.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
