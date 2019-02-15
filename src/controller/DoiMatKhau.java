package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.KhachHangDAO;
import model.KhachHang;

/**
 * Servlet implementation class DoiMatKhau
 */
@WebServlet("/DoiMatKhau")
public class DoiMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoiMatKhau() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		KhachHang khachhang = (KhachHang) session.getAttribute("user");
		
		String matkhaucu = request.getParameter("curPass");
		String passwd = request.getParameter("password");
		String passwd2 = request.getParameter("password2");
		
		String id = khachhang.getId();
		String hoten2 = khachhang.getName();
		String sdt2 = khachhang.getPhoneNumber();
		String email = khachhang.getEmail();
		System.out.println(email);

		String matkhaucu_err = "";
		String matkhau_err = "";
		boolean err = false;

		
		if (!matkhaucu.equalsIgnoreCase(khachhang.getPassword())) {
			err = true;
			matkhaucu_err = "Mật khẩu không đúng";
			request.setAttribute("matkhaucu_err", matkhaucu_err);
		}
		if (!passwd.equalsIgnoreCase(passwd2)) {
			err = true;
			matkhau_err = "Mật khẩu không trùng khớp";
			request.setAttribute("matkhau_err", matkhau_err);
		}

		if (err) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/doi-mat-khau.jsp");
			rd.forward(request, response);
		}

		else {

			KhachHang kh2 = new KhachHang(id, hoten2, sdt2, email, passwd);

			new KhachHangDAO().edit(kh2);
			String success = "Đổi mật khẩu thành công";
			request.setAttribute("success", success);
			HttpSession ss = request.getSession();
			ss.setAttribute("user", kh2);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/doi-mat-khau.jsp");
			rd.forward(request, response);
		
		}

	}
}
