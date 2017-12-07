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
	if(confirm("Do you want to report this content? It will be deleted after administrator has checked.") == true){		
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
<%@ include file="/views/layout/header_Eng.jsp" %>

		<!-- Main -->
		
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">


					<div class="8u 12u$(medium) important(medium)">
						<div id="content" style="width: 900px;">
							<div class="col-sm-9 col-lg-9">
								<div style="margin-left: 300px;">
									<h3>Report</h3>
									<hr>
								</div>

								<div class="table-responsive">
									<div class="well">
										<form 
											action="${pageContext.request.contextPath}/engreport/regist.do" method="post" >
											<fieldset>
											<br />
											<input type="hidden" name="classifyReport" value="${report.classifyReport }"/>
											<input type="hidden" name="reportedUserId" value="${reportedUser.id  }"/>
											<input type="hidden" name="reportUserId" value="${reportUser.id}"/>
											<input type="hidden" name="classifyId" value="${report.classifyId}"/>
													<table>
													<tr><td><span style="font-weight:bold">user to report</span>&nbsp;&nbsp;[ ${reportedUser.id } ]</td></tr>
													</table>
													<table>
												<tr><td><span style="font-weight:bold">Type of report</span></td> </tr>
											<tr><td>	<select name="reportType" style="width: 550px; height: 40px;">
																	<option value="posted ads">posted ads</option>
																	<option value="insult">insult</option>
																	<option value="posted porn">posted porn</option>
																	<option value="too many posts">too many posts</option>
																	<option value="etc">etc</option>
															</select>
															</td>
														</tr>
														</table>
														<table>
														<tr><td><span style="font-weight:bold">Report Reason</span></td></tr>
														<tr><td><textarea placeholder="Please explain" class="form-control" rows="2"
															 name="reportReason" style="width: 550px;"></textarea></td></tr>
														</table>																									

												<br /> <br />
												<table>
														<tr style="text-align: center;"><td><span style="float: center"><input type="submit"
																class="btn btn-pr" value="report" onclick="report();"></span></td>
																<td><span style="float: center">
																<input type="button"
																class="btn btn-pr" value="cancel" style="background-color: gray;" onclick="history.back();"></span></td></tr>
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
			<%@ include file="/views/layout/footer_Eng.jsp" %>


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
