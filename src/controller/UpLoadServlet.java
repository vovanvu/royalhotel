package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.HinhAnhDAO;
import model.HinhAnh;
import util.IDGen;

/**
 * Servlet implementation class upload
 */
@WebServlet(name = "UpLoadServlet", urlPatterns = { "/UpLoadServlet" }, initParams = {
		@WebInitParam(name = "FILE_UPLOAD_PATH", value = "D:\\Eclipse_Workspace\\1501\\WebContent\\upload") })
@MultipartConfig
public class UpLoadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String fileUploadPath;

	public void init(ServletConfig config) {
		fileUploadPath = config.getInitParameter("FILE_UPLOAD_PATH");
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpLoadServlet() {
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
		// TODO Auto-generated method stub
		Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
		String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
		InputStream fileContent = filePart.getInputStream();
		//
		File uploadedFile = new File(fileUploadPath, fileName);
		FileOutputStream out = new FileOutputStream(uploadedFile);
		byte[] arr = new byte[1024 * 100];
		int read = 0;
		while ((read = fileContent.read(arr)) != -1) {
			out.write(arr, 0, read);
		}
		out.close();
		// add to db
		String maHinh = IDGen.genId("H");
		String maLoaiPhong = request.getParameter("maLoaiPhong");
		String soThuTuP = request.getParameter("soThuTu");
		int soThuTu = Integer.parseInt(soThuTuP);
		String linkHinhTuyetDoi = uploadedFile.getAbsolutePath();
		String linkHinh = "upload\\" + linkHinhTuyetDoi.substring(linkHinhTuyetDoi.lastIndexOf("\\") + 1);
		HinhAnhDAO dao = new HinhAnhDAO();
		HinhAnh hinhAnh = new HinhAnh(maHinh, maLoaiPhong, soThuTu, linkHinh);
		dao.addSttImageRoomType(hinhAnh, maLoaiPhong, soThuTu);
		response.sendRedirect("CapNhatHinhServlet?id="+maLoaiPhong+"");
	}

}
