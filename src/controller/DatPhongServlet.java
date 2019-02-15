package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import model.DonDatPhong;
import model.KhachHang;
import util.DemNgay;
import util.IDGen;
import util.StringToSQLDate;
import util.TinhTongTien;

/**
 * Servlet implementation class DatPhongServlet
 */
@WebServlet("/DatPhongServlet")
public class DatPhongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DatPhongServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ss = request.getSession();
		KhachHang kh = (KhachHang) ss.getAttribute("user");
		// TODO Auto-generated method stub
		String loaiPhong = request.getParameter("loaiphong");
		String ngayNhan = request.getParameter("ngaynhanphong");
		String ngayTra = request.getParameter("ngaytraphong");
		String soPhong = request.getParameter("sophong");
		// convert
		Date ngayNhanPhong = StringToSQLDate.convertStringToSQLDate(ngayNhan);
		Date ngayTraPhong = StringToSQLDate.convertStringToSQLDate(ngayTra);
		int soPhongDat = Integer.parseInt(soPhong);
		// cal price
		int tongTien = TinhTongTien.tinhTong(ngayNhan, ngayTra, soPhongDat, loaiPhong);
		// count day
		DateTimeFormatter formatter = DateTimeFormat.forPattern("dd-MM-yyyy");
		DateTime dt1 = formatter.parseDateTime(ngayNhan);
		DateTime dt2 = formatter.parseDateTime(ngayTra);
		int soDem = DemNgay.demNgay(dt1, dt2);
		// gen Id
		String maDon = IDGen.genId("D");
		// khach hang
		KhachHang user = (KhachHang) ss.getAttribute("user");
		String maKhachHang = user.getId();
		// create order
		DonDatPhong don = new DonDatPhong(maDon, maKhachHang, loaiPhong, null, ngayNhanPhong, ngayTraPhong, soPhongDat,
				tongTien, 0);
		// forward
		request.setAttribute("soDem", soDem);
		request.setAttribute("don", don);
		// set for session
		ss.setAttribute("don", don);
		RequestDispatcher dispatcher = request.getRequestDispatcher("thanh-toan.jsp");
		dispatcher.forward(request, response);
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
