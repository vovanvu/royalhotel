<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Danh sách đơn đặt phòng</title>
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
					<li class="active"><a href="SuaThongTinServlet">Thông
							tin tài khoản</a></li>
					<li><a href="doi-mat-khau.jsp">Đổi mật khẩu</a></li>
				</ul>
			</div>
		</nav>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">

				<div class="panel panel-default">
					<div class="panel-body">
						<strong class="success">${success}</strong>

						<form action="CapNhatTaiKhoan" method="post">
							<div class="form-group">
								<label for="email">Họ tên <span class="star">*</span></label> <input
									value="${kh.name}" type="text" name="hoten"
									class="form-control" id="email" autofocus>
							</div>
							<div class="form-group">
								<label for="pwd">Số điện thoại <span class="star">*</span></label>
								<input value="${kh.phoneNumber}" type="tel" name="sdt"
									class="form-control" id="pwd">
							</div>
							<div class="form-group">
								<label for="email">Email <span class="star">*</span></label> <input
									value="${kh.email}" type="email" name="mail"
									class="form-control" id="email" readonly="readonly">
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