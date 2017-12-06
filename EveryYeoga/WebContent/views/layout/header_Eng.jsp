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

.top2 a{
font-family: sans-serif;
color: #c0c0c0; 

}

.top1{
background:#edf1f0;
font-weight: bold;
padding-top: 6px;
margin-right: 20px;
font-size: 14px;
border-radius: 20px;
margin-left: 200px;
border-color: #a0bac7;
box-shadow:inset 1px 0 2px rgba(0,0,0,0.6);
}

.top1 a{
font-family: sans-serif;
color: white; 
text-shadow: 0px 1px 5px gray;
}

</style>
<header>

 <div class="left col-xs-6">
<h1 style="font-weight: bolder; margin-left: 200px; font-size: 40px; font-family: monospace; "> 
<img alt="모두의 여가" src='http://www.travelweekly.com/uploadedImages/All_TW_Art/2016/032816/T0328COVERILLO2_HR.jpg?n=3385&width=1540&height=866&mode=crop&Anchor=MiddleCenter' width="260px" height="102px">
<span style="font-weight:bolder; font-family: fantasy; color: #edf1f0; text-shadow: 1px 1px 1px #000000; white-space: nowrap;">모두의 여가</span>
</h1>
 </div>
 
  <div class="right col-xs-6" >
		<ul>
		<c:choose>
					<c:when test="${loginedUser eq null}">
					<li id="top-header">
					<a href="${pageContext.request.contextPath}/views/user/login_Eng.jsp">sign in</a> &nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/views/user/registUser_Eng.jsp">register</a></li>
					</c:when>
					<c:otherwise>
					<li id="top-header">
						<a href="${pageContext.request.contextPath}/enguser/detail.do"> <span>Hi! [ ${loginedUser.name } ]</span></a> &nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/views/user/login_Eng.jsp">sign out</a></li>
					</c:otherwise>
				</c:choose>
		
		</ul>
		<ul class="top2">
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
	<ul class="top1" style="width: 1250px;'">
	
				<c:choose>
			<c:when test="${loginedUser.id == 'admin'}">
			
		<li>
		<a href="${pageContext.request.contextPath}/views/main_Eng.jsp">HOME</a>&nbsp; &nbsp; &nbsp; 
		<a href="${pageContext.request.contextPath}/views/travel/travelPlanList_Eng.jsp">Search Travel</a> &nbsp; &nbsp; &nbsp; 
		<a href="${pageContext.request.contextPath}/enggroup/groupList.do">Manage Group</a> &nbsp; &nbsp; &nbsp; 
					<a href="${pageContext.request.contextPath}/enguser/searchAll.do">Admin Page</a></li>
			</c:when>
			<c:otherwise>
			
				<li>
				<a href="${pageContext.request.contextPath}/views/main_Eng.jsp">HOME</a>&nbsp; &nbsp; &nbsp; 
				<a href="${pageContext.request.contextPath}/views/travel/travelPlanList_Eng.jsp">Search Travel</a>&nbsp; &nbsp; &nbsp; 
						<a href="${pageContext.request.contextPath}/engtravel/regist.do">Post Travel</a> &nbsp; &nbsp; &nbsp;
						<a href="${pageContext.request.contextPath}/enggroup/groupList.do">Manage Group</a> </li>
			</c:otherwise>
		</c:choose>

<hr width="97%">

	</ul>
	
	</header>
