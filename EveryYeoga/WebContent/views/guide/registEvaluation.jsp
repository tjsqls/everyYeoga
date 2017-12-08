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
		<%@ include file="/views/layout/header.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
		<%@ include file="/views/layout/sidebar.jsp" %>

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
											<c:forEach items="${guideIds}" var="guideId">
												<label class="col-lg-2 control-label"><h3>가이드:${guideId }</h3></label>
												<input type="hidden" name="guideId" value="${guideId }">

												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>좋았던
															점</h3></label> <input type="text" name="pros" value="">
													<div class="col-lg-10"></div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>나빴던
															점</h3></label> <input type="text" name="cons"
														value="">
													<div class="col-lg-10"></div>
												</div>

												<label class="col-lg-2 control-label"><h3>별점</h3></label>
												
														<select name="stars">
															<option value="1"><label
														for="p5">1</label></option>
															<option value="2"><label
														for="p5">2</label></option>
															<option value="3"><label
														for="p5">3</label></option>
															<option value="4"><label
														for="p5">4</label></option>
															<option value="5"><label
														for="p5">5</label></option> 
															</select>
												
													</c:forEach>

												<div class="form-group">
													<div class="col-lg-10 col-lg-offset-2">
														<span style="float: center"><button type="submit"
																class="btn btn-pr">평가 완료</button> <span
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
