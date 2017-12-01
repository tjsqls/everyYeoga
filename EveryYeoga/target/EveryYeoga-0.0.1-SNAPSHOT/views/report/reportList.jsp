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
						<a href="${pageContext.request.contextPath}/views/user/adminPage.jsp">모두의 가이드</a>
					</h1>

				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">여행검색</a></li>
					<li class="current"><a href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp">모임관리</a></li>
						<li class="current"><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
					</ul>
				</nav>
			</header>
		</div>

<%@ include file="/views/layout/header.jsp" %>


		<!-- Main -->

		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>신고 목록</h3>
								</div>

								<div class="table-responsive" >
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
														<th class="text-center" style="width: 10%">번호</th>
														<th class="text-center" style="width: 30%">게시물/댓글</th>
														<th class="text-center" style="width: 20%">신고분류</th>
														<th class="text-center" style="width: 30%">신고된 날짜</th>
														<th class="text-center" style="width: 20%">신고자</th>
														<th class="text-center"></th>
													</tr>
												</thead>
												<tbody>
											<c:forEach var="report" items="${userReport }" varStatus="sts">
													<tr>
														<td class="text-center" style="width: 10%">${sts.count}</td>
														<td class="text-center" style="width: 30%">${report.classifyReport }</td>
														<td class="text-center" style="width: 20%">${report.reportType }</td>
														<td class="text-center" style="width: 30%">
														<fmt:formatDate value="${report.regDate }" pattern="yyyy-MM-dd" /></td>
														<td class="text-center" style="width: 20%">${report.reportedUser.id }</td>
													</tr>
													</c:forEach>													

												</tbody>
											</table>
										</div>
										<div class="text-center">
                <a href=" 특정 가이드의 참여신청 정보 페이지로 이동">
                 <center><button type="button" class="btn btn-default" style="height:45px; width:78px; font-size:12px;">← 이전</button></center>
                </a>
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
