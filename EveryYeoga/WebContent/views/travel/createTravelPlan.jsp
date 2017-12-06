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
<%@ include file="/views/layout/header.jsp" %>

		<!-- Main -->
		
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">


					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 200px; width: 1000px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>여행 계획 등록</h3>
									<hr>
								</div>

								<div class="table-responsive">
								
										<form action="${ctx}/travel/regist.do" class="bs-example form-horizontal" method="post" style="width: 800px;">
											<fieldset>
											
											<table class="form-group">
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 50px;">언어구사능력&nbsp;</label> </td>
												<td><input placeholder="사용할수있는 언어를 구체적으로 적어주세요." type="text" name="speakingAbility" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
				
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행지역&nbsp;</label> </td>
												<td><input placeholder="해당 지역에 대해 알고있는 내용을 적어주세요." type="text" name="travelArea" value=""style="width: 550px; height:40px;"></td></tr>
				
									<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행지역 방문횟수&nbsp;</label> </td>
												<td><input placeholder="해당 지역에 방문했던 횟수를 적어주세요." type="text" name="numberOfVisits" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
													<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행 시작일&nbsp;</label> </td>
												<td><input placeholder="yyyy/mm/dd" type="text" name="startDate" value=""style="width: 550px; height:40px;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행 종료일&nbsp;</label> </td>
												<td><input placeholder="yyyy/mm/dd" type="text" name="endDate" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행 테마&nbsp;</label> </td>
												<td><input placeholder="여행시 원하는 테마를 적어주세요." type="text" name="theme" value=""style="width: 550px; height:40px;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">여행인원&nbsp;</label> </td>
												<td><input placeholder="희망하는 인원을 적어주세요." type="text" name="numberOfTraveler" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">선호 가이드&nbsp;</label> </td>
												<td><input placeholder="희망하는 인원을 적어주세요." type="text" name="preferGuide" value=""style="width: 550px; height:40px;"></td></tr>
												
												<tr><td><label  class="text-right" style="font-size: 18px; padding-top: 10px;">자기소개&nbsp;</label> </td>
												<td><input placeholder="희망하는 인원을 적어주세요." type="text" name="selfIntroduction" value=""style="width: 550px; height:40px; background-color: #fff8ec;"></td></tr>
												
				</table>

												<br /> <br />
												<div class="form-group">
													<div class="col-lg-10 col-lg-offset-2">
														<button type="submit" class="btn btn-pr" style="background-color: #007171;">여행계획 등록</button> 
														<button type="reset" class="btn btn-default" onClick="location.href='history.back();''">취소</button>
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
