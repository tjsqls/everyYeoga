<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../../assets/css/main.css" />
<link href="${pageContext.request.contextPath }/resources/css/bootstrap_modify.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/layout.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/jquery-2.1.3.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.blockUI.js"></script>
<script type="text/javascript">
   function button_event() {
      if (confirm("정말 삭제하시겠습니까??") == true) { //확인
         document.form.submit();
      } else { //취소
         return;
      }
   }
</script>
</head>
<body class="left-sidebar">
   <div id="page-wrapper">

      <!-- Header -->
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
                     href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">여행검색</a></li>
                  <li class="current"><a
                     href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp">모임관리</a></li>
                  <li class="current"><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
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
                              href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp"><h3>여행
                                 검색</h3></a>
                           </li>

                           <li><a
                              href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp"><h3>참여중인
                                    모임</h3></a></li>
                           <li><a
                              href="${pageContext.request.contextPath}/views/travel/myTravelPlan.jsp"><h3>내가
                                    올린 여행계획</h3></a></li>
                           <li><a
                              href="${pageContext.request.contextPath}/history/searchTravelerHistory.do"><h3>여행
                                    내역</h3></a></li>
                           <li><a
                              href="${pageContext.request.contextPath}/history/searchGuideHistory.do"><h3>가이드
                                    내역</h3></a></li>
                        </ul>
                        </footer>
                     </section>

                  </div>
               </div>
               <div class="8u 12u$(medium) important(medium)">
                  <div id="content">
                     <div class="col-sm-9 col-lg-9">
                        <div>
                           <h3>가이드 내역</h3>
                        </div>

                        <div class="table-responsive">
                           <div class="well">



                              <div class="table-responsive">
                                 <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                       <tr>
                                          <th class="text-center">번호</th>
                                          <th class="text-center">확인상태</th>
                                          <th class="text-center">여행자 이름</th>
                                          <th class="text-center">여행지역</th>
                                          <th class="text-center">테마</th>
                                          <th class="text-center">출발날짜</th>
                                          <th class="text-center">도착날짜</th>
                                       </tr>
                                    </thead>
                                 </table>
                                 <c:choose>
                                    <c:when test="${empty list}">
                                       <tr>
                                          <th colspan="5" class="text-center">미확인 가이드 내역이 존재하지 않습니다.</th>
                                       </tr>
                                    </c:when>
                                    <c:otherwise>
                                       <c:forEach var="guideHistory" items="${flist}">
                                          <tr>
                                             <td class="text-center">${guideHistory.guideHistoryId}</td>
                                             <td class="text-center">${guideHistory.travelEndStatus}</td>
                                             <td class="text-center">${guideHistory.travelerName}</td>
                                             <td class="text-center">${guideHistory.travelArea}</td>
                                             <td class="text-center">${guideHistory.theme}</td>
                                             <td class="text-center"><fmt:formatDate
                                                   value="${guideHistory.startDate}"
                                                   pattern="yyyy-MM-dd" /></td>
                                             <td class="text-center"><fmt:formatDate
                                                   value="${guideHistory.endDate}" pattern="yyyy-MM-dd" /></td>
                                          </tr>
                                       </c:forEach>
                                    </c:otherwise>
                                 </c:choose>
                                 <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                       <tr>
                                          <th class="text-center">번호</th>
                                          <th class="text-center">확인상태</th>
                                          <th class="text-center">여행자 이름</th>
                                          <th class="text-center">여행지역</th>
                                          <th class="text-center">테마</th>
                                          <th class="text-center">출발날짜</th>
                                          <th class="text-center">도착날짜</th>
                                       </tr>
                                    </thead>
                                 </table>
                                 <c:choose>
                                    <c:when test="${empty list}">
                                       <tr>
                                          <th colspan="5" class="text-center">확인 가이드 내역이 존재하지 않습니다.</th>
                                       </tr>
                                    </c:when>
                                    <c:otherwise>
                                       <c:forEach var="guideHistory" items="${tlist}">
                                          <tr>
                                             <td class="text-center">${guideHistory.guideHistoryId}</td>
                                             <td class="text-center">${guideHistory.travelEndStatus}</td>
                                             <td class="text-center">${guideHistory.travelerName}</td>
                                             <td class="text-center">${guideHistory.travelArea}</td>
                                             <td class="text-center">${guideHistory.theme}</td>
                                             <td class="text-center"><fmt:formatDate
                                                   value="${guideHistory.startDate}"
                                                   pattern="yyyy-MM-dd" /></td>
                                             <td class="text-center"><fmt:formatDate
                                                   value="${guideHistory.endDate}" pattern="yyyy-MM-dd" /></td>
                                          </tr>
                                       </c:forEach>
                                    </c:otherwise>
                                 </c:choose>
                              </div>
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
                        <li>&copy; Untitled. All rights reserved</li>
                        <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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