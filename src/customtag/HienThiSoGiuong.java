package customtag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HienThiSoGiuong extends SimpleTagSupport {
	private int soGiuongDon;
	private int soGiuongDoi;

	public void setSoGiuongDon(int soGiuongDon) {
		this.soGiuongDon = soGiuongDon;
	}

	public void setSoGiuongDoi(int soGiuongDoi) {
		this.soGiuongDoi = soGiuongDoi;
	}

	@Override
	public void doTag() throws JspException, IOException {
		String print = "";
		if (soGiuongDon == 0) {
			print = soGiuongDoi + " giường đôi";
		} else if (soGiuongDoi == 0) {
			print = soGiuongDon + " giường đơn";
		} else {
			print = soGiuongDon + " giường đơn, " + soGiuongDoi + " giường đôi";
		}
		//
		JspWriter out = getJspContext().getOut();
		out.print(print);
	}
}
