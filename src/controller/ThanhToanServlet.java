package controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DonDatPhongDAO;
import dao.ThanhToanDAO;
import model.DonDatPhong;
import model.KhachHang;
import model.ThanhToan;
import util.IDGen;

/**
 * Servlet implementation class ThanhToanServlet
 */
@WebServlet("/ThanhToanServlet")
public class ThanhToanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThanhToanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// add order
		HttpSession ss = request.getSession();
		DonDatPhong don = (DonDatPhong) ss.getAttribute("don");
		// thoi diem dat
		Calendar cal = Calendar.getInstance();
		Timestamp thoiDiemDat = new Timestamp(cal.getTimeInMillis());
		don.setThoiDiemDat(thoiDiemDat);
		// add vao db
		DonDatPhongDAO dao = new DonDatPhongDAO();
		boolean addOK = dao.add(don);
		if (addOK) {
			//send ma dat phong qua trang thanh cong
			request.setAttribute("ma", don.getMaDon());
			RequestDispatcher dispatcher = request.getRequestDispatcher("thanh-cong.jsp");
			dispatcher.forward(request, response);
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
