<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Đơn đặt phòng đang được xử lý</title>
<%@ include file="head-tag-included.jsp"%>
<link rel="stylesheet" type="text/css" href="css/thanh-cong.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- main content -->
	<div class='container text-center'>
  <div class="row">
    <div class="col-md-12">
      <p class='text-xac-nhan'>Giao dịch đang được xác nhận</p>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <img src="https://statics.vntrip.vn/success-transfer.png" class="img-fluid">
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <p class="text-cam-on">Cảm ơn bạn đã đặt phòng tại khách sạn Royal Hotel.</p>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <p>Chúng tôi đã nhận được yêu cầu xác nhận cho đơn hàng của bạn. Bộ phận chăm sóc khách hàng sẽ liên hệ với quý khách để hoàn tất việc thanh toán đơn hàng.</p>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-md-offset-4 well">
      <p>Mã đặt phòng</p>
      <h2>${ma}</h2>
    </div>
  </div>
   <div class="row">
    <div class="col-md-12">
      <a href="ThongTinDonServlet?id=${ma}" class="btn btn-success btn-chi-tiet" role="button">Xem chi tiết đơn đặt phòng</a>
    </div>
  </div>
</div>
	<!-- footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>