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
	<%@ include file="/views/layout/header_Eng.jsp" %>
<br/>
					<div id="content" style="margin-left: 400px; width: 1000px;">
							<div class="col-sm-19 col-lg-19">	
							<div style="font-weight: bold; width: 800px;">
									<h3 class="glyphicon glyphicon-search"> Search Travel</h3>
									<hr>
								</div>
							
							<div class="table-responsive">
										<div class="row">
											<div class="col-sm-12 col-lg-12">
												<form
													action="${ctx}/engtravel/searchTravelPlan.do"
													class="bs-example form-horizontal" method="POST" style="width: 1000px;">

											<table style=" width: 400px;">
													<tr><td><span style="color: red; font-weight: bold; size: 8px; margin-bottom: 10px;">* Travel area must be filled to search</span></td></tr>				
													<tr><td><input type="text" name="travelArea" placeholder="Travel Area" value="" style="width: 400px;" /></td></tr>
													
													<tr><td style="margin-top: 5px;"> <input style="width: 300px;" id="startDate" name="startDate" type="text"
														placeholder="Travel Starts (yy/mm/dd)" value="" /></td>
					<td style="margin-top: 10px;"> <input type="text" name="speakingAbility" placeholder="languages" style="width: 300px;" value="" /></td></tr>
					   									</table><table>
														<tr><td style="text-align: center;" ><button type="submit" style="width: 200px; background-color: tomato;">search</button></td></tr>
														
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
		<%@ include file="/views/layout/footer_Eng.jsp" %>


	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
