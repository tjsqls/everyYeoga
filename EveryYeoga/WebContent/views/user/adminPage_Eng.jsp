<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
	<style type="text/css">

    ul#navii {

        width: 200px;
        text-indent: 10px;
        background-color: white;

}
    ul#navii, ul#navii ul {
        margin:1;
        padding:0;
        list-style:none;
        border-bottom-color: gray;
}
    li.group {
        margin-bottom: 10px;

}


</style>

<head>
<%@ include file="/views/layout/common.jsp" %>
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
			<legend> Admin Page </legend>

				<li class="group" style=""><a href="${pageContext.request.contextPath}/engreport/searchAll.do">Manage Reports</a></li>
			</ul>

					
					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="width: 1000px;">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>Reports</h3>
									<hr>
								</div>

								<div class="table-responsive" style="width: 900px;">

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
														<th class="text-center" style="width: 15%; font-weight: bold">Article/Comment</th>
														<th class="text-center" style="width: 15%; font-weight: bold">Report Type</th>
														<th class="text-center" style="width: 20%; font-weight: bold">Reported Date</th>
														<th class="text-center" style="width: 20%; font-weight: bold">Reported User</th>
													</tr>

												</thead>
												<tbody>

												<c:choose>
													<c:when test="${empty reportList}">
														<tr>
															<th colspan="5" class="text-center">There's no report found.</th>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach var="list" items="${reportList }" varStatus="sts">
															<tr>											
														<td class="text-center">${sts.count }</td>
														<c:set var="reportUser" value="${list.reportUser }"/>
														<c:set var="reportedUser" value="${list.reportedUser }"/>
																<c:choose>
																
																<c:when test="${list.classifyReport == 'article'}">
																	<td><a href="${pageContext.request.contextPath}/engreport/searchArticle.do?articleId=${list.classifyId}
																	&reportedUserId=${reportedUser.id}&reportUserId=${reportUser.id}">Article</a></td>
																</c:when>
																
																<c:otherwise>
																	<td><a href="${pageContext.request.contextPath}/engreport/searchComment.do?commentId=${list.classifyId}">Comment</a></td>
																</c:otherwise>															
																
																</c:choose> 
																 <td class="text-center">${list.reportType }</td>
																  <td class="text-center">${reportUser.id }</td>
																  <td class="text-center">
														<fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd" /></td>
															</tr>
														</c:forEach>
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
