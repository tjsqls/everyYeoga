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

	<!-- Main Navigation ================================================================================= -->
	<%@include file="/views/layout/menu.jsp"%>
	<!-- Header ========================================================================================== -->
	<header>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="jumbotron">
						<h2>여행목록</h2>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12 col-lg-12">
					<form>
						<input />
						<button type="input" class="btn btn btn-warning">입력</button>
						<span style="float: right"><input placeholder="여행날짜"/></span>
					</form>
					<span style="float: right">
						<button class="btn btn btn-warning">여행 등록하기</button>
					</span>
				</div>
			</div>
		</div>
	</header>

	<!-- Container ======================================================================================= -->
	<div class="container">
		<div class="row">

			<div style="z-index: 1020"
				class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
				<div class="list-group panel panel-success">
					<div class="panel-heading list-group-item text-center hidden-xs">
						<h4>여행 목록</h4>
					</div>
					<div>
						<c:forEach var="board" items="${boards }">
							<a href="${ctx}/board/find.do?boardId=${board.boardId}"
								class="list-group-item hidden-xs">${board.name } </a>
						</c:forEach>
					</div>

				</div>
			</div>

			<div class="col-sm-9 col-lg-9">
				<div>
					<h3>${boardDetail.name }</h3>
				</div>

				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<colgroup>
							<col width="100" />
							<col width="*" />
							<col width="120" />
							<col width="70" />
							<col width="50" />
						</colgroup>
						<thead>
							<tr>
								<th class="text-center">번호</th>
								<th class="text-center">제목</th>
								<th class="text-center">작성일</th>
								<th class="text-center">작성자</th>
								<th class="text-center">조회</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td class="text-center">${article.articleId }</td>
								<td><a
									href="${ctx}/article/find.do?articleId=${article.articleId}">${article.title}
								</a></td>
								<td class="text-center"><fmt:formatDate
										value="${article.regDate }" pattern="yyyy-MM-dd" /></td>
								<td class="text-center">${article.authorName }</td>
								<td class="text-center">110</td>
							</tr>

							<!-- 						
	<c:choose>
								<c:when test="${empty boardDetail.articles }">
									<tr>
										<th colspan="5" class="text-center">게시물이 존재하지 않습니다.</th>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="article" items="${boardDetail.articles }">
										<tr>
											<td class="text-center">${article.articleId }</td>
											<td><a
												href="${ctx}/article/find.do?articleId=${article.articleId}">${article.title}
											</a></td>
											<td class="text-center"><fmt:formatDate
													value="${article.regDate }" pattern="yyyy-MM-dd" /></td>
											<td class="text-center">${article.authorName }</td>
											<td class="text-center">110</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
		 -->
						</tbody>
					</table>
				</div>

				<div class="text-right">
					<a href="${ctx }/article/regist.do?boardId=${boardDetail.boardId}">
						<button type="button" class="btn btn btn-warning">등록</button>
					</a>
				</div>
			</div>
		</div>
		<%@include file="/views/layout/footer.jsp"%>
		<!-- Footer ========================================================================================== -->
	</div>

</body>
</html>