<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/views/layout/common.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

	<!-- Header -->
<body>

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
				<div>
					<h3>Modify Article</h3>
					<hr>
				</div>

				<div class="table-responsive">
			
						<div>
							<h3>${boardDetail.name }</h3>
						</div>
						<form action="${ctx}/engarticle/modify.do " method="post">
							<div class="panel panel-default">
								<div class="panel-heading">
								<table>
								<tr><td><input type="hidden" name="articleId" value="${article.articleId}"></td>
								<td style="font-weight: bold;">Title : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> <td><input style="width: 600px; height: 30px;" type="text" name="title" value="${article.title }"></td></tr>
									</table>
								</div>
								<div class="panel-body">
									<div class="post">
										<strong>Written by. ${user.name }</strong> &nbsp;<span
											class="text-muted"><fmt:formatDate
												value="${article.regDate }" pattern="yyyy-MM-dd" /></span> &nbsp;

										<p style="padding: 20px">
											<textarea class="input_write_article" name="content">${article.content }</textarea>
										</p>

									</div>
</div>

								<table>
						<tr align="center"><td>
							<button type="submit" class="btn btn-primary" style="background-color: tomato;">confirm</button></td>
							<td><button type="reset" class="btn btn-default" style="background-color: gray;">cancel</button></td>
							</tr>
							</table>
							</div>
						</form>

					</div>
				</div></div></div></div></div>
		</div></div>
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
