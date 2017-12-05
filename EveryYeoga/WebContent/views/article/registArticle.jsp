<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/views/layout/common.jsp"%>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("input[type=file]")
								.change(
										function() {
											var fileListView = "";
											var formData = new FormData(); //ajax로 넘길 data             
											var fileInput = document
													.getElementById("test_file"); //id로 파일 태그를 호출             
											var files = fileInput.files; //업로드한 파일들의 정보를 넣는다.             
											for (var i = 0; i < files.length; i++) {
												formData.append('file-' + i,
														files[i]); //업로드한 파일을 하나하나 읽어서 FormData 안에 넣는다.
											}
											$
													.ajax({
														url : 'http://localhost:8080/EveryYeoga/article/save.do',
														data : formData,
														processData : false,
														contentType : false,
														type : 'POST',
														success : function(data) {
															if (data.code == "OK") { //응답결과
																fileInfoList = data.fileInfoList; //응답 결과 데이터 fileInfoList
																$
																		.each(
																				fileInfoList,
																				function(
																						index,
																						fileInfo) {
																					console
																							.log("Path: "
																									+ fileInfo.fileFullPath); //전체경로
																					console
																							.log("FileName: "
																									+ fileInfo.originalFilename); //파일명                   
																					fileListView += "<p>"
																							+ fileInfo.originalFilename
																							+ "<p>"; //루프를 돌려서 화면에 보여줄 리스트 작성

																				});
																$(
																		"#file_view_list")
																		.html(
																				fileListView); //리스트를 화면에 보여줌

															} else {
																alert("파일 등록에 실패하였습니다.");
															}
														},
														error : function(xhr,
																textStatus,
																error) {
															console.log();
															alert("예상치 못한 오류가 발생했습니다."
																	+ "textStatus: "
																	+ xhr.status
																	+ ", error: "
																	+ error);

														}
													});
										});

					});
</script>

</head>
<body>
	<!-- Header -->
	<%@ include file="/views/layout/header.jsp"%>


	<!-- Main -->
	<div id="main-wrapper">
		<div class="container">
			<div class="row 50%">
				<%@ include file="/views/layout/sidebar.jsp"%>
				<div class="8u 12u$(medium) important(medium)">
					<div id="content">
						<div class="col-sm-9 col-lg-9">
							<div>
								<h3>게시물 작성</h3>
							</div>

							<div class="table-responsive">
								<div class="well">
									<div>
										<h3>${boardDetail.name }</h3>
									</div>
									<form action="${ctx}/article/regist.do" method="post"
										enctype="multipart/form-data">
										<div class="panel panel-default">
											<div class="panel-heading">
												<input type="hidden" name="groupId" value="${groupId }">
												<input type="text" name="title" value=""
													placeholder="제목을 입력해주세요.">
											</div>
											<br> <input type="file" id="test_file" name="file" multiple="multiple">
											<!-- 복수개의 파일을 선택 -->
											<br> 파일 리스트 <br>
											<div id="file_view_list"></div>
											

											<div class="panel-body">
												<div class="post">
													<input type="hidden" name="writer" value="${loginedUser.id }" />
													&nbsp;<span class="text-muted"></span> &nbsp; <br>
													<p style="padding: 20px">
														<textarea class="input_write_article" name="content"
															placeholder="내용을 입력해주세요."></textarea>
													</p>
												</div>

												<br>
											</div>
										</div>
										<button type="submit" class="btn btn-primary">확인</button>
										<button type="reset" class="btn btn-default">취소</button>
									</form>
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