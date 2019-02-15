<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid">
	<div class="col-sm-12">
		<nav class="main-navbar navbar">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="btn-default navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<img style="width: 200px; height: 70px; margin-top: -10px;"
						alt="Brand" src="img/logo.png">
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp">TRANG CHỦ</a></li>
						<li><a href="DanhSachPhongServlet">PHÒNG</a></li>
						<li><a href="thong-tin.jsp">THÔNG TIN</a></li>
					</ul>
					<c:choose>
						<c:when test="${empty sessionScope.user}">
							<div class="nav navbar-nav navbar-right">
								<a href="dangnhap.jsp"><button class="dk">ĐĂNG NHẬP</button></a>
								<a href="dangky.jsp"><button class="dk">ĐĂNG KÝ</button></a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="nav navbar-nav navbar-right">
								<a href="DanhSachDonServlet"><button class="dk">TÀI
										KHOẢN</button></a> <a href="ServletDangXuat"><button class="dn">ĐĂNG
										XUẤT</button></a>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</nav>
	</div>
</div>
