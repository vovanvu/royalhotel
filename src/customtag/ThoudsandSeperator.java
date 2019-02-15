package customtag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ThoudsandSeperator extends SimpleTagSupport {
	private int gia;

	public void setGia(int gia) {
		this.gia = gia;
	}

	@Override
	public void doTag() throws JspException, IOException {
		String str = String.format("%,d", gia).replace(",", ".");
		JspWriter out = getJspContext().getOut();
		out.print(str);
	}
}
