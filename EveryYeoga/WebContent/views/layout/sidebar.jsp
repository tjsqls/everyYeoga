<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="4u 12u$(medium)">
	<div id="sidebar">
		<!-- ㅁㄴㅇ -->
		<!-- Sidebar -->
		<section>

			<ul class="style2">
				<li><a
					href="${pageContext.request.contextPath}/user/detail.do"><h3>회원정보</h3></a></li>
				<a
					href="${pageContext.request.contextPath}/travel/travelPlanList.do"><h3>여행
						검색</h3></a>
				</li>

				<li><a
					href="${pageContext.request.contextPath}/group/groupList.do"><h3>참여중인
							모임</h3></a></li>
				<li><a
					href="${pageContext.request.contextPath}/travel/myTravelPlan.do"><h3>내가
							올린 여행계획</h3></a></li>
				<li><a
					href="${pageContext.request.contextPath}/history/searchTravelerHistory.do"><h3>여행
							내역</h3></a></li>
				<li><a
					href="${pageContext.request.contextPath}/history/searchGuideHistory.do"><h3>가이드
							내역</h3></a></li>
			</ul>

		</section>

	</div>
</div>