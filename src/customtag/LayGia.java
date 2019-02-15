package customtag;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;


import dao.GiaDAO;

public class LayGia extends SimpleTagSupport {
	private String maLoaiPhong;

	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}

	@Override
	public void doTag() throws JspException, IOException {
		GiaDAO giaDao = new GiaDAO();
		Calendar calendar = Calendar.getInstance();
		java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());
		int gia = giaDao.getGia(maLoaiPhong, ourJavaDateObject);
		String str = String.format("%,d", gia).replace(",", ".");
		//
		JspWriter out = getJspContext().getOut();
		out.print(str);
	}
}
