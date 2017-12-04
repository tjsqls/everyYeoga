<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<head>
<title>모두의 여가</title>
<%@ include file="/views/layout/common.jsp" %>

<script type="text/javascript">
function report(){
	if(confirm("신고 하시겠습니까? 해당 신고물은 관리자 확인 후 삭제됩니다.") == true){		
		document.form.submit;
	}else{
document.form.reset;
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
				<div class="row 50%">
					
					<!-- sidebar -->
					<%@ include file="/views/layout/sidebar.jsp" %>
					
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>신고 하기</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<form 
											action="${pageContext.request.contextPath}/report/regist.do" method="post" >
											<fieldset>
											<br />
											<input type="hidden" name="classifyReport" value="${report.classifyReport }"/>
											<input type="hidden" name="reportedUserId" value="${reportedUser.id  }"/>
											<input type="hidden" name="reportUserId" value="${reportUser.id}"/>
											<input type="hidden" name="classifyId" value="${report.classifyId}"/>
													<table>
													<tr><td><span style="font-weight:bold">신고할 회원</span>&nbsp;&nbsp;[ ${reportedUser.id } ]</td></tr>
												<tr><td><span style="font-weight:bold">신고 분류</span> &nbsp;&nbsp;&nbsp;
												<select name="reportType">
																	<option value="광고물 게시">광고물 게시</option>
																	<option value="욕설 및 비방">욕설 및 비방</option>
																	<option value="음란물 게시">음란물 게시</option>
																	<option value="도배">도배</option>
																	<option value="기타">기타</option>
															</select>
															</td>
														</tr>
														<tr><td><span style="font-weight:bold">신고 사유 </span></td></tr>
														<tr><td><textarea placeholder="내용을 입력해주세요." class="form-control" rows="2"
															 name="reportReason"></textarea></td></tr>
														</table>																									

												<br /> <br />
			
														<span style="float: center"><input type="submit"
																class="btn btn-pr" value="신고하기" onclick="report();"></span>
																<span style="float: center"><button type="reset"
																	class="btn btn-default">취소</button></span>
											</fieldset>
										</form>
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
