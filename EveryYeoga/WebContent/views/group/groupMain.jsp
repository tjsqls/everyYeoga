<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
									<h3>모임 게시판*이름변경</h3>
								</div>

								<c:choose>
								<c:when test="${gatheringStatus == '모집완료' && travelUserId == loginedUser.id  }">
								<span style="float: right"><a
									href="${ctx }/group/groupModifyStatus.do?travelPlanId=${group.travelPlanId}">추가모집
										하기</a> </span> 
								</c:when>
								<c:otherwise>
								</c:otherwise>
								</c:choose>
										<br>
										<span style="float: right"><a href="${ctx }/group/groupOut.do?groupId=${group.groupId}">모임탈퇴</a> </span> 
										<br>
										<span style="float: right"><a href="${ctx }/group/removeGroup.do?groupId=${group.groupId}">모임종료</a> </span>
										<br>
								<div class="table-responsive">
									<div class="well">
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
														<th class="text-center">번호</th>
														<th class="text-center">제목</th>
														<th class="text-center">작성일</th>
														<th class="text-center">작성자</th>

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

												</tbody>
											</table>
											<a href="${ctx}/article/regist.do?groupId=${group.groupId}">게시물
												올리기 </a>
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


	</div>
</body>
</html>
