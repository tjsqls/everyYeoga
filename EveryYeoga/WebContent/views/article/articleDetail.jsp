<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp" %>
<head>


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
	var commentId = document.getElementById("commentId").value;
	if(confirm("댓글을 삭제하시겠습니까?") == true){
		location.href="${ctx }/comment/remove.do?articleId=${article.articleId}&commentId="+commentId
	}else{
		return;
	}
}

function comment_report(){
	var commentId = document.getElementById("commentId").value;
	var writer = document.getElementById("writer").value;
	alert(writer);
	if(confirm("댓글을 신고하시겠습니까?") == true){
		location.href="${ctx }/report/regist.do?classifyId="+commentId+"&classifyReport='comment'&userId="+writer
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


					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 200px; width: 1000px;">
							<div class="col-sm-9 col-lg-9">

								<div class="table-responsive">
							
										<div>
											<h3>${boardDetail.name }</h3>
										</div>

										<div class="panel panel-default">
											<div class="panel-heading"><h2 class="glyphicon glyphicon-plane">&nbsp;${article.title }</h2></div>
											<div class="panel-body">
												<div class="post">

													<strong>작성자 ${user.id }</strong> &nbsp;<span
														class="text-muted"><fmt:formatDate value="${article.regDate }" pattern="yyyy-MM-dd" /></span> &nbsp; 
																	
																	<a class="glyphicon glyphicon-cog pull-right" 
																	onclick="button_event();" style="padding: 10px">삭제</a>
																	 <a href="${ctx }/article/modify.do?articleId=${article.articleId}" class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">수정</a> <br>
														
														<br>
														파일리스트 &nbsp;
														<c:forEach items="${attachmentList }" var="attachment">
															<table class="table"
															style="font-size: 13px; padding: 20px;">
																<tr><td><a href="${ctx }/downLoad.do?path=${attachment.filePath }&fileName=${attachment.fileName}"> ${attachment.fileName }</a>&nbsp;</td>
																
														</tr>
														</table>
															</c:forEach>
														
														
													<p style="padding: 20px">${article.content }</p>
													<a onclick="report_button();"
														class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">신고</a>
														
													<c:forEach items="${comments }" var="comment">
													<input type="hidden" id="commentId" value="${comment.commentId }">
													<input type="hidden" id="writer" value="${comment.writer }">
														<table class="table"
															style="font-size: 13px; padding: 10px;">
															
															<tr>
																<td><strong>댓글 작성자 : ${comment.writer }</strong></td>
																<td class="text-right">댓글 등록일 :&nbsp; <fmt:formatDate
																	value="${comment.regDate }" pattern="dd-MM-yyyy" /> </td>
															</tr>
															
															<tr>
																<td colspan="2">
																	<p class="txt">${comment.content }</p>
																	<span
																	style="float: right"> <a
																		class="glyphicon glyphicon-pencil" style="color: gray;"
																		href="${ctx }/comment/modify.do?articleId=${article.articleId}&commentId=${comment.commentId}">수정</a>

																	&nbsp;	<a class="glyphicon glyphicon-trash"
																		onclick="comment_delete();" style="color: gray;">삭제</a>

																		&nbsp;<a class="glyphicon glyphicon-lock"
																		onclick="comment_report();" style="color: gray;">신고</a></span>
																</td>
															</tr>
														</table>
													</c:forEach>

												</div>

												<br>

												<div class="panel-footer">
									
														<form
															action="${ctx }/comment/regist.do" method="POST">

															<input type="hidden" name="articleId" value="${article.articleId }">
															<input type="hidden" name="groupId" value="${article.groupId }">
															<input type="hidden" name="writer" value="${loginedUser.id }">
														<table>
														<tr>
														<td>
															<textarea class="input_write_comment" name="content"

																placeholder="댓글쓰기" style="width: 450px;" rows="1"></textarea></td>
															<td> <input type="submit"
																class="comment_submit" value="등록" style="width: 80px; text-align: left; font-size: 17px; background-color: purple;"></td>
																</tr>
															</table>

														</form>
													</div>
												</div>
												<br/>
												<ul >
												<li style="text-align: center;">
<input type="button" class="comment_submit" value="목록" style="width: 80px; text-align: left; font-size: 17px; background-color: gray; "
onClick="history.back();">
</li></ul>

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
