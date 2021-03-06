<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

		<%@ include file="/views/layout/common.jsp"%>
<head>


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script>
$(function() {
	$("#startDate").datepicker({
		dateFormat : 'yy/mm/dd'
	});
});

</script>
</head>

<body>
		<!-- Header -->
	<%@ include file="/views/layout/header.jsp" %>
<br/>
					<div id="content" style="margin-left: 400px; width: 1000px;">
							<div class="col-sm-19 col-lg-19">	
							<div style="font-weight: bold; width: 800px;">
									<h3 class="glyphicon glyphicon-search"> 여행검색하기</h3>
									<hr>
								</div>
							
							<div class="table-responsive">
										<div class="row">
											<div class="col-sm-12 col-lg-12">
												<form
													action="${ctx}/travel/searchTravelPlan.do"
													class="bs-example form-horizontal" method="POST" style="width: 1000px;">

											<table style=" width: 400px;">
													<tr><td><span style="color: red; font-weight: bold; size: 8px; margin-bottom: 10px;">* 지역은 필수 선택 입니다.</span></td></tr>				
													<tr><td><input type="text" name="travelArea" placeholder="지역" value="" style="width: 400px;" /></td></tr>
													
													<tr><td style="margin-top: 5px;"> <input style="width: 300px;" id="startDate" name="startDate" type="text"
														placeholder="여행 시작 날짜 (yy/mm/dd)" value="" /></td>
					<td style="margin-top: 10px;"> <input type="text" name="speakingAbility" placeholder="언어구사능력" style="width: 300px;" value="" /></td></tr>
					   									</table><table>
														<tr><td style="text-align: center;" ><button type="submit" style="width: 200px; background-color: tomato;">검색</button></td></tr>
														
											</table>

												</form>
											</div>

										</div>
							</div>
							</div>
							</div>

<br/><br/>
<hr>

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
