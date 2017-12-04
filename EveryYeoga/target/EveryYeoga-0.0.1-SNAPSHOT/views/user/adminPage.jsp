<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1>
						<a
							href="${pageContext.request.contextPath}/views/user/adminPage.jsp">모두의
							가이드</a>
					</h1>

				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a
							href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">여행검색</a></li>
						<li class="current"><a
							href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp">모임관리</a></li>
						<li class="current"><a href="login.html">로그아웃</a></li>
					</ul>
				</nav>
			</header>
		</div>

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
								<ul class="style2">
									<li><a
										href="${pageContext.request.contextPath}/views/user/adminPage.jsp"><h3>신고내역
												관리</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/travel/manageTravelPlan.jsp"><h3>여행계획
												관리</h3></a></li>

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
														<th class="text-center" style="width: 3%">번호</th>
														<th class="text-center" style="width: 5%">게시물/댓글</th>
														<th class="text-center" style="width: 5%">신고분류</th>
														<th class="text-center" style="width: 7%">신고자</th>
														<th class="text-center" style="width: 10%">신고일</th>
													</tr>

												</thead>
												<tbody>

												<c:choose>
													<c:when test="${empty reportList}">
														<tr>
															<th colspan="5" class="text-center">신고가 존재하지 않습니다.</th>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach var="list" items="${reportList }" varStatus="sts">
															<tr>											
														<td class="text-center">${sts.count }</td>
																<c:choose>
																
																<c:when test="${list.classifyReport == 'article'}">
																	<td><a href="${pageContext.request.contextPath}/report/searchArticle.do?articleId=${list.classifyId}">게시물</a></td>
																</c:when>
																
																<c:otherwise>
																	<td><a href="${pageContext.request.contextPath}/report/searchComment.do?commentId=${list.classifyId}">댓글</a></td>
																</c:otherwise>															
																
																</c:choose> 
																 <td class="text-center">${list.reportType }</td>
																  <td class="text-center">${list.reportUser.id }</td>
																  <td class="text-center">
														<fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd" /></td>
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