<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<%@ include file="/views/layout/common.jsp"%>

</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/layout/header.jsp"%>
		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">

					<%@ include file="/views/layout/sidebar.jsp"%>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>참여 신청 정보</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>지역</h3></label>

													<div class="col-lg-10">
														<font>${join.travelArea}</font>
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>언어
															구사 능력</h3></label>

													<div class="col-lg-10">
														<font>${join.speakingAbility}</font>
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>가이드
															경험</h3></label>

													<div class="col-lg-10">
														<font>${join.guideExperience}</font>
													</div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>자기소개</h3></label>

													<div class="col-lg-10">
														<font>${join.selfIntroduction}</font>
													</div>
												</div>


												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>신청
															사유</h3></label>

													<div class="col-lg-10">
														<font>${join.joinReason}</font>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>신고</h3></label>

													<div class="col-lg-10">
														<font>신고횟수 : <a
													href="teamPlayerList.do?id=${baseballTeam.teamId }">${join.numberOfReports }</a>회</font>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>가이드 경험</h3></label>

													<div class="col-lg-10">
														<font>가이드횟수 : <a
													href="teamPlayerList.do?id=${baseballTeam.teamId }">${join.numberOfGuideHistories }</a>회</font>
													</div>
												</div>
												
												
												<div class="form-group">
													<label class="col-lg-2 control-label"><h3>평가</h3></label>
												
												<div class="table-responsive">
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
															<tr>
																<th class="text-center">평가번호</th>
																<th class="text-center">별점</th>
																<th class="text-center">좋았던점</th>
																<th class="text-center">나빴던점</th>

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

												</div>
												</div>

												<br /> <br />
												<div class="form-group"></div>

											</fieldset>

										<input type=button value="확인" onClick="history.back();">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<div id="footer-wrapper">
			<footer id="footer" class="container">
				<div class="row">
					<div class="3u 6u(medium) 12u$(small)"></div>
					<div class="3u 6u$(medium) 12u$(small)"></div>
					<div class="3u 6u(medium) 12u$(small)"></div>
					<div class="3u 6u$(medium) 12u$(small)"></div>
				</div>
				<div class="row">
					<div class="12u">
						<div id="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li>
								<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>

	</div>

	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
