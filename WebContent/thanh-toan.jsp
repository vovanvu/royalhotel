<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="WEB-INF/TenLoaiPhong.tld"%>
<%@ taglib prefix="tag-gia" uri="WEB-INF/HienThiGia.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Thông tin thanh toán</title>
<%@ include file="head-tag-included.jsp"%>
<link rel="stylesheet" type="text/css" href="thanh-toan.css">

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- main content -->
	<div class='container'>
		<div class='col-md-8'>
			<div class='row'>
				<div class='col-md-12'>
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class='heading-text'>THÔNG TIN THANH TOÁN</div>
						</div>
						<div class="panel-body">
							<form action="ThanhToanServlet" action="post">
								<div class="form-group">
									<strong> Vui lòng chuyển khoản tới </strong>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-12">
											<img class="img-fluid pull-left"
												src="https://statics.vntrip.vn/images/banks/i-bidv.png"></img>
											<div class="pull-left bank-info">
												<div class="row">
													<div class="col-md-12">
														<p class="bank-name">BIDV - Ngân hàng TMCP Đầu tư và
															Phát triển Việt Nam</p>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<p>Chi nhánh: Đông Sài Gòn</p>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<p>Chủ tài khoản: Công ty TNHH ROYAL HOTEL</p>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<p>Số tài khoản: 22210001237619</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-12">
											<img class="img-fluid pull-left"
												src="https://statics.vntrip.vn/images/banks/i-vietcombank.png"></img>
											<div class="pull-left bank-info">
												<div class="row">
													<div class="col-md-12">
														<p class="bank-name">Vietcombank - Ngân hàng TMCP
															Ngoại Thương Việt Nam</p>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<p>Chi nhánh: Đông Sài Gòn</p>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<p>Chủ tài khoản: Công ty TNHH ROYAL HOTEL</p>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<p>Số tài khoản: 22210001237619</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row  text-center">
									<div class="col-md-6">
										<div class="well">
											<div class="row">
												<div class="col-md-12">Số tiền bạn cần phải chuyển
													khoản:</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<h4 class='orange tong-tien tong-so-tien'></h4>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="well">
											<div class="row">
												<div class="col-md-12">Nội dung chuyển khoản:</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													Thanh toán cho đơn hàng:

													<p class="orange">${don.maDon}</p>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div class="row">
									<div class="col-md-12 text-center">Sau khi xác nhận số
										tiền đã được thanh toán, Royal Hotel sẽ gửi biên nhận và vé điện
										tử tới email của quý khách.</div>
								</div>
								<div class="text-center">
									<div class="row">
										<div class='col-md-12'>
											<button type="submit" class="btn btn-warning btn-thanh-toan">Tôi
												đã chuyển khoản xong</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class='col-md-4'>
			<div class='row'>
				<div class='col-md-12'>

					<div class="panel panel-default">
						<div class="panel-heading">
							<div class='heading-text'>THÔNG TIN ĐƠN ĐẶT PHÒNG</div>
						</div>
						<div class="panel-body">
							<div class='row'>
								<div class='col-md-12'>
									<p style="font-weight: bold">${don.soPhong}
										x
										<tag:TenLoaiPhong maLoaiPhong="${don.maPhong}" />
									</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Ngày nhận phòng</p>
									<p class='pull-right'>${don.ngayNhanPhong}</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Ngày trả phòng</p>
									<p class='pull-right'>${don.ngayTraPhong}</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Số đêm</p>
									<p class='pull-right'>${requestScope.soDem}<span>
											đêm</span>
									</p>
								</div>
							</div>

						</div>
						<div class="panel-footer tong-cong-footer">
							<div class='row'>
								<div class='col-md-12'>
									<h4 class='pull-left tong-tien'>Tổng cộng:</h4>
									<h4 class='pull-right orange tong-tien tong-so-tien'></h4>

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
							<div class='heading-text'>THÔNG TIN ĐẶT PHÒNG</div>
						</div>
						<div class="panel-body">
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Người đặt phòng</p>
									<p class='pull-right'>${sessionScope.user.name}</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Số điện thoại</p>
									<p class='pull-right'>${sessionScope.user.phoneNumber}</p>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<p class='pull-left'>Email</p>
									<p class='pull-right'>${sessionScope.user.email}</p>
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
	<script type="text/javascript">
		$(document).ready(function() {
			// hiển thị phân cách phần nghìn tiền
			function numberWithDot(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
			}
			var tongTien = <tag-gia:HienThiGia giaDouble="${don.tongCong}"/>;
			var tienCoDauCham = numberWithDot(tongTien);
			$('.tong-so-tien').text(tienCoDauCham + "₫");
		});
	</script>
</body>
</html>