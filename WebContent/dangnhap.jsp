<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Royal Hotel - Đăng nhập</title>
<link rel="stylesheet" href="css/lg.css">
<%@ include file="head-tag-included.jsp"%>

</head>
<body>

	<div class="container-fluid">

		<jsp:include page="header.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-5">
					<div class="body">
						<div class="row pad">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">

								<ul class="nav nav-tabs">
									<li class="active"><a class="a2" data-toggle="tab"
										href="#home">Đăng Nhập</a></li>
								</ul>

							</div>

							<div class="col-sm-1">
								<div>
									<a href="index.jsp"><span class="icon">&times;</span></a>
								</div>

							</div>
						</div>

						<%
							String url = request.getParameter("url");
						%>
						<form action="ServletDangNhap" method="post">
							<input type="hidden" value="<%=url%>" name="className">
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">

									<div>
										<input type="email" placeholder="Địa chỉ email" name="email">
									</div>

								</div>
								<div class="col-sm-1"></div>

							</div>
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">

									<div>
										<input type="password" placeholder="Mật Khẩu" name="password">
										<p style="color: red">${error}</p>
									</div>
								</div>
								<div class="col-sm-1"></div>

							</div>
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div>
										<a href="#" class="a2"> <input type="checkbox" name="Ht">Lưu
											mật khẩu
										</a> <a class="a" href="quenmatkhau.jsp">Quên mật khẩu?</a>
									</div>
								</div>
								<div class="col-sm-1"></div>

							</div>
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div>
										<input type="submit" value="ĐĂNG NHẬP">
									</div>

								</div>
								<div class="col-sm-1"></div>

							</div>
							<div class="row pad">
								<div class="col-sm-1"></div>
								<div class="col-sm-10">
									<div>
										<div class="diva">
											Chưa có tài khoản? <a class="a2" href="dangky.jsp">Đăng
												Ký</a><br>
										</div>

									</div>

								</div>
								<div class="col-sm-1"></div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
		</div>


		<!-- end body-->
		<br>
		<br>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>