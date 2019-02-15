package customtag;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class TextTinhTrang extends SimpleTagSupport {
	private String tinhTrang;

	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	@Override
	public void doTag() throws JspException, IOException {
		String s = "";
		if (tinhTrang.equals("0")) {
			s = "Chờ thanh toán";
		} else if (tinhTrang.equals("1")) {
			s = "Đặt phòng thành công";
		}
		JspWriter out = getJspContext().getOut();
		out.print(s);
	}
}
