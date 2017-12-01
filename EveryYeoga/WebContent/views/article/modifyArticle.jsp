<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="${ctx }/assets/css/main.css" />

<%@ include file="/views/layout/common.jsp"%>
</head>
<body>
	<!-- Header -->
	<%@ include file="/views/layout/header.jsp"%>
	<%@ include file="/views/layout/sidebar.jsp"%>

	<div class="8u 12u$(medium) important(medium)">
		<div id="content">
			<div class="col-sm-9 col-lg-9">
				<div>
					<h3>게시물 수정</h3>
				</div>

				<div class="table-responsive">
					<div class="well">
						<div>
							<h3>${boardDetail.name }</h3>
						</div>
						<form action="${ctx}/article/modify.do " method="post">
							<div class="panel panel-default">
								<div class="panel-heading">
								<input type="hidden" name="articleId" value="${article.articleId}">
									제목 <input type="text" name="title" value="${article.title }">
								</div>
								<div class="panel-body">
									<div class="post">
										<strong>작성자 ${user.name }</strong> &nbsp;<span
											class="text-muted"><fmt:formatDate
												value="${article.regDate }" pattern="yyyy-MM-dd" /></span> &nbsp;

										<p style="padding: 20px">
											<textarea class="input_write_article" name="content">${article.content }</textarea>
										</p>

									</div>

									<br>
								</div>
							</div>
							<button type="submit" class="btn btn-primary">확인</button>
							<button type="reset" class="btn btn-default">취소</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>