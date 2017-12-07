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
			<legend style="font-weight: bold;"> My Page </legend>

				<li class="group" style=""><a href="${pageContext.request.contextPath}/enguser/detail.do">User Information</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/enggroup/groupList.do">Joining Group</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/engtravel/myTravelPlan.do">My Travel Plans</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/enghistory/searchTravelerHistory.do">History as a Traveler</a></li>
				<li class="group"><a href="${pageContext.request.contextPath}/enghistory/searchGuideHistory.do">History as a Guide</a></li>
			</ul>







