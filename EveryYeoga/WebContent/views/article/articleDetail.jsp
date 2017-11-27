<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../assets/css/main.css" />

<script type="text/javascript">
	function button_event() {
		if (confirm("정말 삭제하시겠습니까??") == true) { //확인
			document.form.submit();
		} else { //취소
			return;
		}
	}
</script>


</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1>
						<a href="index.html">모두의 가이드</a> 

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

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<div class="4u 12u$(medium)">
						<div id="sidebar">
							<!-- ㅁㄴㅇ -->
							<!-- Sidebar -->
							<section>

								<ul class="style2">
														<li><a
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
									<h3>여행 계획 상세</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<div>
											<h3>${boardDetail.name }</h3>
										</div>

										<div class="panel panel-default">
											<div class="panel-heading">${article.title }</div>
											<div class="panel-body">
												<div class="post">
													<strong>${article.user.name }</strong> &nbsp;<span
														class="text-muted">${article.regDate }</span> &nbsp;<a
														href="${ctx }/article/modify.do?articleId=${article.articleId}"
														class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">수정</a> <a
														href="${ctx }/article/remove.do?articleId=${article.articleId}"
														class="glyphicon glyphicon-cog pull-right"
														onclick="button_event();">삭제</a>

												</div>
												<br>

												<p style="padding: 20px">${article.content }</p>

												<c:forEach items="${article.comments }" var="comment">
													<table class="table"
														style="font-size: 13px; padding: 20px;">
														<tr>
															<td><strong>댓글 쓴 사람${comment.user.id }</strong></td>
															<td class="text-right">댓글 날짜${comment.regDate }
															<span style="float:right">
															<a
																class="glyphicon glyphicon-trash"
																href="${pageContext.request.contextPath }/comment/remove.do?articleId=${article.articleId}&commentId=${comment.commentId}">삭제</a>
															</span>
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<p class="txt">${comment.content }</p>
															</td>
														</tr>
													</table>
												</c:forEach>
											</div>
											<div class="panel-footer">
												<div class="write_area">
													<form
														action="${pageContext.request.contextPath }/comment/regist.do"
														method="POST">
														<input type="hidden" name="articleId"
															value="${article.articleId }">
														<textarea class="input_write_comment" name="comments"
															placeholder="댓글쓰기"></textarea>
														<span style="float: right"> <input type="submit"
															class="comment_submit" value="댓글 등록">
														</span>
													</form>
												</div>
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
