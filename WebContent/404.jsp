<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Royal Hotel - Trang không tồn tại!</title>
<%@ include file="head-tag-included.jsp"%>
<style type="text/css">
.content {
	margin-top: 50px;
}

#text-404 {
	font-size: 80px;
}

#btn-back {
	margin-top: 10px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- main content -->
	<div class="container">
		<div class="content">
			<p id="text-404" class="text-center">404</p>
			<p class="text-center">Xin lỗi quý khách!</p>
			<p class="text-center">Trang không tồn tại</p>
			<div id="btn-back" class="text-center">
				<a  href="index.jsp" class="btn btn-warning">Về
					trang chủ</a>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>