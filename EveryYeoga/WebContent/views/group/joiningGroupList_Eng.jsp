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
		<%@ include file="/views/layout/header_Eng.jsp" %>
			<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
		<%@ include file="/views/layout/sidebar_Eng.jsp" %>

					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 70px; width: 1050px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>My Groups</h3>
									<hr>
								</div>

								<div class="table-responsive">


										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover">
												<colgroup>
													<col width="100" />
													<col width="*" />
													<col width="120" />
													<col width="70" />
													<col width="50" />
												</colgroup>
												<thead>
													<tr>
														<th class="text-center" style="width: 20%; font-weight: bold">No.</th>
														<th class="text-center" style="width: 40%; font-weight: bold">Created Date</th>
														<th class="text-center" style="width: 20%; font-weight: bold">Travel Plan No.</th>
														<th class="text-center" style="width: 20%; font-weight: bold">More</th>
													</tr>
												</thead>

												<tbody>
													<c:choose>
														<c:when test="${empty groups }">
															<tr>
																<th colspan="5" class="text-center">You haven't joined a group yet.</th>
															</tr>
														</c:when>
														<c:otherwise>
															<c:forEach var="group" items="${groups }" varStatus="sts">
																<tr>
																	<td class="text-center">${sts.count }</td>
																	
																	<td class="text-center"><fmt:formatDate
																			value="${group.regDate }" pattern="dd/MM/yyyy" /></td>
																	<td class="text-center">${group.travelPlanId }</td>
																	<td class="text-center"><a href="${ctx }/enggroup/list.do?groupId=${group.groupId}">Group Detail</a></td>	
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>

												</tbody>
											</table>
										</div>
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
