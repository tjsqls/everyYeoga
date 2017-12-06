<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Everyone's YeoGa</title>


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
<h1 style="font-weight: bolder; margin-left: 200px; font-size: 40px; font-family: monospace; "> Everyone's YeoGa</h1>
 </div>
 
  <div class="right col-xs-6" >
		<ul>
		<c:choose>
					<c:when test="${loginedUser eq null}">
					<li id="top-header">
					<a href="${pageContext.request.contextPath}/views/user/login.jsp">Sign in</a> &nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/views/user/registUser.jsp">Register</a></li>
					</c:when>
					<c:otherwise>
					<li id="top-header">
						<a href="${pageContext.request.contextPath}/user/detail.do"> <span>Hi! [ ${loginedUser.name } ]</span></a> &nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/user/logout.do">Sign out</a></li>
					</c:otherwise>
				</c:choose>
		
		</ul>
		<ul>
			<li id="chooseLanguage">
			<img src='https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1280px-Flag_of_the_United_States.svg.png' width="20px" height="10px" >
			<a href="${pageContext.request.contextPath}/views/main_Eng.jsp">English</a>
				&nbsp; &nbsp; &nbsp; 
				<img src='https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/2000px-Flag_of_South_Korea.svg.png' width="28px" height="12px" >
				<a href="${pageContext.request.contextPath}/views/main.jsp">Korean</a>
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
		<a href="${pageContext.request.contextPath}/views/main_Eng.jsp">HOME</a>&nbsp; &nbsp; &nbsp; 
		<a href="${pageContext.request.contextPath}/travel/travelPlanList.do">Search Travel</a> &nbsp; &nbsp; &nbsp; 
		<a href="${pageContext.request.contextPath}/group/groupList.do">Manage My Group</a> &nbsp; &nbsp; &nbsp; 
					<a href="${pageContext.request.contextPath}/user/searchAll.do">Admin Page</a></li>
			</c:when>
			<c:otherwise>
			
				<li id="top">
				<a href="${pageContext.request.contextPath}/views/main_Eng.jsp">HOME</a>&nbsp; &nbsp; &nbsp; 
				<a href="${pageContext.request.contextPath}/travel/travelPlanList.do">Search Travel</a>&nbsp; &nbsp; &nbsp; 
						<a href="${pageContext.request.contextPath}/travel/regist.do">Post my Travel Plan</a> &nbsp; &nbsp; &nbsp;
						<a href="${pageContext.request.contextPath}/group/groupList.do">Manage My Group</a> </li>
			</c:otherwise>
		</c:choose>

<hr width="97%">

	</ul>
	
	</header>
