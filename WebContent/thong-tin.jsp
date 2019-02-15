<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Royal Hotel - Thông tin khách sạn</title>
<%@ include file="head-tag-included.jsp"%>
<link rel="stylesheet" type="text/css" href="thanh-toan.css">

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- main content -->
	<div class='container'>
		<div class="row">
			<div class="col-md-4">
			<h5 style="font-weight: bold;">BOOK NOW!</h5>
			<br> <i class="fa fa-phone" style="font-size: 24px"></i>
			&emsp;&emsp;+0978-774-332<br> <i class="fa fa-envelope"
				style="font-size: 24px"></i> &emsp;&emsp;royalhotel@gmail.com<br>
			<br> <i class="fa fa-facebook-official" style="font-size: 24px"></i>&emsp;
			<i class="fa fa-twitter" style="font-size: 24px"></i>&emsp; <i
				class="fa fa-instagram" style="font-size: 24px"></i>&emsp; <i
				class="fa fa-linkedin-square" style="font-size: 24px"></i>&emsp; <i
				class="fa fa-google-plus-official" style="font-size: 24px"></i>
			
			</div>
			<div class="col-md-6">
				<div class="mapouter">
					<div class="gmap_canvas">
						<iframe width="600" height="500" id="gmap_canvas"
							src="https://maps.google.com/maps?q=n%C3%B4ng%20l%C3%A2m&t=&z=13&ie=UTF8&iwloc=&output=embed"
							frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
						<a href="https://www.crocothemes.net">beauty rating website</a>
					</div>
					<style>
.mapouter {
	text-align: right;
	height: 500px;
	width: 600px;
}

.gmap_canvas {
	overflow: hidden;
	background: none !important;
	height: 500px;
	width: 600px;
}
</style>
				</div>
			</div>
		</div>

	</div>
	<!-- footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>