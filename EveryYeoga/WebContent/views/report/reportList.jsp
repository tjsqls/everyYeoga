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

<%@ include file="/views/layout/common.jsp" %>
<head>
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
					
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>신고 목록</h3>
									<hr>
								</div>

								<div class="table-responsive" style="width: 900px;" >
						

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
														<th class="text-center" style="width: 10%">번호</th>
														<th class="text-center" style="width: 30%">게시물/댓글</th>
														<th class="text-center" style="width: 20%">신고분류</th>
														<th class="text-center" style="width: 20%">신고된 날짜</th>
														<th class="text-center" style="width: 30%">신고자</th>
													</tr>
												</thead>
												<tbody>
											<c:forEach var="report" items="${userReport }" varStatus="sts">
													<tr>
														<td class="text-center" style="width: 10%">${sts.count}</td>
														<td class="text-center" style="width: 30%">${report.classifyReport }</td>
														<td class="text-center" style="width: 20%">${report.reportType }</td>
														<td class="text-center" style="width: 30%">
														<fmt:formatDate value="${report.regDate }" pattern="yyyy-MM-dd" /></td>
														<td class="text-center" style="width: 20%">${report.reportedUser.id }</td>
													</tr>
													</c:forEach>													

												</tbody>
											</table>
										</div>
											<span style="float: right">
												<ul>
													<li style="text-align: center;">
													<input type=button value="확인" onClick="history.back();" style="font-size: 16px; background-color: gray; text-align: center;">											
													</li>
													</ul>
										
											</span>
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
