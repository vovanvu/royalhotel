package controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.KhachHangDAO;
import model.KhachHang;
import model.VerifyRecaptcha;
import util.IDGen;

@WebServlet("/ServletDangKy")
public class ServletDangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletDangKy() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String matkhau = request.getParameter("matkhau");
		String matkhau2 = request.getParameter("matkhau2");
		String fullname = request.getParameter("fullname");
		String phone = request.getParameter("phone");
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");

		boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);
		
		String email_err = "";
		String matkhau_err = "";
		String matkhau2_err = "";
		String fullname_err = "";
		String phone_err = "";
		String recaptcha_err="";

		KhachHangDAO cusDao = new KhachHangDAO();
		ArrayList<KhachHang> customers = cusDao.getAll();
		boolean err = false;

		if (email == null || email.equals("")) {
			email_err = "Email không được để trống";
			err = true;
			request.setAttribute("email_err", email_err);
		}
		if (matkhau == null || matkhau.equals("")) {
			matkhau_err = "Mật khẩu không được để trống";
			err = true;
			request.setAttribute("matkhau_err", matkhau_err);
		}
		if (matkhau2 == null || matkhau2.equals("")) {
			matkhau2_err = "Mật khẩu không được để trống";
			err = true;
			request.setAttribute("matkhau2_err", matkhau2_err);
		}

		if (fullname == null || fullname.equals("")) {
			fullname_err = "Tên không được để trống";
			err = true;
			request.setAttribute("fullname_err", fullname_err);
		}
		if (phone == null || phone.equals("")) {
			phone_err = "Điện thoại không được để trống";
			err = true;
			request.setAttribute("phone_err", phone_err);
		}

		for (KhachHang cus : customers) {
			if (cus.getEmail().equalsIgnoreCase(email)) {
				email_err = "Tài khoản đã tồn tại";
				err = true;
				request.setAttribute("email_err", email_err);
				break;
			}
		}
		if (!matkhau2.equals(matkhau)) {
			matkhau2_err = "Mật khẩu không trùng khớp";
			err = true;
			request.setAttribute("matkhau2_err", matkhau2_err);
		}
		
		if (!verify) {
			recaptcha_err="Vui lòng xác nhận bạn không phải robot";
			err=true;
			request.setAttribute("recaptcha_err",recaptcha_err);
		}

		if (err) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/dangky.jsp");
			rd.forward(request, response);
			//response.sendRedirect("dangky.jsp");
		} else {
			String id = IDGen.genId("KH");
			KhachHang cus = new KhachHang(id, fullname, phone, email, matkhau);
			KhachHangDAO dao=new KhachHangDAO();
			dao.add(cus);
			HttpSession session=request.getSession();
			session.setAttribute("user", cus);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}
	}
}
