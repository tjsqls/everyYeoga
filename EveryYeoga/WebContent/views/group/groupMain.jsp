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
			<legend style="font-weight: bold;"> 내 모임 </legend>
				<li><label style="color: #8f5138;">참여중인 여행자</label></li>
				<li class="group"><a href="#">xxxxxx</a></li>
				<br>
				<li><label style="color: #bb6333;">참여중인 가이드</label></li>
				<li class="group"><a href="#">xxxxxx</a></li>
				
				<hr>
				<li><input type="button" onclick="location.href='${ctx}/article/regist.do?groupId=${group.groupId}'" value="게시물 올리기" 
				style="background-color: #fff0dd; height: 30px; width: 100px; font-size: 10px; color: gray;"></li>
				<br/>
				<li><input type="button" onclick="location.href='${ctx }/group/removeGroup.do?groupId=${group.groupId}'" value="모임 종료" 
				style="background-color: #ffe6c6; height: 30px; width: 100px; font-size: 10px; color: gray;"></li>
				<br/>
				<li><input type="button" onclick="location.href='${ctx }/group/groupOut.do?groupId=${group.groupId}'" value="모임 탈퇴" 
				style="background-color: #ffd9aa; height: 30px; width: 100px; font-size: 10px; color: gray;"></li>

			</ul>

					
					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 70px; width: 1050px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>내 모임</h3>
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
														<th class="text-center" style="width: 10%; font-weight: bold">번호</th>
														<th class="text-center" style="width: 40%; font-weight: bold">제목</th>
														<th class="text-center" style="width: 30%; font-weight: bold">작성일</th>
														<th class="text-center"style="width: 20%; font-weight: bold">작성자</th>

													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${empty articles }">
															<tr>
																<th colspan="5" class="text-center">게시물이 존재하지 않습니다.</th>
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
								<input type="button" onclick="location.href='${ctx }/group/groupModifyStatus.do?travelPlanId=${group.travelPlanId}'" value="가이드 추가 모집" 
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
