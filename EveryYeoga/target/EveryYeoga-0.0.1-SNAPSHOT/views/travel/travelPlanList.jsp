<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<<<<<<< HEAD

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main.css" />
<link href="${pageContext.request.contextPath }/resources/css/bootstrap_modify.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/layout.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/jquery-2.1.3.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.blockUI.js"></script>

=======
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../assets/css/main.css" />
>>>>>>> branch 'master' of https://github.com/tjsqls/everyYeoga.git
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script>
	  $(function() {
	    $( "#datepicker" ).datepicker();
	  });
	</script>
</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
<<<<<<< HEAD
		<%@ include file="/views/layout/header.jsp" %>
=======
<%@ include file="/views/layout/header.jsp" %>
>>>>>>> branch 'master' of https://github.com/tjsqls/everyYeoga.git

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
										href="${pageContext.request.contextPath}/user/myPage.do"><h3>회원정보</h3></a></li>
									<a
										href="${pageContext.request.contextPath}/travel/searchTravelPlan.do"><h3>여행
											검색</h3></a>
									</li>

									<li><a
										href="${pageContext.request.contextPath}/group/joiningGroupList.do"><h3>참여중인
												모임</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/travel/myTravelPlan.do"><h3>내가
												올린 여행계획</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/history/myTravelerHistory.do"><h3>여행
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/history/myGuideHistory.do"><h3>가이드
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
									<h3>여행 검색</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<div class="row">
<<<<<<< HEAD
											<div class="col-sm-  
											                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  12 col-lg-12">
												<form>
													<span style="float: right"><button type="input"style="padding: 10px">검색</button></span>
													<span style="float: right"style="padding: 10px">
														 <input type="text" id="datepicker" placeholder="yyyy/mm/dd"></span> <span style="float: right"style="padding: 10px"><input
														placeholder="지역" /></span>
														<input
														placeholder="언어구사능력" /></span>
=======
											<div class="col-sm-12 col-lg-12">
												<form
											action="${pageContext.request.contextPath}/travel/searchTravelPlan.do"
											class="bs-example form-horizontal" method="POST">
													<span style="float: right"><button type="submit"style="padding: 10px">검색</button></span>
													<span style="float: right"style="padding: 10px">
														 <input type="text"placeholder="여행 시작 날짜 (yy/mm/dd)" value=""/></span>
														  <span style="float: right"style="padding: 10px">
														 <input placeholder="언어구사능력" value="" /></span>
														<input placeholder="지역" value="" /></span>
>>>>>>> branch 'master' of https://github.com/tjsqls/everyYeoga.git
												</form>
											</div>
											
										</div>


										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="text-center">여행 지역</th>
														<th class="text-center">테마</th>
														<th class="text-center">모집상태</th>
														<th class="text-center">여행자</th>
													</tr>
												</thead>
											<tbody>
											<c:choose>
												<c:when test="${empty list}">
													<tr>
														<th colspan="5" class="text-center"></th>
													</tr>
<<<<<<< HEAD

													
												</tbody>
=======
												</c:when>
												<c:otherwise>
													<c:forEach var="travelPlan" items="${list}"
														varStatus="sts">
														<tr>
															<td class="text-center">${sts.count}</td>
															<td class="text-center">${travelPlan.travelArea}</td>
															<td class="text-center">${travelPlan.theme}</td>
															<td class="text-center">${travelPlan.gatheringStatus}</td>
															<td class="text-center">${travelPlan.travler.name}</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
											</tbody>
>>>>>>> branch 'master' of https://github.com/tjsqls/everyYeoga.git
											</table>
										</div>
										
										<span style="float: right"><a
										href="${pageContext.request.contextPath}/travel/regist.do"><h3>여행계획 등록하기</h3></a></span>
													
										
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
