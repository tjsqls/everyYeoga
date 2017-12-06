<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp"%>
<head>


</head>
<body class="left-sidebar">

	<div id="page-wrapper">

		<!-- Header -->
<%@ include file="/views/layout/header.jsp" %>

		<!-- Main -->
		
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">


					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 200px; width: 1000px;">
							<div class="col-sm-9 col-lg-9">

								<div>
									<h3>Apply to Join Group</h3>
									<hr>
								</div>

								<div class="table-responsive">
								
										<form action="${ctx}/guide/registJoin.do"
											class="bs-example form-horizontal" method="POST" style="background-color: #e3e3e3; width: 800px;">
											<fieldset>
												<input type="hidden" name="travelPlanId"
													value="${travelPlanId }">
												<table class="form-group">
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 50px;">Travel Area&nbsp;</label> </td>
												<td><input placeholder="how much you know about this Area" type="text" name="travelArea" value=""style="width: 550px; height:40px;"></td></tr>
										
												<tr><td><label class="text-right"  style="font-size: 18px;">Languages&nbsp;</label> </td>
												<td><input placeholder="what kind of languages you can use" type="text" name="speakingAbility" value="" style="width: 550px; height:40px; "></td></tr>
												
												<tr><td><label class="text-right" style="font-size: 18px;" >Experiences as a Guide&nbsp;</label> </td>
												<td><input placeholder="do you have a experience as a Guide?" type="text" name="guideExperience" value="" style="width: 550px; height:40px;"></td></tr>
												
												<tr><td><label class="text-right" style="font-size: 18px;">Introduce Me&nbsp;</label> </td>
												<td><input placeholder="introuce yourself to Traveler" type="text" name="selfIntroduction" value="" style="width: 550px; height:40px;"></td></tr>
												
												<tr><td><label class="text-right" style="font-size: 18px;">Applying reason&nbsp;</label> </td>
												<td><textarea placeholder="why do you want to be a Guide?" id="textArea" name="joinReason" rows="2" style="width: 550px; height:40px;"></textarea></td></tr>
												</table>

												<br /> <br />
												<ul>
													<li style="text-align: center;">
														<button type="submit"
																class="btn btn-pr" style="background-color: orange;">apply</button>
										<button type="reset" class="btn btn-default" onClick="location.href='history.back();'">cancel</button>
												</li></ul>
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
