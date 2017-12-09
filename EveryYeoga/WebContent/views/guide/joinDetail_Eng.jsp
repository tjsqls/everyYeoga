<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp" %>
<head>

</head>
<body class="left-sidebar">
	<div id="page-wrapper">
	
	

		<!-- Header -->
		<%@ include file="/views/layout/header_Eng.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">

					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div style="margin-left: 100px;">
									<h3>Application Detail</h3>
									<hr>
								</div>

								<div class="table-responsive" style="width: 700px; margin-left: 100px; background-color: #e3e3e3;">
									
											<fieldset>
												<table class="table table-striped table-bordered table-hover">
									<thead>
													<tr>
														<td class="text-left" style="font-weight: bold; width:25%;">Languages</td>
														<td class="text-left" >${join.speakingAbility}</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Travel Area</td>
														<td class="text-left">${join.travelArea}</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:28%;">Experiences as a Guide</td>
														<td class="text-left">${join.guideExperience}</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;"></td>
														<td class="text-left" style="padding-bottom:20px"><a
													href="teamPlayerList.do?id=${baseballTeam.teamId }">${join.numberOfGuideHistories }</a>&nbsp;&nbsp;<b>Times</b></td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Introduce Me</td>
														<td class="text-left">${join.selfIntroduction}</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Applying reason</td>
														<td class="text-left"style="padding-bottom:20px">${join.joinReason}</td></tr>
												</thead>
												<tbody>
														<tr><td  class="text-center" colspan="2" style="font-weight: bold; background-color: #b2b2b2;">Report</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">Reported No. of Times</td>
														<td class="text-left" style="padding-bottom:20px"><a
													href="teamPlayerList.do?id=${baseballTeam.teamId }">${join.numberOfReports }</a>&nbsp;<b>Times</b></td><tr>												
											
													</tbody>
													</table>
											
											
												
												
													<table
														class="table table-striped table-bordered table-hover">
														<colgroup>
															<col width="100" />
															<col width="*" />
															<col width="120" />
															<col width="70" />
															<col width="50" />
														</colgroup>
														<thead>
															<tr><td  class="text-center" colspan="4" style="font-weight: bold; background-color: #b2b2b2;">Evaluation</td></tr>
															<tr>
																<th class="text-center" style="width: 15%; font-weight: bold">No.</th>
																<th class="text-center" style="width: 25%; font-weight: bold">Rates</th>
																<th class="text-center" style="width: 30%; font-weight: bold">pros</th>
																<th class="text-center" style="width: 30%; font-weight: bold">cons</th>

															</tr>
														</thead>
														<tbody>

															<c:choose>
																<c:when test="${empty join.evaluations}">
																	<tr>
																		<th colspan="5" class="text-center">No Evaluations are found.</th>
																	</tr>
																</c:when>
																<c:otherwise>
																	<c:forEach var="evaluation" items="${join.evaluations}"
																		varStatus="sts">
																		<tr>
																			<td class="text-center">${sts.count}</td>
																			<td class="text-center">${evaluation.stars}</td>
																			<td class="text-center">${evaluation.pros}</td>
																			<td class="text-center">${evaluation.cons}</td>
																		</tr>
																	</c:forEach>
																</c:otherwise>
															</c:choose>
														</tbody>
													</table>
													</fieldset>
													<ul>
													<li style="text-align: center;">
						<input type=button value="ok" onClick="history.back();" style="font-size: 16px; background-color: gray; text-align: center;">											
													</li>
													</ul>
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
