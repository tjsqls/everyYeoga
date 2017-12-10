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
		<%@ include file="/views/layout/header.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">

					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div style="margin-left: 100px;">
									<h3>참여 신청 정보</h3>
									<hr>
								</div>

								<div class="table-responsive" style="width: 700px; margin-left: 100px; background-color: #e3e3e3;">
									
											<fieldset>
												<table class="table table-striped table-bordered table-hover">
									<thead>
													<tr>
														<td class="text-left" style="font-weight: bold; width:25%;">언어구사능력</td>
														<td class="text-left" >${join.speakingAbility}</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">여행지역</td>
														<td class="text-left">${join.travelArea}</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">가이드경험</td>
														<td class="text-left">${join.guideExperience}</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">가이드횟수</td>
														<td class="text-left" style="padding-bottom:20px"><a
													href="${ctx }/history/searchGuideHistoryByUserId.do?guideId=${join.guideId }">${join.numberOfGuideHistories }</a>&nbsp;&nbsp;<b>회</b></td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">자기소개</td>
														<td class="text-left">${join.selfIntroduction}</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">신청사유</td>
														<td class="text-left"style="padding-bottom:20px">${join.joinReason}</td></tr>
												</thead>
												<tbody>
														<tr><td  class="text-center" colspan="2" style="font-weight: bold; background-color: #b2b2b2;">신고</td></tr>
														<tr><td class="text-left" style="font-weight: bold; width:25%;">신고횟수</td>
														<td class="text-left" style="padding-bottom:20px"><a
													href="${ctx }/report/searchUserReportDetail.do?reportedUserId=${join.guideId }">${join.numberOfReports }</a>&nbsp;<b>회</b></td><tr>												
											
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
															<tr><td  class="text-center" colspan="4" style="font-weight: bold; background-color: #b2b2b2;">평가</td></tr>
															<tr>
																<th class="text-center" style="width: 15%; font-weight: bold">평가번호</th>
																<th class="text-center" style="width: 25%; font-weight: bold">별점</th>
																<th class="text-center" style="width: 30%; font-weight: bold">좋았던점</th>
																<th class="text-center" style="width: 30%; font-weight: bold">나빴던점</th>

															</tr>
														</thead>
														<tbody>

															<c:choose>
																<c:when test="${empty join.evaluations}">
																	<tr>
																		<th colspan="5" class="text-center">평가가 없습니다.</th>
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
						<input type=button value="확인" onClick="history.back();" style="font-size: 16px; background-color: gray; text-align: center;">											
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
