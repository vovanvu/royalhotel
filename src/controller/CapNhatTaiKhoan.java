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

@WebServlet("/CapNhatTaiKhoan")
public class CapNhatTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CapNhatTaiKhoan() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		//
		HttpSession ss = request.getSession();
		KhachHang kh1 = (KhachHang) ss.getAttribute("user");
		String id = kh1.getId();
		String passwd = kh1.getPassword();
		String email = kh1.getEmail();
		String hoten2 = request.getParameter("hoten");
		String sdt2 = request.getParameter("sdt");
		//
		KhachHang kh2 = new KhachHang(id, hoten2, sdt2, email, passwd);
		new KhachHangDAO().edit(kh2);
		//
		ss.setAttribute("user", kh2);
		String success = "Đổi thông tin thành công";
		request.setAttribute("success", success);
		//
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/SuaThongTinServlet");
		rd.forward(request, response);
	}

}
