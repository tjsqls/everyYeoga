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
if (confirm("Do you want to delete this Article?") == true){    //확인
    location.href="${ctx }/engarticle/remove.do?articleId=${article.articleId}";
    
}else{   //취소
    return;
}
}

function report_button(){
	if(confirm("Do you want to report this Article?") == true){		
		location.href="${ctx}/engreport/regist.do?classifyId=${article.articleId}&classifyReport=article&userId=${user.id}"
	}else{
		return;
}
}

function comment_delete(){
	if(confirm("Do you want to delete this Comment?") == true){
		location.href="${ctx }/engcomment/remove.do?articleId=${article.articleId}&commentId=${comment.commentId}"
	}else{
		return;
	}
}

function comment_report(){
	if(confirm("Do you want to report this Comment?") == true){
		location.href="${ctx }/engreport/regist.do?classifyId=${comment.commentId}&classifyReport='comment'&userId=${comment.user.id}"
	}else{
		return;
	}
}
</script>



</head>
<body class="left-sidebar">

	<div id="page-wrapper">

		<!-- Header -->
<%@ include file="/views/layout/header_Eng.jsp" %>

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

													<strong>written by. ${user.id }</strong> &nbsp;<span
														class="text-muted"><fmt:formatDate value="${article.regDate }" pattern="yyyy-MM-dd" /></span> &nbsp; 
																	
																	<a class="glyphicon glyphicon-cog pull-right" 
																	onclick="button_event();" style="padding: 10px">Delete</a>
																	 <a href="${ctx }/engarticle/modify.do?articleId=${article.articleId}" class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">Modify</a> <br>
														
														<br>
														File List &nbsp;
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
														style="padding: 10px">Report</a>
														
													<c:forEach items="${article.comments }" var="comment">
													<c:set var="commentUser" value="${comment.user}"/>
														<table class="table"
															style="font-size: 13px; padding: 10px;">
															<tr>
																<td><strong>writer : ${commentUser.id }</strong></td>
																<td class="text-right">Posted Date :&nbsp; <fmt:formatDate
																	value="${comment.regDate }" pattern="dd-MM-yyyy" /> </td>
															</tr>
															
															<tr>
																<td colspan="2">
																	<p class="txt">${comment.content }</p>
																	<span
																	style="float: right"> <a
																		class="glyphicon glyphicon-pencil" style="color: gray;"
																		href="${ctx }/engcomment/modify.do?articleId=${article.articleId}&commentId=${comment.commentId}">Modify</a>

																	&nbsp;	<a class="glyphicon glyphicon-trash"
																		onclick="comment_delete();" style="color: gray;">Delete</a>

																		&nbsp;<a class="glyphicon glyphicon-lock"
																		onclick="comment_report();" style="color: gray;">Report</a></span>
																</td>
															</tr>
														</table>
													</c:forEach>

												</div>

												<br>

												<div class="panel-footer">
				
														<form
															action="${ctx }/engcomment/regist.do" method="POST">


															<input type="hidden" name="articleId" value="${article.articleId }">
															<input type="hidden" name="groupId" value="${article.groupId }">
														<table>
														<tr>
														<td>
															<textarea class="input_write_comment" name="content"

																placeholder="write comment" style="width: 450px;" rows="1"></textarea></td>
															<td> <input type="submit"
																class="comment_submit" value="submit" style="width: 80px; text-align: left; font-size: 17px; background-color: purple;"></td>
																</tr>
															</table>

														</form>
													</div>
												</div>
												<br/>
												<ul >
												<li style="text-align: center;">
<input type="button" class="comment_submit" value="Back to List" style="width: 80px; text-align: left; font-size: 17px; background-color: gray; "
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
</div></div>
				<!-- Footer -->
		<%@ include file="/views/layout/footer_Eng.jsp" %>



	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
