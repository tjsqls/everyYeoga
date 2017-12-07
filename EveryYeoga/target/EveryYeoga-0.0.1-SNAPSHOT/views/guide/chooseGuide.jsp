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

		<!-- Main -->
		
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">


					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 200px; width: 1000px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>가이드 선택</h3>
									<hr>
								</div>

								<div class="table-responsive" style="width: 900px;">
								
												<form action="${ctx}/group/regist.do" class="bs-example form-horizontal" method="POST">

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
														<th class="text-center" style="width: 7%; font-weight: bold">선택</th>
														<th class="text-center" style="width: 7%; font-weight: bold">번호</th>
														<th class="text-center" style="width: 20%; font-weight: bold">가이드 아이디</th>
														<th class="text-center" style="width: 30%; font-weight: bold">가이드경험</th>
														<th class="text-center" style="width: 26%; font-weight: bold">언어능력</th>
														<th class="text-center" style="width: 10%; font-weight: bold">상세보기</th>
													</tr>
												</thead>
												<tbody>
											
														<c:choose>
														<c:when test="${empty joinList}">
															<tr>
																<th colspan="5" class="text-center"></th>
															</tr>
														</c:when>
														<c:otherwise>
														
															<c:forEach var="list" items="${joinList}" varStatus="sts">
																<input type="hidden" name="travelPlanId" value="${list.travelPlanId }">
																<input type="hidden" name="joinId" value="${list.joinId }">
																	<tr>
																		<td class="text-center"><input type="checkbox" name="check" value="${list.guideId }"></td>
																		<td class="text-center">${sts.count}</td>
																		<td class="text-center">${list.guideId}</td>
																		<td class="text-center">${list.guideExperience}</td>
																		<td class="text-center">${list.speakingAbility}</td>
						
																		<td><a href="${ctx}/guide/searchJoinDetail.do?joinId=${list.joinId }">상세보기</a></td>
																	</tr>
																</c:forEach> 
														</c:otherwise>
													</c:choose>
													<table></table>
											<tr><td>	<span style="float: right"><button type="submit" style="padding: 10px">선택완료</button></span> </td></tr>
															</table>
												</tbody>
											</table>
										</div>
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

</body>
</html>
