<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>모두의 여가</title>


<style type="text/css">
#chooseLanguage{
text-align: right;
color:blue;
margin-right: 100px
}

#top-header{
color:black;
text-align: right;
margin-right: 100px;
font-weight: bold;
}

#top{
background:#d1dedc;
font-weight: bold;
color: white;
padding-top: 6px;
margin-right: 20px;
font-size: 14px;
border-radius: 20px;
border-color: #a0bac7;
margin-left: 200px;
width: 80%;
}


</style>
<header>

 <div class="left col-xs-6">
<h1 style="font-weight: bolder; margin-left: 200px; font-size: 40px; font-family: monospace; "> 
<img alt="모두의 여가" src="${pageContext.request.contextPath}/images/1111.jpg">
</h1>
 </div>
 
  <div class="right col-xs-6" >
		<ul>
		<c:choose>
					<c:when test="${loginedUser eq null}">
					<li id="top-header">
					<a href="${pageContext.request.contextPath}/views/user/login.jsp">로그인</a> &nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/user/regist.do">회원가입</a></li>
					</c:when>
					<c:otherwise>
					<li id="top-header">
						<a href="${pageContext.request.contextPath}/user/detail.do"> <span>[ ${loginedUser.name } ]</span> 님의 마이페이지</a> &nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
					</c:otherwise>
				</c:choose>
		
		</ul>
		<ul>
			<li id="chooseLanguage">
			<img src='https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1280px-Flag_of_the_United_States.svg.png' width="20px" height="10px" >
			<a href="${pageContext.request.contextPath}/travel/travelPlanList.do">English</a>
				&nbsp; &nbsp; &nbsp; 
				<img src='https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/2000px-Flag_of_South_Korea.svg.png' width="28px" height="12px" >
				<a href="${pageContext.request.contextPath}/group/groupList.do">한국어</a>
			</li>
		</ul>
		
</div>
		<!-- Logo -->
		

		<!-- Nav -->
		<br/><br/><br/><br/><br/><br/>
	<ul id="top">
	
				<c:choose>
			<c:when test="${loginedUser.id == 'admin'}">
		<li id="top">
		<a href="${pageContext.request.contextPath}/views/main.jsp">HOME</a>&nbsp; &nbsp; &nbsp; 
		<a href="${pageContext.request.contextPath}/travel/travelPlanList.do">여행검색</a> &nbsp; &nbsp; &nbsp; 
		<a href="${pageContext.request.contextPath}/group/groupList.do">모임관리</a> &nbsp; &nbsp; &nbsp; 
					<a href="${pageContext.request.contextPath}/user/searchAll.do">관리자 페이지</a></li>
			</c:when>
			<c:otherwise>
			
				<li id="top">
				<a href="${pageContext.request.contextPath}/views/main.jsp">HOME</a>&nbsp; &nbsp; &nbsp; 
				<a href="${pageContext.request.contextPath}/travel/travelPlanList.do">여행검색</a>&nbsp; &nbsp; &nbsp; 
						<a href="${pageContext.request.contextPath}/travel/regist.do">여행계획등록</a> &nbsp; &nbsp; &nbsp;
						<a href="${pageContext.request.contextPath}/group/groupList.do">모임관리</a> </li>
			</c:otherwise>
		</c:choose>

<hr width="97%">

	</ul>
	
	</header>
