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
<%@ include file="/views/layout/header.jsp" %>
	</head>
	<body class="left-sidebar">
	<div id="page-wrapper">
	
	

		<!-- Header -->
		
			<!-- Header -->
			
		<!-- Main -->

		<div id="main-wrapper">
			<div class="container">
				<div class="row 70%">
					<ul id="navii">
			<legend> 관리자 페이지 </legend>

				<li class="group" style=""><a href="${pageContext.request.contextPath}/report/searchAll.do">신고내역 관리</a></li>
			</ul>

					
					<div class="8u 12u$(medium) important(medium)">
						<div id="contents" style="width: 1000px;">
							<div class="col-sm-9 col-lg-9">
                      <div><h3>신고 상세</h3>
                      <hr>
                      </div>

    <div class="table-responsive">
    
            <form action="${pageContext.request.contextPath}/report/remove.do"
                  class="bs-example form-horizontal" method="POST">
                <fieldset>
                <div class="form-group">                  

                    	<c:set var="report" value="${articleReport }"/>
                    	                    <input type="hidden" name="classifyReport" value="${report.classifyReport }"/>
											<input type="hidden" name="reportedUserId" value="${report.reportedUser.id  }"/>
											<input type="hidden" name="reportUserId" value="${report.reportUser.id  }"/>
											<input type="hidden" name="classifyId" value="${report.classifyId}"/>
                    <table class="table table-striped table-bordered table-hover" style="border: 2; cellpadding:20; cellspacing:0; "> 
              
                    <tr><td><span style="font-weight:bold">신고일 </span>&nbsp; &nbsp; &nbsp;<fmt:formatDate value="${report.regDate }" pattern="yyyy-MM-dd" /></td></tr>                  
                    <tr> <td><span style="font-weight:bold">신고한 회원</span> &nbsp; &nbsp;${report.reportUser.id}</td></tr>
                    <tr> <td><span style="font-weight:bold">신고할 회원</span> &nbsp; &nbsp;${report.reportedUser.id }</td></tr>
                         <tr><td><span style="font-weight:bold">신고 구분 </span>&nbsp; &nbsp;게시물</td></tr>
           			<tr> <td><span style="font-weight:bold">신고 분류</span> &nbsp; &nbsp;${report.reportType}</td></tr>
           				   <tr><td><span style="font-weight:bold">신고사유</span></td></tr>
					<tr><td><textarea  rows="3">${report.reportReason }</textarea></td></tr>
                    </table>                  
                      <br />
                    <br />
 					  <br />
 					  
                  <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <span style="float:center; margin-left: 100px;"><button type="submit" class="btn btn-pr">승인</button></span>
                             
                            <span style="float:center; margin-left: 50px;"><button type="reset" class="btn btn-default" 
                            onclick="location.href='${pageContext.request.contextPath}/report/searchAll.do'">목록으로</button></span>
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
