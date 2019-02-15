<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head-tag-included.jsp"%>
<link rel="stylesheet" type="text/css" href="danh-sach-don.css">

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">


		<nav class="navbar navbar-default">
			<div class="container-fluid">

				<ul class="nav navbar-nav">
					<li><a href="DanhSachDonServlet">Quản lý đơn hàng</a></li>
					<li><a href="SuaThongTinServlet">Thông tin tài khoản</a></li>
					<li class="active"><a href="doi-mat-khau.jsp">Đổi mật khẩu</a></li>
				</ul>
			</div>
		</nav>

		<div class="row">
			<div class="col-md-8 col-md-offset-2">

				<div class="panel panel-default">
					<div class="panel-body">
						<strong class="success">${success}</strong>

						<form action="DoiMatKhau" method="post">
							<div class="form-group">
								<label for="email">Mật khẩu hiện tại <span class="star">*</span></label>
								<input type="password" class="form-control" id="email"
									name="curPass" autofocus>
								<p style="color: red">${matkhaucu_err}</p>
							</div>
							<div class="form-group">
								<label for="pwd">Nhập mật khẩu mới <span class="star">*</span></label>
								<input type="password" class="form-control" id="pwd"
									name="password">
							</div>
							<div class="form-group">
								<label for="email">Nhập lại mật khẩu mới <span
									class="star">*</span></label> <input type="password"
									class="form-control" id="email" name="password2">
								<p style="color: red">${matkhau_err}</p>
							</div>

							<div class="row">
								<div class="col-md-12 text-center">
									<button type="submit" class="btn btn-warning btn-cap-nhat">Cập
										nhật</button>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>