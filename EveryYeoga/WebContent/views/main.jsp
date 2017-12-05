<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
		<%@ include file="/views/layout/common.jsp"%>


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script>
$(function() {
	$("#satartDate").datepicker({
		dateFormat : 'yy/mm/dd'
	});
});
</script>
</head>

<body>
		<!-- Header -->
	<%@ include file="/views/layout/header.jsp" %>
<br/>
						<div id="content">
							<div class="col-sm-19 col-lg-19">											
								
										<div class="row" style="margin-left: 300px;">
											<div class="col-sm-12 col-lg-12">
													<form
													action="${ctx}/travel/searchTravelPlan.do"
													class="bs-example form-horizontal" method="POST">
										<fieldset>
										<legend style="width: 700px;">여행 계획 검색</legend>
													
													<input style="width: 700px; height:40px;" id="satartDate" name="satartDate" type="text" placeholder="여행 시작 날짜 (yy/mm/dd)" value="" />
													<br/>
														<input  style="width: 700px; height:40px;"type="text" name="speakingAbility" placeholder="언어구사능력" value="" />
														<br/>
													<input  style="width: 700px; height:40px;" type="text" name="travelArea" placeholder="지역" value="" />
													<br/>
														<button style="background-color: tomato; margin-left: 620px;" type="submit">검색</button>
														
											</fieldset>
												</form>
												<br/><br/>
											</div>

										</div>
							
							</div>
						</div>
				
	
<br/><br/>
<hr>



	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
<%@ include file="/views/layout/footer.jsp" %>
</html>