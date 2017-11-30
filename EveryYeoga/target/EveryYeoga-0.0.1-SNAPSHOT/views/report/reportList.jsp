<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../assets/css/main.css" />
</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
<%@ include file="/views/layout/header.jsp" %>

		<!-- Main -->

		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<div class="4u 12u$(medium)">


						<div id="sidebar">

							<!-- Sidebar -->
							<section>
								<ul class="style2">									<li><a
										href="${pageContext.request.contextPath}/views/user/myPage.jsp"><h3>회원정보</h3></a></li>
								<a
										href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp"><h3>여행 검색</h3></a></li>
								
									<li><a href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp"><h3>참여중인 모임</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/travel/myTravelPlan.jsp"><h3>내가
												올린 여행계획</h3></a></li>
	<li><a
										href="${pageContext.request.contextPath}/views/history/myTravelerHistory.jsp"><h3>여행
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/history/myGuideHistory.jsp"><h3>가이드
												내역</h3></a></li>
								</ul>
								</footer>
							</section>

						</div>
					</div>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>신고 목록</h3>
								</div>

								<div class="table-responsive">
									<div class="well">



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
														<th class="text-center">번호</th>
														<th class="text-center">게시물/댓글</th>
														<th class="text-center">신고분류</th>
														<th class="text-center">신고자</th>
														<th class="text-center"></th>
													</tr>
												</thead>
												<tbody>

													<tr>
														<td class="text-center">${article.articleId }</td>
														<td><a
															href="${ctx}/article/find.do?articleId=${article.articleId}">${article.title}
														</a></td>
														<td class="text-center"><fmt:formatDate
																value="${article.regDate }" pattern="yyyy-MM-dd" /></td>
														<td class="text-center">${article.authorName }</td>
														<td class="text-center">110</td>
													</tr>

													<!-- 						
	<c:choose>
								<c:when test="${empty boardDetail.articles }">
									<tr>
										<th colspan="5" class="text-center">게시물이 존재하지 않습니다.</th>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="article" items="${boardDetail.articles }">
										<tr>
											<td class="text-center">${article.articleId }</td>
											<td><a
												href="${ctx}/article/find.do?articleId=${article.articleId}">${article.title}
											</a></td>
											<td class="text-center"><fmt:formatDate
													value="${article.regDate }" pattern="yyyy-MM-dd" /></td>
											<td class="text-center">${article.authorName }</td>
											<td class="text-center">110</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
		 -->
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
