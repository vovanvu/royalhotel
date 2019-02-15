<%@page import="model.LoaiPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.LoaiPhongDAO"%>
<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="hinh" uri="WEB-INF/GetHinhAnh.tld"%>

<!DOCTYPE html>
<html>
<head>
<title>Royal Hotel</title>
<%@ include file="head-tag-included.jsp"%>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="col-sm-12">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img
							src="http://vinathienbinh.vn/uploads/sao/files/1449542979-thiet-ke-noi-that-phong-ngu-khach-san-sang-trong-va-hien-dai.jpeg"
							style="width: 100%; height: 500px">
					</div>
					<div class="item ">
						<img
							src="http://homelk.com/wp-content/uploads/2015/09/hotel-indoor-pool-the-indoor-pool-at-the-patricia-grand-resort.jpg"
							style="width: 100%; height: 500px">
					</div>
					<div class="item ">
						<img
							src="http://1.bp.blogspot.com/-eOGZStuPWrA/VkFbBJdywJI/AAAAAAAADC8/o_xMn9N6r7Q/s1600/Gyproc9_tran-nha-thach-cao.jpg"
							style="width: 100%; height: 500px">
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>

		<div class="col-sm-12">
			<br>
			<div class="rooms">
				<h3>ROYAL HOTEL ROOMS</h3>

				<a href="DanhSachPhongServlet">View all rooms <i
					class="fa fa-long-arrow-right"></i></a>
			</div>
			<br>

		</div>

	</div>




	<div class="col-sm-12">
		<div class="row">
			<br>
			<div class="col-sm-4">
				<h4>GALERY</h4>
				<br>
				<div class="col-sm-4">
					<img class=sim
						src="http://images.sakihotel.com/album/2015/1029/03-phong-01-1img6785resize.JPG">
					<img class=sim
						src="https://i2.wp.com/photographer.vn/wp-content/uploads/2015/10/chup-anh-khach-san-nha-hang-dep-gia-re-tai-ha-noi2-1.jpg">
					<img class=sim
						src="http://www.rainbowhotel.com.vn/UserFiles/image/SuuTapAnh/2_MAX.jpg">
				</div>
				<div class="col-sm-4">
					<img class=sim
						src="https://mytourcdn.com/upload_images/Image/Articles%20Location/Nh%E1%BB%AFng%20kh%C3%A1ch%20s%E1%BA%A1n%20c%C3%B3%20b%C3%A3i%20bi%E1%BB%83n%20%C4%91%E1%BA%B9p%20nh%E1%BA%A5t%20Vi%E1%BB%87t%20Nam/20090312153306.JPG">
					<img class=sim
						src="http://www.xahoithongtin.com.vn/dataimages/201703/original/images1898472_Nha_trang.jpg">
					<img class=sim
						src="https://du-lich.chudu24.com/f/m/1606/23/khach-san-golden-sea-3-da-nang.jpg?w=800&h=500">
				</div>
				<div class="col-sm-4">
					<img class=sim
						src="http://beboithangloi.com/wp-content/uploads/2017/08/X%C3%A2y-d%E1%BB%B1ng-b%E1%BB%83-b%C6%A1i-kinh-doanh.jpg">
					<img class=sim
						src="http://www.thietkenhadepmost.com/wp-content/uploads/2013/08/beboi_1.jpg">
					<img class=sim
						src="https://cdn.trangcongnghe.com/uploads/posts/2016-09/3-buoc-lap-ke-hoach-kinh-doanh-khach-san-hoan-hao-cho-nguoi-moi-bat-dau_1.jpeg">
				</div>
			</div>
			<div class="col-sm-4">
				<h4>VIDEO TOUR</h4>
				<br>
				<iframe width="100%" height="185"
					src="https://www.youtube.com/embed/vDi4TD517vo"></iframe>
				<br> <br> Chúng tôi tự hào là top 10 khách sạn tốt nhất
				Đông Nam Á.<br> <b>Royal Hotel</b> sẽ mang đến cho bạn sự hài
				lòng tuyệt đối<br> Hãy đến với chúng tôi để có những giây phút
				thật tuyệt vời<br> Giá cả bất ngờ, phong cảnh tuyệt đẹp, chỉ có
				tại <b>Royal Hotel</b>! <br>
			</div>
			<div class="col-sm-4">
				<h4>NEWS FROM US</h4>
				<br>
				<h4
					style="font-weight: bold; margin-bottom: -10px; margin-top: -5px;">Ưu
					đãi cho khách hàng là thành viên</h4>
				<br> Khách hàng là thành viên sẽ được giảm giá đến 10% tổng giá
				trị hoá đơn đặt phòng. <br>
				<hr>
				<br>
				<h4
					style="font-weight: bold; margin-bottom: -10px; margin-top: -12px;">Giảm
					giá mạnh trong các dịp lễ</h4>
				<br> Khách hàng đặt phòng trong các dịp lễ sẽ được giảm giá đến
				5% tổng giá trị hoá đơn đặt phòng. <br>
				<hr>
				<br>
				<h4
					style="font-weight: bold; margin-bottom: -10px; margin-top: -12px;">Ưu
					đãi nếu đặt trên 5 phòng cùng lúc</h4>
				<br> Nếu hoá đơn đặt phòng trên 5 phòng, khách hàng sẽ được
				nhận voucher 1 triệu đồng áp dụng cho tất cả các dịch vụ của khách
				sạn chúng tôi. <br>
			</div>
		</div>
		<br>
	</div>
	<!-- footer -->
	<%@ include file="footer.jsp"%>
	<script type="text/javascript">
		$(function() {
			$("#date1").datepicker({
				autoclose : true,
				todayHighlight : true
			}).datepicker('update', new Date());
		});
	</script>
	<script type="text/javascript">
		$(function() {
			$("#date2").datepicker({
				autoclose : true,
				todayHighlight : true
			}).datepicker('update', new Date());
		});
	</script>

	<script>
		showSlides();
	</script>
</body>
</html>