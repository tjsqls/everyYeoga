<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Verti by HTML5 UP</title>
<%@ include file="/views/layout/common.jsp" %>

	</head>
	<body class="left-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
<%@ include file="/views/layout/header.jsp" %>

			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row 50%">
							
<%@ include file="/views/layout/sidebar.jsp" %>


							<div class="8u 12u$(medium) important(medium)">
								<div id="content">
                    <div class="col-sm-9 col-lg-9">
                      <div><h3>신고 내역</h3></div>

    <div class="table-responsive">
        <div class="well">
            <form action="${pageContext.request.contextPath}/report/remove.do"
                  class="bs-example form-horizontal" method="POST">
                <fieldset>
                <div class="form-group">                  

                    	<c:set var="report" value="${articleReport }"/>
                    	                    <input type="hidden" name="classifyReport" value="${report.classifyReport }"/>
											<input type="hidden" name="reportedUserId" value="${report.reportedUser.id  }"/>
											<input type="hidden" name="reportUserId" value="${report.reportUser.id  }"/>
											<input type="hidden" name="classifyId" value="${report.classifyId}"/>
                    <table class="table table-striped table-bordered table-hover"> 
                    
                    <tr><td><span style="font-weight:bold">신고일 </span>&nbsp; &nbsp; &nbsp;<fmt:formatDate value="${report.regDate }" pattern="yyyy-MM-dd" /></td></tr>  
                    <tr> <td><span style="font-weight:bold">신고한 회원</span> &nbsp; &nbsp;${report.reportUser.id}</td></tr>
                    <tr> <td><span style="font-weight:bold">신고할 회원</span> &nbsp; &nbsp;${report.reportedUser.id }</td></tr>
                         <tr><td><span style="font-weight:bold">신고 구분 </span>&nbsp; &nbsp;게시물</td></tr>
           			<tr> <td><span style="font-weight:bold">신고 분류</span> &nbsp; &nbsp;${report.reportType}</td></tr>
           				   <tr><td><span style="font-weight:bold">신고사유</span></td></tr>
					<tr><td>${report.reportReason }</td></tr>
                    </table>                  
                      <br />
                    <br />
 					  <br />
 					  
                  <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <span style="float:center"><button type="submit" class="btn btn-pr">승인</button>
                             
                            <span style="float:center"><button type="reset" class="btn btn-default" 
                            onclick="location.href='${pageContext.request.contextPath}/report/searchAll.do'">목록으로</button>
                        </div>
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
