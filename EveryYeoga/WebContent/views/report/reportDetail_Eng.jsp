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
<%@ include file="/views/layout/header_Eng.jsp" %>
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
			<legend style="font-weight: bold;"> Admin Page </legend>

				<li class="group"><a href="${pageContext.request.contextPath}/engreport/searchAll.do">Manage Reports</a></li>
		
			</ul>

					
					<div class="8u 12u$(medium) important(medium)">
						<div id="contents" style="width: 1000px;">
							<div class="col-sm-9 col-lg-9">
                      <div><h3>Report Detail</h3>
                      <hr>
                      </div>

    <div class="table-responsive">
    
            <form action="${pageContext.request.contextPath}/engreport/remove.do"
                  class="bs-example form-horizontal" method="POST">
                <fieldset>
                <div class="form-group">                  

                    	<c:set var="report" value="${articleReport }"/>
                    	                    <input type="hidden" name="classifyReport" value="${report.classifyReport }"/>
											<input type="hidden" name="reportedUserId" value="${report.reportedUser.id  }"/>
											<input type="hidden" name="reportUserId" value="${report.reportUser.id  }"/>
											<input type="hidden" name="classifyId" value="${report.classifyId}"/>
                    <table class="table table-striped table-bordered table-hover" style="border: 2; cellpadding:20; cellspacing:0; "> 
              
                    <tr><td><span style="font-weight:bold">reported date </span>&nbsp; &nbsp; &nbsp;<fmt:formatDate value="${report.regDate }" pattern="yyyy-MM-dd" /></td></tr>                  
                    <tr> <td><span style="font-weight:bold">user who reports</span> &nbsp; &nbsp;${report.reportUser.id}</td></tr>
                    <tr> <td><span style="font-weight:bold">user who got reported</span> &nbsp; &nbsp;${report.reportedUser.id }</td></tr>
                         <tr><td><span style="font-weight:bold">report type</span>&nbsp; &nbsp;Article</td></tr>
           			<tr> <td><span style="font-weight:bold">classify report</span> &nbsp; &nbsp;${report.reportType}</td></tr>
           				   <tr><td><span style="font-weight:bold">report reason</span></td></tr>
					<tr><td><textarea  rows="3">${report.reportReason }</textarea></td></tr>
                    </table>                  
                      <br />
                    <br />
 					  <br />
 					  
                  <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <span style="float:center; margin-left: 100px;"><button type="submit" class="btn btn-pr">confirm</button></span>
                             
                            <span style="float:center; margin-left: 50px;"><button type="reset" class="btn btn-default" 
                            onclick="location.href='${pageContext.request.contextPath}/engreport/searchAll.do'">previous page</button></span>
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
