<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<div id="header-wrapper">
			<header id="header" class="container">
				<!-- Logo -->
				<div id="logo">
					<h1>
						<a
							href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">모두의
							가이드</a>
					</h1>

				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a
							href="${pageContext.request.contextPath}/travel/travelPlanList.do">여행검색</a></li>
						<li class="current"><a
							href="${pageContext.request.contextPath}/group/groupList.do">모임관리</a></li>

						<c:choose>
							<c:when test="${loginedUser eq null}">
								<li class="current"><a
									href="${pageContext.request.contextPath}/user/login.do">로그인</a></li><li
									class="current"><a
									href="${pageContext.request.contextPath}/user/regist.do">회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li class="current"><a
									href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
			</header>
		</div>