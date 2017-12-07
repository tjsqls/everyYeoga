<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
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

.group{
margin-bottom: 10px;
}

</style>
			<ul id="navii">
			<legend style="font-weight: bold;"> 마이페이지 </legend>

				<li class="group"><a href="${pageContext.request.contextPath}/user/detail.do">회원정보</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/group/groupList.do">참여중인 모임</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/travel/myTravelPlan.do">내가 올린 여행계획</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/history/searchTravelerHistory.do">여행 내역</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/history/searchGuideHistory.do">가이드 내역</a></li>
			</ul>







