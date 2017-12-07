<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp"%>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/layout/header.jsp"%>
		<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
					<%@ include file="/views/layout/sidebar.jsp"%>

					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h2>가이드 평가</h2>
									<hr>
								</div>

								<div class="table-responsive" style="width: 800px;">
									<form
										action="${pageContext.request.contextPath}/guide/registEvaluation.do"
										class="bs-example form-horizontal" method="POST">

										<fieldset>

											<c:forEach items="${guideIds}" var="guideIds">
												<h2>가이드아이디:${guideIds}</h2>
												<input type="hidden" name="groupId" value="${groupId }">
												<br>
												<br>
												<div class="form-group">


													<h3>좋았던점</h3>
													</label> <input type="text" name="pros" value="">

												</div>

												<div class="form-group">

													<h3>나빴던점</h3>
													</label> <input type="text" name="cons" value="">
												</div>

												<div class="form-group">

													<h3>별점</h3>
													<span class="input"> <input type="radio"
														name="stars" value="1" id="p1"> <label for="p1">1</label>
														<input type="radio" name="stars" value="2" id="p2">
														<label for="p2">2</label> <input type="radio" name="stars"
														value="3" id="p3"> <label for="p3">3</label> <input
														type="radio" name="stars" value="4" id="p4"> <label
														for="p4">4</label> <input type="radio" name="stars"
														value="5" id="p5"> <label for="p5">5</label>
													</span>
												</div>

												<br />
												<br />


											</c:forEach>
											<div class="form-group">
												<div class="col-lg-10 col-lg-offset-2">
													<span style="float: center"><button type="submit"
															class="btn btn-pr">평가완료</button> <span
														style="float: center"><button type="reset"
																class="btn btn-default">취소</button>
												</div>
											</div>
									</form>

									</fieldset>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@ include file="/views/layout/footer.jsp"%>

	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
