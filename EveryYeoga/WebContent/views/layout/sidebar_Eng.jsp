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
    li.group {
        margin-bottom: 10px;

}


</style>
			<ul id="navii">
			<legend> My Page </legend>

				<li class="group" style=""><a href="${pageContext.request.contextPath}/user/detail.do">User Information</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/group/groupList.do">Joining Group</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/travel/myTravelPlan.do">My Travel Plans</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/history/searchTravelerHistory.do">History as a Traveler</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/history/searchGuideHistory.do">History as a Guide</a></li>
			</ul>







