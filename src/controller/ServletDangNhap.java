package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.coyote.Request;

import dao.KhachHangDAO;
import model.KhachHang;

@WebServlet("/ServletDangNhap")
public class ServletDangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletDangNhap() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String error = "";
		boolean err = true;

		KhachHangDAO dao = new KhachHangDAO();
		ArrayList<KhachHang> customers = dao.getAll();

		for (KhachHang cus : customers) {
			if (cus.getEmail().equals(email) && cus.getPassword().equals(password)) {
				err = false;
				HttpSession session = request.getSession();
				session.setAttribute("user", cus);
				break;
			}
		}

		if (err) {
			error = "Email hoặc mật khẩu không đúng";
			request.setAttribute("error", error);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/dangnhap.jsp");
			rd.forward(request, response);
		}

		else {

//			String className = request.getParameter("className");
//			String url = className.substring(0, className.indexOf("_")) + ".jsp";
//			System.out.println(url);
			response.sendRedirect("index.jsp");
		}
	}

}
