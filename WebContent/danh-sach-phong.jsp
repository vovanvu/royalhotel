<%@page import="model.KhachHang"%>
<%@page import="dao.GiaDAO"%>
<%@page import="dao.LoaiPhongDAO"%>
<%@page import="model.LoaiPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.SQLException"%>
<%@ taglib prefix="tag" uri="WEB-INF/ThoudsandSeperator.tld"%>
<%@ taglib prefix="lay-gia" uri="WEB-INF/LayGia.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="so-giuong" uri="WEB-INF/HienThiSoGiuong.tld"%>
<%@ taglib prefix="hinh" uri="WEB-INF/GetHinhAnh.tld"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Royal Hotel - Danh sách phòng</title>
<%@ include file="head-tag-included.jsp"%>
<link rel="stylesheet" type="text/css" href="css/danh-sach-phong.css">
<!-- ajax cập nhật giá -->
<script type="text/javascript" src="chi-tiet-phong.js"></script>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- main -->
	<div class="container" id="danh-sach-phong">
		<div class="row">
			<c:set var="list" value="${requestScope.list}"></c:set>
			<c:forEach var="roomType" items="${list}">
				<div class="col col-md-4 col-sm-6 col-md-room box">
					<div class="room-box">
						<div class="row">
							<div class="item">
								<img class="img-responsive room-img"
									src="<hinh:GetHinhAnh soThuTu="1" maLoaiPhong="${roomType.maLoaiPhong}"></hinh:GetHinhAnh>">
								<div class="item-overlay top"></div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h4 class="room-title">${roomType.tenLoaiPhong}</h4>
							</div>
						</div>
						<div class="row info-box">
							<div class="col-md-7 col-xs-7">
								<div class="row">
									<div class="col-xs-1">
										<i class="fa fa-bed"></i>
									</div>
									<div class="col-xs-9">
										<p>
											<so-giuong:HienThiSoGiuong
												soGiuongDon="${roomType.soGiuongDon}"
												soGiuongDoi="${roomType.soGiuongDoi}"></so-giuong:HienThiSoGiuong>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-1">
										<i class="fa fa-user"></i>
									</div>
									<div class="col-xs-9">
										<p>Sức chứa 2 người</p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-1">
										<i class="fa fa-times"></i>
									</div>
									<div class="col-xs-9">
										<p>Huỷ không hoàn tiền</p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-1">
										<span class="glyphicon glyphicon-apple"></span>
									</div>
									<div class="col-xs-9">
										<p>Miễn phí bữa sáng</p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-1">
										<i class="fa fa-wifi"></i>
									</div>
									<div class="col-xs-9">
										<p>Wifi miễn phí</p>
									</div>
								</div>
							</div>
							<div class="col-md-5 text-center col-xs-5">
								<div class="row">
									<a href="ChiTietPhongServlet?id=${roomType.maLoaiPhong}">
										<button type="button" class="btn btn-warning btn-custom-book">Đặt
											ngay</button>
									</a>
								</div>
								<div class="row">
									<div class="col-md-12">
										<span><strong>Giá từ</strong></span>
										<h3 class="money">
											<lay-gia:LayGia maLoaiPhong="${roomType.maLoaiPhong}"></lay-gia:LayGia>
											<span>₫</span>
										</h3>
									</div>
								</div>


							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- end body-->

	<!-- footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>