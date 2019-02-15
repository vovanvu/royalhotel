<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Royal Hotel - Quên mật khẩu</title>
<link rel="stylesheet" href="css/fg.css">
<%@ include file="head-tag-included.jsp"%>
</head>
<body>

	<div class="container-fluid">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="container" style="margin-top: 50px; margin-bottom: 100px;">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					<div class="body">
						<div class="row pad">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<ul class="nav nav-tabs">
									<li class="active"><a class="a2" data-toggle="tab"
										href="quenmatkhau.jsp">Đặt Lại Mật Khẩu</a></li>
								</ul>
							</div>

							<div class="col-sm-1">
								<div>
									<a href="index.jsp"><span class="icon">&times;</span></a>
								</div>
							</div>
						</div>

						<div class="row pad">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<div>
									<input type="email" placeholder="Địa chỉ email">
								</div>

							</div>
							<div class="col-sm-1"></div>

						</div>
						<div class="row pad">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<div>Nhập địa chỉ Email đã đăng ký tài khoản khách sạn, hệ
									thống sẽ gửi thông tin hướng dẫn bạn khôi phục lại mật khẩu.</div>
							</div>
							<div class="col-sm-1"></div>

						</div>

						<div class="row ">
							<div class="col-sm-1"></div>
							<div class="col-sm-10 divsm">
								<div>
									<input type="submit" value="GỬI">
								</div>
							</div>
							<div class="col-sm-1"></div>

						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>



</body>
</html>