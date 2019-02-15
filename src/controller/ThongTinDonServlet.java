package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DonDatPhongDAO;
import dao.KhachHangDAO;
import model.DonDatPhong;
import model.KhachHang;

/**
 * Servlet implementation class ThongTinDonServlet
 */
@WebServlet("/ThongTinDonServlet")
public class ThongTinDonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThongTinDonServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String maDon = request.getParameter("id");
		// check valid order by login customer
		HttpSession ss = request.getSession();
		KhachHang user = (KhachHang) ss.getAttribute("user");
		String maKhachHang = user.getId();
		KhachHangDAO dao = new KhachHangDAO();
		boolean valid = dao.isOrderByCustomer(maKhachHang, maDon);
		if (valid) {
			// foward order to jsp
			DonDatPhongDAO dao1 = new DonDatPhongDAO();
			DonDatPhong don = dao1.get(maDon);
			request.setAttribute("don", don);
			//
			RequestDispatcher dispatcher = request.getRequestDispatcher("thong-tin-don.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("404.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
