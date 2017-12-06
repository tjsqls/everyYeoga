<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp"%>
<head>


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script>
            $(function() {
              $.datepicker.setDefaults($.datepicker.regional['ko']); //datepicker 한국어로 사용하기 위한 언어설정
              $('#startDate').datepicker({dateFormat: 'y/mm/dd'});
            });
            $(function() {
                $.datepicker.setDefaults($.datepicker.regional['ko']); //datepicker 한국어로 사용하기 위한 언어설정
                $('#endDate').datepicker({dateFormat: 'y/mm/dd'});
              });
        </script>


</head>
<body class="left-sidebar">

	<div id="page-wrapper">

		<!-- Header -->
<%@ include file="/views/layout/header_Eng.jsp" %>

		<!-- Main -->
		
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">


					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 200px; width: 1000px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>Create Travel Plan</h3>
									<hr>
								</div>

								<div class="table-responsive">
								
										<form action="${ctx}/travel/regist.do" class="bs-example form-horizontal" method="post" style="width: 800px;">
											<fieldset>
											
											<table class="form-group">
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 50px;">Languages&nbsp;</label> </td>
												<td><input placeholder="what kind of languages can you use" type="text" name="speakingAbility" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
				
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">Travel Area&nbsp;</label> </td>
												<td><input placeholder="how much do you know about your travel area" type="text" name="travelArea" value=""style="width: 550px; height:40px;"></td></tr>
				
									<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">Visited Times&nbsp;</label> </td>
												<td><input placeholder="how many times have you visited this area" type="text" name="numberOfVisits" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
													<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">Travel Starts&nbsp;</label> </td>
												<td><input placeholder="yyyy/mm/dd" type="text" name="startDate" value=""style="width: 550px; height:40px;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">Travel Ends&nbsp;</label> </td>
												<td><input placeholder="yyyy/mm/dd" type="text" name="endDate" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">Travel Theme&nbsp;</label> </td>
												<td><input placeholder="what kind of travel you wish to have." type="text" name="theme" value=""style="width: 550px; height:40px;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">Number of people&nbsp;</label> </td>
												<td><input placeholder="maximum number of people." type="text" name="numberOfTraveler" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">Preferred Guide&nbsp;</label> </td>
												<td><input placeholder="explain preferred types of guide." type="text" name="preferGuide" value=""style="width: 550px; height:40px;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">Introduction&nbsp;</label> </td>
												<td><input placeholder="please introduce yourself." type="text" name="selfIntroduction" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
				</table>

												<br /> <br />
												<div class="form-group">
													<div class="col-lg-10 col-lg-offset-2">
														<button type="submit" class="btn btn-pr" style="background-color: #007171;">create a Plan</button> 
														<button type="reset" class="btn btn-default" onClick="location.href='history.back();''">cancel</button>
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
