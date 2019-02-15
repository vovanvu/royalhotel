package customtag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HienThiGia extends SimpleTagSupport {
	private double giaDouble;

	public void setGiaDouble(double giaDouble) {
		this.giaDouble = giaDouble;
	}

	@Override
	public void doTag() throws JspException, IOException {
		int gia = (int) giaDouble;
		JspWriter out = getJspContext().getOut();
		out.print(gia);
	}
}
