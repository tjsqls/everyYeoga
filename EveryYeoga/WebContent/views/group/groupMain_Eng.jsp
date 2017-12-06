<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp" %>
<head>
</head>

<body class="left-sidebar">
	<div id="page-wrapper">
	
	

		<!-- Header -->
		<%@ include file="/views/layout/header.jsp" %>
			<!-- Header -->
			
		<!-- Main -->

		<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
					<ul id="navii">
			<legend style="font-weight: bold;"> My Group </legend>
				<li><label style="color: #8f5138;">Joining Traveler</label></li>
				<li class="group"><a href="#">xxxxxx</a></li>
				<br>
				<li><label style="color: #bb6333;">Joining Guide</label></li>
				<li class="group"><a href="#">xxxxxx</a></li>
				
				<hr>
				<li><input type="button" onclick="location.href='${ctx}/article/regist.do?groupId=${group.groupId}'" value="post an article" 
				style="background-color: #fff0dd; height: 30px; width: 100px; font-size: 10px; color: gray;"></li>
				<br/>
				<li><input type="button" onclick="location.href='${ctx }/group/removeGroup.do?groupId=${group.groupId}'" value="End My Group" 
				style="background-color: #ffe6c6; height: 30px; width: 100px; font-size: 10px; color: gray;"></li>
				<br/>
				<li><input type="button" onclick="location.href='${ctx }/group/groupOut.do?groupId=${group.groupId}'" value="Leave My Group" 
				style="background-color: #ffd9aa; height: 30px; width: 100px; font-size: 10px; color: gray;"></li>

			</ul>

					
					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 70px; width: 1050px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>My Group</h3>
									<hr>
								</div>

								<div class="table-responsive">
								
										<div>
											<h3>${boardDetail.name }</h3>
										</div>
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
														<th class="text-center" style="width: 10%; font-weight: bold">No.</th>
														<th class="text-center" style="width: 40%; font-weight: bold">Title</th>
														<th class="text-center" style="width: 30%; font-weight: bold">Written Date</th>
														<th class="text-center"style="width: 20%; font-weight: bold">Writer</th>

													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${empty articles }">
															<tr>
																<th colspan="5" class="text-center">No articles are posted.</th>
															</tr>
														</c:when>
														<c:otherwise>
															<c:forEach var="article" items="${articles }"
																varStatus="sts">

																<tr>
																	<td class="text-center">${sts.count }</td>
																	<td><a
																		href="${ctx}/article/articleDetail.do?articleId=${article.articleId}">${article.title}
																	</a></td>
																	<td class="text-center"><fmt:formatDate
																			value="${article.regDate }" pattern="dd/MM/yyyy" /></td>
																	<td class="text-center">${article.writer }</td>

																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
<c:choose>
								<c:when test="${gatheringStatus == '모집완료' && travelUserId == loginedUser.id  }">
								<input type="button" onclick="location.href='${ctx }/group/groupModifyStatus.do?travelPlanId=${group.travelPlanId}'" value="Gather More Guides" 
				style="background-color: #ff8040; height: 30px; width: 100px; font-size: 10px; margin-bottom: 20px;">
							
								</c:when>
								<c:otherwise>
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
