<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>

<%@ include file="/views/layout/common.jsp" %>
<head>

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
<body>

	<div id="page-wrapper">

		<!-- Header -->
<%@ include file="/views/layout/header.jsp" %>

		<!-- Main -->
		
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">


					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="width: 900px;">
							<div class="col-sm-9 col-lg-9">
								<div style="margin-left: 300px;">
									<h3>신고 하기</h3>
									<hr>
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
													</table>
													<table>
												<tr><td><span style="font-weight:bold">신고 분류</span></td> </tr>
											<tr><td>	<select name="reportType" style="width: 550px; height: 40px;">
																	<option value="광고물 게시">광고물 게시</option>
																	<option value="욕설 및 비방">욕설 및 비방</option>
																	<option value="음란물 게시">음란물 게시</option>
																	<option value="도배">도배</option>
																	<option value="기타">기타</option>
															</select>
															</td>
														</tr>
														</table>
														<table>
														<tr><td><span style="font-weight:bold">신고 사유 </span></td></tr>
														<tr><td><textarea placeholder="내용을 입력해주세요." class="form-control" rows="2"
															 name="reportReason" style="width: 550px;"></textarea></td></tr>
														</table>																									

												<br /> <br />
												<table>
														<tr style="text-align: center;"><td><span style="float: center"><input type="submit"
																class="btn btn-pr" value="신고" onclick="report();"></span></td>
																<td><span style="float: center">
																<input type="button"
																class="btn btn-pr" value="취소" style="background-color: gray;" onclick="location.href='#'"></span></td></tr>
																	</table>
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
			<%@ include file="/views/layout/footer.jsp" %>


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
