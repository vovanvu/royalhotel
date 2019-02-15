<%@page import="java.util.Calendar"%>
<%@page import="dao.GiaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.LoaiPhongDAO"%>
<%@page import="model.LoaiPhong"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tag" uri="WEB-INF/ThoudsandSeperator.tld"%>
<%@ taglib prefix="so-giuong" uri="WEB-INF/HienThiSoGiuong.tld"%>
<%@ taglib prefix="lay-gia" uri="WEB-INF/LayGia.tld"%>

<%@ taglib prefix="hinh" uri="WEB-INF/GetHinhAnh.tld"%>
<!DOCTYPE html>
<html>
<head>
<title>Royal Hotel - Thông tin phòng</title>
<%@ include file="head-tag-included.jsp"%>
<!-- ajax cập nhật giá -->
<script type="text/javascript" src="js/chi-tiet-phong.js"></script>
<link rel="stylesheet" type="text/css" href="css/chi-tiet-phong.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- main -->
	<div class="container">
		<!--MAIN ROW-->
		<div class="row">
			<!-- LEFT SIDE -->
			<div class="col-md-8 ">
				<div class="row">
					<h2>${requestScope.loaiPhong.tenLoaiPhong}</h2>
				</div>
				<div class="row">
					<img id="large-img"
						style="margin-bottom: 10px; width: 600px; height: 600px;"
						src="<hinh:GetHinhAnh soThuTu="1" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
						onclick="openModal();currentSlide(1)" class="hover-shadow cursor">

				</div>
				<div class="row">
					<div class="column">
						<img
							src="<hinh:GetHinhAnh soThuTu="1" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
							style="width: 100%" onclick="openModal();currentSlide(1)"
							class="hover-shadow cursor small-img">
					</div>
					<div class="column">
						<img
							src="<hinh:GetHinhAnh soThuTu="2" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
							style="width: 100%" onclick="openModal();currentSlide(2)"
							class="hover-shadow cursor small-img">
					</div>
					<div class="column">
						<img
							src="<hinh:GetHinhAnh soThuTu="3" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
							style="width: 100%" onclick="openModal();currentSlide(3)"
							class="hover-shadow cursor small-img">
					</div>
					<div class="column">
						<img
							src="<hinh:GetHinhAnh soThuTu="4" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
							style="width: 100%" onclick="openModal();currentSlide(4)"
							class="hover-shadow cursor small-img">
					</div>
				</div>

				<div id="myModal" class="modal">
					<span class="close cursor" onclick="closeModal()">Đóng
						&times;</span>
					<div class="modal-content">

						<div class="mySlides">
							<div class="numbertext">1 / 4</div>
							<img
								src="<hinh:GetHinhAnh soThuTu="1" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
								style="width: 100%">
						</div>

						<div class="mySlides">
							<div class="numbertext">2 / 4</div>
							<img
								src="<hinh:GetHinhAnh soThuTu="2" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
								style="width: 100%">
						</div>

						<div class="mySlides">
							<div class="numbertext">3 / 4</div>
							<img
								src="<hinh:GetHinhAnh soThuTu="3" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
								style="width: 100%">
						</div>

						<div class="mySlides">
							<div class="numbertext">4 / 4</div>
							<img
								src="<hinh:GetHinhAnh soThuTu="4" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
								style="width: 100%">
						</div>

						<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
							class="next" onclick="plusSlides(1)">&#10095;</a>

						<div class="caption-container">
							<p id="caption"></p>
						</div>

						<div class="column">
							<img class="demo cursor"
								src="<hinh:GetHinhAnh soThuTu="1" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
								style="width: 100%" onclick="currentSlide(1)"
								alt="Hình khách sạn">
						</div>
						<div class="column">
							<img class="demo cursor"
								src="<hinh:GetHinhAnh soThuTu="2" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
								style="width: 100%" onclick="currentSlide(2)"
								alt="Hình khách sạn">
						</div>
						<div class="column">
							<img class="demo cursor"
								src="<hinh:GetHinhAnh soThuTu="3" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
								style="width: 100%" onclick="currentSlide(3)"
								alt="Hình khách sạn">
						</div>
						<div class="column">
							<img class="demo cursor"
								src="<hinh:GetHinhAnh soThuTu="4" maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></hinh:GetHinhAnh>"
								style="width: 100%" onclick="currentSlide(4)"
								alt="Hình khách sạn">
						</div>
					</div>
				</div>

				<script>
					function openModal() {
						document.getElementById('myModal').style.display = "block";
					}

					function closeModal() {
						document.getElementById('myModal').style.display = "none";
					}
					var slideIndex = 1;
					showSlides(slideIndex);

					function plusSlides(n) {
						showSlides(slideIndex += n);
					}

					function currentSlide(n) {
						showSlides(slideIndex = n);
					}

					function showSlides(n) {
						var i;
						var slides = document
								.getElementsByClassName("mySlides");
						var dots = document.getElementsByClassName("demo");
						var captionText = document.getElementById("caption");
						if (n > slides.length) {
							slideIndex = 1
						}
						if (n < 1) {
							slideIndex = slides.length
						}
						for (i = 0; i < slides.length; i++) {
							slides[i].style.display = "none";
						}
						for (i = 0; i < dots.length; i++) {
							dots[i].className = dots[i].className.replace(
									" active", "");
						}
						slides[slideIndex - 1].style.display = "block";
						dots[slideIndex - 1].className += " active";
						captionText.innerHTML = dots[slideIndex - 1].alt;
					}
				</script>
				<!--room name-->
				<div class="row">
					<div class="col-md-6 ten-phong">
						<h4>${requestScope.loaiPhong.moTa}</h4>
					</div>
					<div class="col-md-6 gia-khoi-diem text-right">

						<p>
							<i>Giá khởi điểm từ: </i><span class="gia"> <lay-gia:LayGia
									maLoaiPhong="${requestScope.loaiPhong.maLoaiPhong}"></lay-gia:LayGia>
								<span>₫</span></span>
						</p>
					</div>

				</div>
				<!-- info -->
				<hr>
				<div class="row row-tien-nghi">
					<div class="row">

						<div class="item-tien-nghi">
							<i class="fa fa-bed fa-2x"></i>
							<so-giuong:HienThiSoGiuong
								soGiuongDon="${requestScope.loaiPhong.soGiuongDon}"
								soGiuongDoi="${requestScope.loaiPhong.soGiuongDoi}"></so-giuong:HienThiSoGiuong>
						</div>
						<div class="item-tien-nghi">
							<span style="font-size: 22px;" class="glyphicon glyphicon-user"></span>
							2 người
						</div>

						<div class="item-tien-nghi">
							<i class="fa fa-wifi fa-2x"></i> Wifi
						</div>
						<div class="item-tien-nghi">
							 <span style="font-size: 22px;" class="glyphicon glyphicon-fullscreen"></span>
 							${requestScope.loaiPhong.dienTich} m2
						</div>
					</div>
					<div class="row"></div>
				</div>
				<hr>
				<!-- không gian -->
				<div class="row">
					<div class="row">
						<div class="col-md-3">
							<p class="font-bold">Không gian</p>
						</div>
						<div class="col-md-4">
							<ul>
								<li>Số khách: <span class="font-bold">2</span></li>
								<li>Phòng tắm: <span class="font-bold">1</span></li>
								<li>Phòng ngủ: <span class="font-bold">1</span></li>

							</ul>
						</div>
						<div class="col-md-4">
							<ul>
								<li>Check In: <span class="font-bold">02:00 Chiều</span></li>
								<li>Check Out: <span class="font-bold">12:00 Chiều</span></li>
							</ul>
						</div>
					</div>
				</div>
				<hr>
				<!-- tiện nghi --->
				<div class="row">
					<div class="row">
						<div class="col-md-3">
							<p class="font-bold">Tiện nghi</p>
						</div>
						<div class="col-md-4">
							<ul>
								<li>Wifi: <span class="font-bold">Miễn phí</span></li>

								<li>Máy sấy tóc: <span class="font-bold">Có</span></li>
								<li>Điều hoà: <span class="font-bold">Có</span></li>
							</ul>
						</div>
						<div class="col-md-4">
							<ul>
								<li>Két an toàn: <span class="font-bold">Có</span></li>
								<li>Ti vi: <span class="font-bold">Có</span></li>
							</ul>
						</div>
					</div>
				</div>
				<hr>
				<!-- giá cả -->
				<div class="row">
					<div class="row">
						<div class="col-md-3">
							<p class="font-bold">Giá</p>
						</div>
						<div class="col-md-4">
							<ul>
								<li>Khách vào thêm: <span class="font-bold">1.000.000đ/đêm
										cho 1 khách thêm</span></li>
								<li>Phí dọn dẹp: <span class="font-bold">Miến phí</span></li>
							</ul>
						</div>
						<div class="col-md-4">
							<ul>
								<li>Phí phục vụ: <span class="font-bold">Miễn phí</span></li>
							</ul>
						</div>
					</div>
				</div>
				<hr>
			</div>
			<!-- 	END LEFT SIDE -->
			<!--  RIGHT SIDE -->
			<div id="box-phieu" class="col-md-4">
				<!--BOOK INFORMATION-->
				<form id="chitiet" method="post" action="DatPhongServlet">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<div class="col-md-12">
									<h3>Phiếu đặt phòng</h3>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row line-dat">
								<div class="col-md-6">
									<label>Ngày nhận phòng</label>
									<div id="ngaynhanphong-dp" class="input-group date"
										data-date-format="dd-mm-yyyy">
										<input id="ngayNhan" class="form-control" type="text"
											name="ngaynhanphong"> <span
											class="input-group-addon "><i
											class=" glyphicon glyphicon-calendar"></i></span>
									</div>
								</div>
								<div class="col-md-6">
									<label>Ngày trả phòng </label>
									<div id="ngaytraphong-dp" class="input-group date"
										data-date-format="dd-mm-yyyy">
										<input id="ngayTra" class="form-control" type="text"
											name="ngaytraphong"> <span class="input-group-addon"><i
											class="glyphicon glyphicon-calendar"></i></span>
									</div>
								</div>
							</div>
							<div class="row line-dat">
								<div class="col-md-12">
									<label>Số phòng</label><span> (Tối đa 2 người/phòng)</span> <select
										class="form-control" id="soPhong" name="sophong">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<!-- <div class="row">
								<div class="col-md-12">
									<label>Yêu cầu thêm</label>
								</div>
								<div class="col-md-12">
									<div class="col-md-6">
										<label class="checkbox-inline"><input id="phongke"
											type="checkbox" value="">Phòng kề nhau</label>
									</div>
									<div class="col-md-6">
										<label class="checkbox-inline"><input type="checkbox"
											value="">Phòng tầng cao</label>
									</div>
								</div>
							</div> -->
							<div class="row tong-cong">
								<div class="col-md-6">
									<h3>Tổng cộng:</h3>
								</div>
								<div class="col-md-6 pull-right">
									<h3 id="tong-gia" class="pull-right">0₫</h3>
								</div>
								<script type="text/javascript">
									
								</script>
								<div class="col-md-6"></div>
							</div>
						</div>

					</div>
					<input id="loaiPhong" type="hidden" name="loaiphong"
						value="${requestScope.loaiPhong.maLoaiPhong}">
				</form>
				<button form="chitiet" id="btn-dat-phong" type="submit"
					class="btn btn-warning">ĐẶT PHÒNG</button>
				<hr>
				<!--END BOX DAT PHONG-->
				<!-- DANH GIA TU KHACH HANG -->
				<div class="col-md-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>Đánh giá từ khách hàng:</h4>
						</div>
						<div class="panel-body">
							<div class="panel-group">
								<div class="panel panel-info">
									<div class="panel panel-default">
										<div class="panel-body">" Phòng sạch, vị trí trung tâm,
											nhân viên thân thiện và hỗ trợ khách đóng quà để di chuyển ra
											sânbay"</div>
										<div class="panel-footer">Nguyễn Thị N.T</div>
									</div>
								</div>
								<div class="panel panel-info">
									<div class="panel panel-default">
										<div class="panel-body">"Vị trí rất tốt ngay trung tâm
											thành phố tiện cho việc tham quan cũng như đi ăn các món ăn
											đường phố. Phòng sạch sẽ rộng rãi tiện nghi. Nhân viên nhiệt
											tình. Ăn sáng ngon :) giá hợp lý"</div>
										<div class="panel-footer">Trần H.H</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- <a href=""><b>Xem tất cả đánh giá</b></a> -->
				<!--END DANH GIA-->
			</div>
			<!--END MAIN ROW-->
		</div>
	</div>
	<!-- end body-->
	<!-- footer -->
	<%@ include file="footer.jsp"%>
	<!-- <script type="text/javascript">
	//Khi chọn hai 2 phòng trở lên thì yêu cầu phòng kề nhau mới chọn được
	$(document).ready(function() {
		$("#phongke").attr("disabled", true);
		$('#sophong').change(function() {
			var optionSelected = $(this).find("option:selected");
			var valueSelected = optionSelected.val();
			if (valueSelected <= 1) {
				$("#phongke").attr("disabled", true);
				$('#phongke').prop('checked', false);
			} else {
				$("#phongke").removeAttr("disabled");
			}
		});
	});
</script> -->
</body>
</html>
