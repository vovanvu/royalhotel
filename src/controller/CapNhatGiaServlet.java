package controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import dao.GiaDAO;
import util.TinhTongTien;

/**
 * Servlet implementation class CapNhatPhong
 */
@WebServlet("/CapNhatGiaServlet")
public class CapNhatGiaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CapNhatGiaServlet() {
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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		// get Param
		String ngayNhan = request.getParameter("ngayNhan");
		String ngayTra = request.getParameter("ngayTra");
		String loaiPhong = request.getParameter("loaiPhong");
		int soPhong = Integer.parseInt(request.getParameter("soPhong"));
		// process and get price
		int tong = TinhTongTien.tinhTong(ngayNhan, ngayTra, soPhong, loaiPhong);
		String tongResponse = String.valueOf(tong);
		// send to client
		response.getWriter().write(tongResponse);
	}
}
