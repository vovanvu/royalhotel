package customtag;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.joda.time.DateTime;

import util.DemNgay;

public class DemSoDem extends SimpleTagSupport {
	private Date ngayNhanPhong;
	private Date ngayTraPhong;

	public void setNgayNhanPhong(Date ngayNhanPhong) {
		this.ngayNhanPhong = ngayNhanPhong;
	}

	public void setNgayTraPhong(Date ngayTraPhong) {
		this.ngayTraPhong = ngayTraPhong;
	}

	@Override
	public void doTag() throws JspException, IOException {
		int soDem = 0;
		DateTime ngayBatDau = new DateTime(ngayNhanPhong);
		DateTime ngayKetThuc = new DateTime(ngayTraPhong);
		soDem = DemNgay.demNgay(ngayBatDau, ngayKetThuc);
		//
		JspWriter out = getJspContext().getOut();
		out.print(soDem);
	}
}
