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
		<%@ include file="/views/layout/header_Eng.jsp"%>
		<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
					<%@ include file="/views/layout/sidebar_Eng.jsp"%>

					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h2>Evaluate Guide</h2>
									<hr>
								</div>

								<div class="table-responsive" style="width: 700px;">
									<form
										action="${pageContext.request.contextPath}/engguide/registEvaluation.do"
										class="bs-example form-horizontal" method="POST">

										<fieldset>

											<c:forEach items="${guideIds}" var="guideIds">
											<table>
											<tr><td>	<b style="font-size: 20px;">ID of a Guide: [ ${guideIds} ]</b></td></tr>
										<tr><td>	<input type="hidden" name="guideId" value="${guideIds }"></td></tr>
										<tr><td> <p>  </p></td></tr> 
											
									<tr><td><b style="font-size: 20px; color: #0000d0; text-shadow: 1px 1px 1px #c0c0c0;">pros</b></td></tr>
									<tr><td> <input type="text" name="pros" value=""></td></tr>
												
								<tr><td><b style="font-size: 20px; color: red; text-shadow: 1px 1px 1px #c0c0c0;">cons</b></td></tr>
													<tr><td><input type="text" name="cons" value=""></td></tr>
										
												<tr><td><b style="font-size: 20px; color:gray; text-shadow: 1px 1px 1px #c0c0c0;">rating</b></td></tr>
												
														<tr><td><select name="stars">
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
															</select></td></tr>
															</table>
												<hr>
													</c:forEach>

												<div class="form-group">

											<div class="form-group">
												<div class="col-lg-10 col-lg-offset-2">
													<span style="float: center"><button type="submit"
															class="btn btn-pr">done</button></span> <span
														style="float: center"><button type="reset"
																class="btn btn-default">cancel</button></span>
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
