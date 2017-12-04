<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<%@ include file="/views/layout/common.jsp" %>

<script type="text/javascript">
function button_event(){
if (confirm("정말 삭제하시겠습니까??") == true){    //확인
    location.href="${ctx }/article/remove.do?articleId=${article.articleId}";
    
}else{   //취소
    return;
}
}

function report_button(){
	if(confirm("해당 게시글을 신고 하시겠습니까?") == true){		
		location.href="${ctx}/report/regist.do?classifyId=${article.articleId}&classifyReport=article&userId=${user.id}"
	}else{
		return;
}
}

function comment_delete(){
	if(confirm("댓글을 삭제하시겠습니까?") == true){
		location.href="${ctx }/comment/remove.do?articleId=${article.articleId}&commentId=${comment.commentId}"
	}else{
		return;
	}
}

function comment_report(){
	if(confirm("댓글을 신고하시겠습니까?") == true){
		location.href="${ctx }/report/regist.do?classifyId=${comment.commentId}&classifyReport='comment'&userId=${comment.user.id}"
	}else{
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
													<strong>작성자 ${user.id }</strong> &nbsp;<span
														class="text-muted"><fmt:formatDate
																	value="${article.regDate }" pattern="yyyy-MM-dd" /></span> &nbsp; 
																	
																	<a class="glyphicon glyphicon-cog pull-right" 
																	onclick="button_event();" style="padding: 10px">삭제</a>
																	 <a
														href="${ctx }/article/modify.do?articleId=${article.articleId}"
														class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">수정</a> <br>

													<p style="padding: 20px">${article.content }</p>
													<a onclick="report_button();"
														class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">신고</a>




													<c:forEach items="${article.comments }" var="comment">
													<c:set var="commentUser" value="${comment.user}"/>
														<table class="table"
															style="font-size: 13px; padding: 20px;">
															<tr>
																<td><strong>댓글 작성자 ${commentUser.id }</strong></td>
																<td class="text-right">댓글 등록일<fmt:formatDate
																	value="${comment.regDate }" pattern="dd-MM-yyyy" /> <span
																	style="float: right"> <a
																		class="glyphicon glyphicon-trash"
																		href="${ctx }/comment/modify.do?articleId=${article.articleId}&commentId=${comment.commentId}">수정</a>

																		<a class="glyphicon glyphicon-trash"
																		onclick="comment_delete();">삭제</a>

																		<a class="glyphicon glyphicon-trash"
																		onclick="comment_report();">신고</a></span></td>
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
															action="${ctx }/comment/regist.do" method="POST">
															<input type="hidden" name="articleId" value="${article.articleId }">
															<input type="hidden" name="groupId" value="${article.groupId }">
															<textarea class="input_write_comment" name="content"
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

</body>
</html>
