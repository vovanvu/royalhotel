<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="WEB-INF/ThoudsandSeperator.tld"%>
<%@ taglib prefix="tag-date" uri="WEB-INF/ddMMyyyyConverter.tld"%>
<%@ taglib prefix="tinh-trang" uri="WEB-INF/TextTinhTrang.tld"%>
<%@ taglib prefix="so-dem" uri="WEB-INF/DemSoDem.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Thông tin đơn đặt phòng</title>
<%@ include file="head-tag-included.jsp"%>
<link rel="stylesheet" type="text/css" href="css/thong-tin-don.css">

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
		<div class='col-md-6'>
			<div class='row'>
				<div class='col-md-12'>
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class='heading-text'>THÔNG TIN ĐƠN ĐẶT PHÒNG</div>
						</div>
						<div class="panel-body">
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Mã đơn hàng</p>
									<p class='pull-right'>${requestScope.don.maDon}</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Ngày đặt</p>
									<p class='pull-right'><tag-date:ddMMyyyyConverterTimeStamp
														timeStamp="${requestScope.don.thoiDiemDat}" /></p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Ngày nhận phòng</p>
									<p class='pull-right'>
										<tag-date:ddMMyyyyConverter date="${requestScope.don.ngayNhanPhong}" />
										, 14:00-18:00
									</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Ngày trả phòng</p>
									<p class='pull-right'>
										<tag-date:ddMMyyyyConverter date="${requestScope.don.ngayTraPhong}" />
										, 12:00-14:00
									</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Số đêm, phòng</p>
									<p class='pull-right'><so-dem:DemSoDem ngayNhanPhong="${requestScope.don.ngayNhanPhong}" ngayTraPhong="${order.ngayTraPhong}"/> đêm, ${requestScope.don.soPhong}
										phòng</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Trạng thái</p>
									<p class='pull-right green'>
										<tinh-trang:TextTinhTrang tinhTrang="${requestScope.don.tinhTrang}" />
									</p>
								</div>
							</div>
						</div>
						<div class="panel-footer tong-cong-footer">
							<div class='row'>
								<div class='col-md-12'>
									<h4 class='pull-left tong-tien'>Tổng cộng:</h4>
									<h4 class='pull-right text-success tong-tien green'>
										<tag:ThoudsandSeperator gia="${requestScope.don.tongCong}" />
										<span>₫</span>
									</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class='row'>
				<div class='col-md-12'>
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class='heading-text'>Thay đổi ngày</div>
						</div>
						<div class="panel-body">
							<div class='row'>
								<div class='col-md-12'>
									<p>Để đổi ngày đặt phòng, vui lòng liên hệ với số hotline
										miễn phí dưới đây:</p>
									<button type="button" class="btn btn-success">
										<span class="glyphicon glyphicon-earphone"></span> 1800 8888
									</button>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class='col-md-6'>
			<div class='row'>
				<div class='col-md-12'>
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class='heading-text'>Chi tiết phòng</div>
						</div>
						<div class="panel-body">
							<div class='row'>
								<div class='col-md-12'>
									<p style="font-weight: bold">${requestScope.don.soPhong} x Phòng 2 giường đơn</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Số khách</p>
									<p class='pull-right'>Tối đa ${requestScope.don.soPhong*2} (Tối đa 2 người/phòng)</p>
								</div>
							</div>
						</div>
						<div class="panel-footer tong-cong-footer">
							<div class='row'>
								<div class='col-md-12'>
									<p>Huỷ phòng: Không hoàn hủy</p>
									<p>Bữa ăn: Không bao gồm</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>