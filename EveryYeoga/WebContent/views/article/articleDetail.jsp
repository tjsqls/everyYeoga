<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<%@ include file="/views/layout/common.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../assets/css/main.css" />

<script type="text/javascript">

function button_event(){
if (confirm("정말 삭제하시겠습니까??") == true){    //확인
    location.href="${ctx }/article/remove.do?articleId=${article.articleId}";
}else{   //취소
    return;
}
}
</script>



</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
<%@ include file="/views/layout/header.jsp" %>

		<!-- Main -->
		
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<%@ include file="/views/layout/sidebar.jsp" %>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>게시물 상세</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<div>
											<h3>${boardDetail.name }</h3>
										</div>

										<div class="panel panel-default">
											<div class="panel-heading">제목 ${article.title }</div>
											<div class="panel-body">
												<div class="post">
													<strong>작성자 ${user.name }</strong> &nbsp;<span
														class="text-muted"><fmt:formatDate
																	value="${article.regDate }" pattern="yyyy-MM-dd" /></span> &nbsp; 
																	
																	<a class="glyphicon glyphicon-cog pull-right" 
																	onclick="button_event();" style="padding: 10px">삭제</a>
																	 <a
														href="${ctx }/article/modify.do?articleId=${article.articleId}"
														class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">수정</a> <br>

													<p style="padding: 20px">${article.content }</p>
													<a
														href="${ctx }/article/modify.do?articleId=${article.articleId}"
														class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">신고</a>




													<c:forEach items="${article.comments }" var="comment">
														<table class="table"
															style="font-size: 13px; padding: 20px;">
															<tr>
																<td><strong>댓글 쓴 사람${comment.user.id }</strong></td>
																<td class="text-right">날짜<fmt:formatDate
																	value="${comment.regDate }" pattern="dd-MM-yyyy" /> <span
																	style="float: right"> <a
																		class="glyphicon glyphicon-trash"
																		href="${ctx }/comment/remove.do?articleId=${article.articleId}&commentId=${comment.commentId}">수정</a>

																		<a class="glyphicon glyphicon-trash"
																		href="${ctx }/comment/remove.do?articleId=${article.articleId}&commentId=${comment.commentId}">삭제</a>

																		<a class="glyphicon glyphicon-trash"
																		href="${ctx }/comment/remove.do?articleId=${article.articleId}&commentId=${comment.commentId}">신고</a>
																</span></td>

															</tr>
															<tr>
																<td colspan="2">
																	<p class="txt">${comment.content }</p>
																</td>
															</tr>
														</table>
													</c:forEach>

												</div>

												<br>

												
												<div class="panel-footer">
													<div class="write_area">
														<form
															action="${ctx }/comment/regist.do"
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
