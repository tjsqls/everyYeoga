<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<%@ include file="/views/layout/common.jsp" %>
<head>

<script type="text/javascript">
function button_post(){
if (confirm("Do you want to post an Article?") == true){    //확인
    location.href="${ctx}/engarticle/regist.do?groupId=${group.groupId}"; 
}else{   //취소
    return;
}
}

function button_finish(){
	if (confirm("Do you want to end the group? \n(Please press the button after the travel had finished.)") == true){    //확인
	    location.href="${ctx }/enggroup/removeGroup.do?groupId=${group.groupId}"; 
	}else{   //취소
	    return;
	}
	}
	
function button_out(){
	if (confirm("Are you sure you want to leave the group?") == true){    //확인
	    location.href="${ctx }/enggroup/groupOut.do?groupId=${group.groupId}"; 
	}else{   //취소
	    return;
	}
	}
	
function button_more(){
	if (confirm("Do you want to gather more guides to the group?") == true){    //확인
	    location.href="${ctx }/enggroup/groupModifyStatus.do?travelPlanId=${group.travelPlanId}"; 
	}else{   //취소
	    return;
	}
	}

</script>
</head>

<body class="left-sidebar">
	<div id="page-wrapper">
	
	

		<!-- Header -->
		<%@ include file="/views/layout/header_Eng.jsp" %>
			<!-- Header -->
			
		<!-- Main -->

		<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
					<ul id="navii">
			<legend style="font-weight: bold;">MY Group </legend>
			
				<li><label style="color: #8f5138;">Joining Traveler</label></li>
				<li class="group"><a href="#">${traveler.id }</a></li>
				<hr>
				<li><label style="color: #bb6333;">Joining Guide</label></li>
				<c:forEach items="${guides }" var="guide">
				<li class="group"><a href="#">${guide.id }</a></li>
				</c:forEach>
				<br/>
				<li><input type="button" onclick="button_post();" value="post an article" 
				style="background-color: tomato; height: 30px; width: 100px; font-size: 10px; color: black;"></li>
				<br/>
				<li><input type="button" onclick="button_finish();" value="Finish My Group" 
				style="background-color: #ffe6c6; height: 30px; width: 100px; font-size: 10px; color: black;"></li>
				<br/>
				<li><input type="button" onclick="button_out();" value="Leave My Group" 
				style="background-color: #ffd9aa; height: 30px; width: 100px; font-size: 10px; color: black;"></li>

			</ul>

					
					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 70px; width: 1050px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>My Group</h3>
									<hr>
								</div>

								<div class="table-responsive">
								
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
														<th class="text-center" style="width: 10%; font-weight: bold">No.</th>
														<th class="text-center" style="width: 40%; font-weight: bold">Title</th>
														<th class="text-center" style="width: 30%; font-weight: bold">Posted Date</th>
														<th class="text-center"style="width: 20%; font-weight: bold">writer</th>

													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${empty articles }">
															<tr>
																<th colspan="5" class="text-center">No articles are posted.</th>
															</tr>
														</c:when>
														<c:otherwise>
															<c:forEach var="article" items="${articles }"
																varStatus="sts">

																<tr>
																	<td class="text-center">${sts.count }</td>
																	<td><a
																		href="${ctx}/engarticle/articleDetail.do?articleId=${article.articleId}">${article.title}
																	</a></td>
																	<td class="text-center"><fmt:formatDate
																			value="${article.regDate }" pattern="dd/MM/yyyy" /></td>
																	<td class="text-center">${article.writer }</td>

																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
<c:choose>
								<c:when test="${gatheringStatus == '모집완료' && travelUserId == loginedUser.id  }">
								<input type="button" onclick="button_more();" value="Gather More Guides" 
				style="background-color: #ff8040; height: 30px; width: 100px; font-size: 10px; margin-bottom: 20px;">
							
								</c:when>
								<c:otherwise>
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
