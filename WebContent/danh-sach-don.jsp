<%@page import="model.KhachHang"%>
<%@page import="dao.KhachHangDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DonDatPhong"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" uri="WEB-INF/ThoudsandSeperator.tld"%>
<%@ taglib prefix="tag-date" uri="WEB-INF/ddMMyyyyConverter.tld"%>
<%@ taglib prefix="tinh-trang" uri="WEB-INF/TextTinhTrang.tld"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Danh sách đơn đặt phòng</title>
<%@ include file="head-tag-included.jsp"%>
<link rel="stylesheet" type="text/css" href="css/danh-sach-don.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		var pageSize = 5; // Hiển thị 5 sản phẩm trên 1 trang
		showPage = function(page) {
			$(".contentPage").hide();
			$(".contentPage").each(function(n) {
				if (n >= pageSize * (page - 1) && n < pageSize * page)
					$(this).show();
			});
		}
		showPage(1);
		///** Cần truyền giá trị vào đây **///
		var totalRows = ${listSize}; // Tổng số sản phẩm hiển thị
		var btnPage = 5; // Số nút bấm hiển thị di chuyển trang
		var iTotalPages = Math.ceil(totalRows / pageSize);

		var obj = $('#pagination').twbsPagination({
			totalPages : iTotalPages,
			visiblePages : btnPage,
			onPageClick : function(event, page) {
				console.info(page);
				showPage(page);
			}
		});
		console.info(obj.data());
	});
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- main content -->
	<div class='container'>
		<!-- nav -->
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li class="active"><a href="DanhSachDonServlet">Quản lý đơn
						hàng</a></li>
				<li><a href="SuaThongTinServlet">Thông tin tài khoản</a></li>
				<li><a href="doi-mat-khau.jsp">Đổi mật khẩu</a></li>
			</ul>
		</div>
		</nav>
		<!-- danh sach-->
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<c:set var="list" value="${requestScope.orderList}"></c:set>
				<c:forEach var="order" items="${list}">
					<div class="contentPage panel panel-default">
						<div class="panel-body">
							<div class="row don">
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-4">Mã đơn hàng:</div>
										<div class="col-md-6 orange ma-bold">${order.maDon}</div>
									</div>
									<div class="row">
										<div class="col-md-4">Nhận phòng:</div>
										<div class="col-md-6">
											<tag-date:ddMMyyyyConverter date="${order.ngayNhanPhong}" />
										</div>
									</div>
									<div class="row">
										<div class="col-md-4">Trả phòng:</div>
										<div class="col-md-6">
											<tag-date:ddMMyyyyConverter date="${order.ngayTraPhong}" />
										</div>
									</div>
									<div class="row">
										<div class="col-md-4">Tổng cộng:</div>
										<div class="col-md-6 green">
											<tag:ThoudsandSeperator gia="${order.tongCong}" />
											<span>₫</span>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4">Tình trạng:</div>
										<div class="col-md-6 orange">
											<tinh-trang:TextTinhTrang tinhTrang="${order.tinhTrang}" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="pull-right">
										<div class="row">
											<div class="col-md-12 ">
												<p>
													Ngày đặt:
													<tag-date:ddMMyyyyConverterTimeStamp
														timeStamp="${order.thoiDiemDat}" />
												</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12 ">
												<a href="ThongTinDonServlet?id=${order.maDon}"
													class="btn btn-warning btn-quan-ly" role="button">Quản
													lý</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<ul id="pagination"></ul>
			</div>
		</div>


	</div>
	<!-- footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>