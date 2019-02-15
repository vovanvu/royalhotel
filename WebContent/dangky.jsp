<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Royal Hotel - Đăng kí</title>
<link rel="stylesheet prefetch" href="styles/css/datepicker.css">
<script src="styles/js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="css/rg.css">
<script src="https://www.google.com/recaptcha/api.js"></script>
<%@ include file="head-tag-included.jsp"%>

</head>
<body>

	<div class="container-fluid">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-5">
					<div class="body">
						<div class="row pad">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<ul class="nav nav-tabs">
									<li class="active"><a class="a2" data-toggle="tab"
										href="#home">Đăng Ký</a></li>
								</ul>


							</div>

							<div class="col-sm-1">
								<a href="index.jsp"><span class="icon">&times;</span></a>
							</div>
						</div>
						<div class="row pad">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<div class="diva1">ĐĂNG KÝ MỚI TÀI KHOẢN KHÁCH SẠN</div>

							</div>
							<div class="col-sm-1"></div>

						</div>
						<form action="ServletDangKy" method="post">
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">

									<div>
										<input name="email" type="email" placeholder="Địa chỉ email">
										<p style="color: red">${email_err}</p>
									</div>

								</div>
								<div class="col-sm-1"></div>

							</div>
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div>
										<input name="matkhau" type="password" placeholder="Mật Khẩu">
										<p style="color: red">${matkhau_err}</p>
									</div>
								</div>
								<div class="col-sm-1"></div>

							</div>
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div>
										<input name="matkhau2" type="password"
											placeholder="Nhập lai mật Khẩu">
										<p style="color: red">${matkhau2_err}</p>
									</div>
								</div>
								<div class="col-sm-1"></div>

							</div>
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div>
										<input name="fullname" type="text" placeholder="Họ và tên">
										<p style="color: red">${fullname_err}</p>
									</div>
								</div>
								<div class="col-sm-1"></div>
							</div>
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div>
										<input name="phone" type="tel" placeholder="Số điện thoại">
										<p style="color: red">${phone_err}</p>
									</div>
								</div>
								<div class="col-sm-1"></div>
							</div>

							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div class="g-recaptcha"
										data-sitekey="6LfVpH8UAAAAAJltBqc-IchpmV4cvu3aznjHHmce"></div>
									<p style="color: red">${recaptcha_err}</p>
								</div>
								<div class="col-sm-1"></div>
							</div>

							<div class="row pad1">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div>
										<input type="submit" value="ĐĂNG KÝ">
									</div>

								</div>
								<div class="col-sm-1"></div>

							</div>
						</form>
						<div class="row pad">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<div>
									<div class="diva">
										Đã có tài khoản? <a class="a2" href="dangnhap.jsp">Đăng
											Nhập</a><br>
									</div>
									<div class="divbt">
										Qua việc đăng ký tài khoản khách sạn, bạn đồng ý hoàn toàn với
										các <a href="#">Điều khoản</a>, <a href="#">Điều kiện</a> cũng
										như các<a href="#"> Chính sách bảo mật</a> của khách sạn.
									</div>
								</div>

							</div>
							<div class="col-sm-1"></div>
						</div>
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
		</div>


		<!-- end body -->
		<br>
		<br>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>