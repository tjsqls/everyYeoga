<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 
 * COPYRIGHT (c) Nextree Consulting 2015
 * This software is the proprietary of Nextree Consulting.  
 * 
 * @author <a href="mailto:eschoi@nextree.co.kr">Choi, Eunsun</a>
 * @since 2015. 1. 9.
-->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<%@include file="/views/layout/common.jsp"%>
<title>소셜보드</title>

</head>
<body>
<script type="text/javascript">
var message = '${message}';
var returnUrl = '${returnUrl}';
alert(message);
document.location.href = returnUrl;
</script>
</script>
</body>
</html>