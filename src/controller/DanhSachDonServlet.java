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

import dao.KhachHangDAO;
import model.DonDatPhong;
import model.KhachHang;

/**
 * Servlet implementation class DanhSachDonServlet
 */
@WebServlet("/DanhSachDonServlet")
public class DanhSachDonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DanhSachDonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession();
		KhachHang user = (KhachHang) ss.getAttribute("user");
		String id = user.getId();
		KhachHangDAO dao = new KhachHangDAO();
		ArrayList<DonDatPhong> orderList = dao.getOrderList(id);
		//
		int listSize = orderList.size();
		request.setAttribute("listSize", listSize);
		request.setAttribute("orderList", orderList);
		//foward
		RequestDispatcher dispatcher = request.getRequestDispatcher("danh-sach-don.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
