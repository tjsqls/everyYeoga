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
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
		<%@ include file="/views/layout/sidebar.jsp" %>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="width: 1000px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>여행 계획 수정</h3>
									<hr>
								</div>

								<div class="table-responsive">
							
										<form
											action="${pageContext.request.contextPath}/travel/modify.do"
											class="bs-example form-horizontal" method="POST" style="width: 800px;">
											<fieldset>
											<ul> 
												<li style="text-align: center;"><input type="radio" name="gatheringStatus" value="true">모집중&nbsp;&nbsp;
												<input type="radio" name="gatheringStatus" value="false">모집완료</li>
											</ul>
																							
												<table class="form-group">
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 20px;">언어구사능력&nbsp;&nbsp;</label> </td>
												<td><input type="text" name="speakingAbility" value="${travelPlan.speakingAbility}"
												style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행지역&nbsp;&nbsp;</label> </td>
												<td><input type="text" name="travelArea" value="${travelPlan.travelArea}"
												style="width: 550px; height:40px; background-color: #fff8ec; border-style: solid; border: 2;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행지역 방문횟수&nbsp;&nbsp;</label> </td>
												<td><input type="text" name="numberOfVisits" value="${travelPlan.numberOfVisits}"
												style="width: 550px; height:40px; background-color: #fff8ec;" disabled="disabled"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행 시작일&nbsp;&nbsp;</label> </td>
												<td><input type="text" name="startDate" value="${travelPlan.startDate}"
												style="width: 550px; height:40px; background-color: #fff8ec;" disabled="disabled"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행 종료일&nbsp;&nbsp;</label> </td>
												<td><input type="text" name="endDate" value="${travelPlan.endDate}"
												style="width: 550px; height:40px; background-color: #fff8ec;" disabled="disabled"></td></tr>

												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행 테마&nbsp;&nbsp;</label> </td>
												<td><input type="text" name="theme" value="${travelPlan.theme}"
												style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행 인원&nbsp;&nbsp;</label> </td>
												<td><input type="text" name="numberOfTraveler" value="${travelPlan.numberOfTraveler}"
												style="width: 550px; height:40px; background-color: #fff8ec;" ></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">선호 가이드&nbsp;&nbsp;</label> </td>
												<td><input class="form-control" type="text" name="preferGuide" value="${travelPlan.preferGuide}"
												style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">자기소개&nbsp;&nbsp;</label> </td>
												<td><textarea class="form-control" name="selfIntroduction" value="${travelPlan.preferGuide}"
												style="width: 550px; height:40px; background-color: #fff8ec;"rows="2" id="textArea"></textarea></td></tr>
										
												</table>
												<ul>
												<li style="text-align: center;">
											<button type="submit" class="btn btn-pr">여행계획 수정</button> 
										<button type="reset" class="btn btn-default">취소</button>
												</li>
												
												</ul>

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
