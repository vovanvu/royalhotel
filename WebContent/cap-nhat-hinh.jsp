<%@page import="model.HinhAnh"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.HinhAnhDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="hinh" uri="WEB-INF/GetHinhAnh.tld"%>
<%@ taglib prefix="tag" uri="WEB-INF/TenLoaiPhong.tld"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<title>Upload</title>
<style type="text/css">
.demo-img {
	width: 300px;
	height: 300px;
}

.upload-btn {
	width: 200px;
}
</style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$(function() {
							$('.upload-form')
									.ajaxForm(
											{
												success : function(msg) {
													alert("Tải hình lên thành công! Vui lòng tải lại trang để cập nhật lại danh sách hình.");
												},
												error : function(msg) {
													/*$("#upload-error")
															.text(
																	"Không thể tải hình lên!");*/
																	alert("Chọn hình trước khi tải lên!")
												}
											});
						});
					});
</script>
</head>
<body>
	<div class='container'>
		<div class="row">
			<h3>Cập nhật hình cho loại phòng ${requestScope.maLoaiPhong} -
				<tag:TenLoaiPhong maLoaiPhong="${requestScope.maLoaiPhong}" /></h3>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-12">
								<p>Hình 1 (Hình đại diện ở trang sách phòng)</p>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">
								<form class="upload-form" class="upload-box" action="UpLoadServlet"
									method="post" enctype="multipart/form-data">
									<div class="form-group">
										<input type="file" id="file" name="file" class="form-control" />
									</div>
									<span id="upload-error" class="error text-danger">${uploadError}</span>
									<input type="hidden" name="maLoaiPhong"
										value="${requestScope.maLoaiPhong}">
									<div class="form-group">
										<input type="hidden" name="soThuTu" value="1"> <input
											type="submit" id="upload-button" value="Tải lên"
											class="btn btn-default upload-btn" />
									</div>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img
									src='<hinh:GetHinhAnh soThuTu="1" maLoaiPhong="${requestScope.maLoaiPhong}"></hinh:GetHinhAnh>'
									class="img-responsive demo-img">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-12">
								<p>Hình 2</p>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">
								<form class="upload-form" class="upload-box" action="UpLoadServlet"
									method="post" enctype="multipart/form-data">
									<div class="form-group">
										<input type="file" id="file" name="file" class="form-control" />
									</div>
									<span id="upload-error" class="error text-danger">${uploadError}</span>
									<input type="hidden" name="maLoaiPhong"
										value="${requestScope.maLoaiPhong}">
									<div class="form-group">
										<input type="hidden" name="soThuTu" value="2"> <input
											type="submit" id="upload-button" value="Tải lên"
											class="btn btn-default upload-btn" />
									</div>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img
									src='<hinh:GetHinhAnh soThuTu="2" maLoaiPhong="${requestScope.maLoaiPhong}"></hinh:GetHinhAnh>'
									class="img-responsive demo-img">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-12">
								<p>Hình 3</p>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">
								<form class="upload-form" class="upload-box" action="UpLoadServlet"
									method="post" enctype="multipart/form-data">
									<div class="form-group">
										<input type="file" id="file" name="file" class="form-control" />
									</div>
									<span id="upload-error" class="error text-danger">${uploadError}</span>
									<input type="hidden" name="maLoaiPhong"
										value="${requestScope.maLoaiPhong}">
									<div class="form-group">
										<input type="hidden" name="soThuTu" value="3"> <input
											type="submit" id="upload-button" value="Tải lên"
											class="btn btn-default upload-btn" />
									</div>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img
									src='<hinh:GetHinhAnh soThuTu="3" maLoaiPhong="${requestScope.maLoaiPhong}"></hinh:GetHinhAnh>'
									class="img-responsive demo-img">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-12">
								<p>Hình 4</p>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">
								<form class="upload-form" class="upload-box" action="UpLoadServlet"
									method="post" enctype="multipart/form-data">
									<div class="form-group">
										<input type="file" id="file" name="file" class="form-control" />
									</div>
									<span id="upload-error" class="error text-danger">${uploadError}</span>
									<input type="hidden" name="maLoaiPhong"
										value="${requestScope.maLoaiPhong}">
									<div class="form-group">
										<input type="hidden" name="soThuTu" value="4"> <input
											type="submit" id="upload-button" value="Tải lên"
											class="btn btn-default upload-btn" />
									</div>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img
									src='<hinh:GetHinhAnh soThuTu="4" maLoaiPhong="${requestScope.maLoaiPhong}"></hinh:GetHinhAnh>'
									class="img-responsive demo-img">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>