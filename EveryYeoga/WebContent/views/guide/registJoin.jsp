<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Verti by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../../assets/css/main.css" />
	</head>
	<body class="left-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">

						<!-- Logo -->
            <div id="logo">
              <h1><a href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">모두의 가이드</a></h1>
     
            </div>

						<!-- Nav -->
						<nav id="nav">
							<ul>
							<li class="current"><a href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">여행검색</a></li>
					<li class="current"><a href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp">모임관리</a></li>
						<li class="current"><a href="login.html">로그아웃</a></li>
							</ul>
						</nav>
					</header>
				</div>

			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row 50%">
							<div class="4u 12u$(medium)">
								<div id="sidebar">

									<!-- Sidebar -->
										<section>
										<ul class="style2">
																											<li><a
										href="${pageContext.request.contextPath}/views/user/myPage.jsp"><h3>회원정보</h3></a></li>
								<a
										href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp"><h3>여행 검색</h3></a></li>
								
									<li><a href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp"><h3>참여중인 모임</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/travel/myTravelPlan.jsp"><h3>내가
												올린 여행계획</h3></a></li>
	<li><a
										href="${pageContext.request.contextPath}/views/history/myTravelerHistory.jsp"><h3>여행
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/history/myGuideHistory.jsp"><h3>가이드
												내역</h3></a></li>
											</ul>
											</footer>
										</section>

								</div>
							</div>
							<div class="8u 12u$(medium) important(medium)">
								<div id="content">
                    <div class="col-sm-9 col-lg-9">
                      <div><h3>여행 참여 신청</h3></div>

    <div class="table-responsive">
        <div class="well">
            <form action="${pageContext.request.contextPath}/article/regist.do"
                  class="bs-example form-horizontal" method="POST">
                <fieldset>
                    <div class="form-group">
                      <input type="hidden" name="boardId" value="${boardDetail.boardId}">
                        <label class="col-lg-2 control-label"><h3>지역</h3></label>

                        <div class="col-lg-10">
                            <input type="text" name="title" class="form-control">
                        </div>
                    </div>

                    <div class="form-group">
                      <input type="hidden" name="boardId" value="${boardDetail.boardId}">
                        <label class="col-lg-2 control-label"><h3>언어 구사 능력</h3></label>

                        <div class="col-lg-10">
                            <input type="text" name="title" class="form-control">
                        </div>
                    </div>
                    
                                        <div class="form-group">
                      <input type="hidden" name="boardId" value="${boardDetail.boardId}">
                        <label class="col-lg-2 control-label"><h3>가이드 경험</h3></label>

                        <div class="col-lg-10">
                            <input type="text" name="title" class="form-control">
                        </div>
                    </div>
                    
                    
                                        <div class="form-group">
                      <input type="hidden" name="boardId" value="${boardDetail.boardId}">
                        <label class="col-lg-2 control-label"><h3>자기소개</h3></label>

                  <div class="col-lg-10">
                            <textarea class="form-control" name="contents" rows="2" id="textArea"></textarea>
                        </div>
                    </div>

                    
                    <div class="form-group">
                        <label class="col-lg-2 control-label"><h3>신청 사유</h3></label>

                        <div class="col-lg-10">
                            <textarea class="form-control" name="contents" rows="2" id="textArea"></textarea>
                        </div>
                    </div>
                    <br />

                    <br />
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <span style="float:center"><button type="submit" class="btn btn-pr">참여 신청</button>
                            <span style="float:center"><button type="reset" class="btn btn-default">취소</button>
                        </div>
                    </div>
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
									<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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
