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
if (confirm("게시물을 올리시겠습니까?") == true){    //확인
    location.href="${ctx}/article/regist.do?groupId=${group.groupId}"; 
}else{   //취소
    return;
}
}

function button_finish(){
	if (confirm("모임을 종료 하시겠습니까? (여행이 종료된 후 눌러주시기 바랍니다.)") == true){    //확인
	    location.href="${ctx }/group/removeGroup.do?groupId=${group.groupId}"; 
	}else{   //취소
	    return;
	}
	}
	
function button_out(){
	if (confirm("모임에서 나가시겠습니까?") == true){    //확인
	    location.href="${ctx }/group/groupOut.do?groupId=${group.groupId}"; 
	}else{   //취소
	    return;
	}
	}
	
function button_more(){
	if (confirm("모임에 가이드를 더 추가하시겠습니까?") == true){    //확인
	    location.href="${ctx }/group/groupModifyStatus.do?travelPlanId=${group.travelPlanId}"; 
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
			<!-- Header -->
			
		<!-- Main -->

		<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
					<ul id="navii">
			<legend style="font-weight: bold;"> 내 모임 </legend>
			
				<li><label style="color: #8f5138;">참여중인 여행자</label></li>
				<li class="group"><a href="#">${traveler.id }</a></li>
				<hr>
				<li><label style="color: #bb6333;">참여중인 가이드</label></li>
				<c:forEach items="${guides }" var="guide">
				<li class="group"><a href="#">${guide.id }</a></li>

				</c:forEach>
				<li><input type="button" onclick="button_post();" value="게시물 올리기" 
				style="background-color: tomato; height: 30px; width: 100px; font-size: 10px; color: black;"></li>
				<br/>
				<li><input type="button" onclick="button_finish();" value="모임 종료" 
				style="background-color: #ffe6c6; height: 30px; width: 100px; font-size: 10px; color: black;"></li>
				<br/>
				<li><input type="button" onclick="button_out();" value="모임 탈퇴" 
				style="background-color: #ffd9aa; height: 30px; width: 100px; font-size: 10px; color: black;"></li>

			</ul>

					
					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="margin-left: 70px; width: 1050px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>내 모임</h3>
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
														<th class="text-center" style="width: 10%; font-weight: bold">번호</th>
														<th class="text-center" style="width: 40%; font-weight: bold">제목</th>
														<th class="text-center" style="width: 30%; font-weight: bold">작성일</th>
														<th class="text-center"style="width: 20%; font-weight: bold">작성자</th>

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
<c:choose>
								<c:when test="${gatheringStatus == '모집완료' && travelUserId == loginedUser.id  }">
								<input type="button" onclick="button_more();" value="가이드 추가 모집" 
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
